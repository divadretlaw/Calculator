//
//  IntegerCheckCommand.swift
//  Calculator
//
//  Created by David Walter on 03.08.18.
//

import Foundation

struct IntegerCheckCommand: Executable {
	
	func execute() {
		let stack = DataStack.shared
		
		stack.push(stack.peek()?.intValue != nil)
	}
	
}
