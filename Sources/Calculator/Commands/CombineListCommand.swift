//
//  CombineListCommand.swift
//  Calculator
//
//  Created by David Walter on 03.08.18.
//

import Foundation

struct CombineListCommand: Executable {
	
	func execute() {
		let stack = DataStack.shared
		
		guard let head = stack.pop(), let tail = stack.pop() as? List else { Calculator.exit("Invalid List Data on Stack") }
		
		let list = List("\(head.description)\(tail.description)")
		stack.push(list)
	}
	
}
