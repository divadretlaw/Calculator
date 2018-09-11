//
//  ListCheckCommand.swift
//  Calculator
//
//  Created by David Walter on 03.08.18.
//

import Foundation

struct ListCheckCommand: Executable {
	
	func execute() {
		let stack = DataStack.shared
		
		let empty = (stack.peek() as? List)?.isEmpty ?? true
		
		stack.push(!empty)
	}
	
}
