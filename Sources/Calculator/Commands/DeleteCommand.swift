//
//  DeleteCommand.swift
//  Calculator
//
//  Created by David Walter on 03.08.18.
//

import Foundation

struct DeleteCommand: Executable {
	
	func execute() {
		let stack = DataStack.shared
		
		guard let int = stack.pop()?.intValue, int > 0 else { Calculator.exit("Invalid Stack Data") }
		
		stack.remove(int)
	}
}
