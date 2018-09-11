//
//  DivideListCommand.swift
//  Calculator
//
//  Created by David Walter on 03.08.18.
//

import Foundation

struct DivideListCommand: Executable {
	
	func execute() {
		let stack = DataStack.shared
		
		guard let list = stack.pop() as? List, !list.isEmpty else { Calculator.exit("Invalid List Data on Stack") }
		
		stack.push(List(list.tail))
		stack.push(List(list.head))
	}
	
}
