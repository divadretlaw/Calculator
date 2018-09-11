//
//  ReadCommand.swift
//  Calculator
//
//  Created by David Walter on 03.08.18.
//

import Foundation

struct ReadCommand: Executable {
	
	func execute() {
		let register = Register.shared
		let stack = DataStack.shared
		
		guard let index = stack.pop()?.intValue else { Calculator.exit("Invalid Stack Data") }
		
		stack.push(register[index])
	}
	
}
