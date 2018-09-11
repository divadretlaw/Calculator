//
//  Calculator.swift
//  Calculator
//
//  Created by David Walter on 03.08.18.
//

import Foundation

class Calculator {
	
	let stream: CommandStream
	let stack: DataStack
	let register: Register
	
	// Parsing helper
	private let buffer = (number: Buffer(), list: Buffer())
	private var bracketCounter = 0
	
	init() {
		self.register = Register.shared
		self.stack = DataStack.shared
		self.stream = CommandStream.shared
		
		// initialize special register 0
		
		// Welcome Message
		// (New R0) write to R0; read R0 and apply immediately
		// (New R0): Read R1 and apply; (Stack Reader) copy and apply immediately; read R0 and apply later
		// (Stack Reader): (else)(if) stack size; check if 3; delete (else)/(if) based on result
		// 	- (else): delete (else); delete (Stack Reader)
		// 	- (if): Copy stack[0]; Delete Stack[0]; write to R1; copy (Stack Reader) and apply immediately
		
		let zero: List =
		"""
		(=========================)1w
		(= Welcome to Calculator =)1w
		(=========================)1w
		(1ra ((scsd1w1ca)(1d1d)s3=1+da)1ca 0rz) 0w 0ra
		"""
		
		register[0] = zero
	}
	
	/// Load a list into a register
	/// - Parameters:
	///		- register: Number of the register
	///		- data: List to load into the register
	func load(register: Int, data: List?) {
		self.register[register] = data
	}
	
	/// Load an int value into a register
	/// - Parameters:
	///		- register: Number of the register
	///		- data: Integer to load into the register
	func load(register: Int, data: Int?) {
		self.register[register] = data
	}
	
	/// Starts the calculator by loading the contents of register 0 into the CommandStream
	func run() {
		// Load contents of register 0 into stream
		guard let data = register[0] as? List else { Calculator.exit("Invalid data in register 0") }
		stream.append(data.description)
		
		while let character = stream.pop() {
			
			if buffer.list.hasData {
				buffer.list.append(character)
				
				if character.isListStart {
					bracketCounter += 1
				} else if character.isListEnd {
					if bracketCounter == 0 {
						stack.push(buffer.list.build())
					} else {
						bracketCounter -= 1
					}
				}
			} else {
				
				if character.isInt {
					buffer.number.append(character)
				} else {
					stack.push(buffer.number.build())
					
					if character.isListStart {
						buffer.list.append(character)
					} else {
						Command(rawValue: character)?.execute()
					}
				}
				
			}
			
		}
	}
	
	/// Exits the Calculator printing a error message first
	static func exit(_ withError: String) -> Never {
		fputs("Error: \(withError)\n", stderr)
		Foundation.exit(-1)
	}
	
}
