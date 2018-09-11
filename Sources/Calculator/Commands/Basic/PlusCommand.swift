//
//  PlusCommand.swift
//  Calculator
//
//  Created by David Walter on 30.07.18.
//

import Foundation

struct PlusCommand: Executable {
	
	func execute() {
		let stack = DataStack.shared

		guard let b = stack.pop()?.intValue, let a = stack.pop()?.intValue else { Calculator.exit("Invalid Stack Data") }
		
		stack.push(a + b)
	}
	
}
