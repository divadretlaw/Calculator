//
//  EqualsCommand.swift
//  Calculator
//
//  Created by David Walter on 03.08.18.
//

import Foundation

struct EqualsCommand: Executable {
	
	func execute() {
		let stack = DataStack.shared
		
		guard let b = stack.pop()?.intValue, let a = stack.pop()?.intValue else { Calculator.exit("Invalid Stack Data") }
		
		stack.push(b == a)
	}
	
}
