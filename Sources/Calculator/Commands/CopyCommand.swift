//
//  CopyCommand.swift
//  Calculator
//
//  Created by David Walter on 03.08.18.
//

import Foundation

struct CopyCommand: Executable {
	
	func execute() {
		let stack = DataStack.shared
		
		guard let index = stack.pop()?.intValue, index > 0 else { Calculator.exit("Invalid Stack Data") }
		
		stack.push(stack[index])
	}
}
