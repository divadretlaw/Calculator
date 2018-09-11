//
//  DivideCommand.swift
//  Calculator
//
//  Created by David Walter on 03.08.18.
//

import Foundation

struct DivideCommand: Executable {
	
	func execute() {
		let stack = DataStack.shared
		
		guard let b = stack.pop()?.intValue, let a = stack.pop()?.intValue else { Calculator.exit("Invalid Stack Data") }
		
		guard b != 0 else { Calculator.exit("Cannot divide by 0") }
		
		stack.push(a / b)
	}
	
}

