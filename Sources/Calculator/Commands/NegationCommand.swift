//
//  NegationCommand.swift
//  Calculator
//
//  Created by David Walter on 03.08.18.
//

import Foundation

struct NegationCommand: Executable {
	
	func execute() {
		let stack = DataStack.shared
		
		guard let a = stack.pop()?.intValue else { Calculator.exit("Invalid Stack Data") }
		
		stack.push(-a)
	}
	
}
