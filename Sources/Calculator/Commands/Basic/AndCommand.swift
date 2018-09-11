//
//  AndCommand.swift
//  Calculator
//
//  Created by David Walter on 03.08.18.
//

import Foundation

struct AndCommand: Executable {
	
	func execute() {
		let stack = DataStack.shared
		
		guard let b = stack.pop()?.boolValue, let a = stack.pop()?.boolValue else { Calculator.exit("Invalid Stack Data") }
		
		stack.push(b && a)
	}
	
}
