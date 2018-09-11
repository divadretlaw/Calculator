//
//  MinusCommand.swift
//  Calculator
//
//  Created by David Walter on 03.08.18.
//

import Foundation

struct MinusCommand: Executable {
	
	func execute() {
		let stack = DataStack.shared
		
		guard let b = stack.pop()?.intValue, let a = stack.pop()?.intValue else { Calculator.exit("Invalid Stack Data") }
		
		stack.push(a - b)
	}
	
}
