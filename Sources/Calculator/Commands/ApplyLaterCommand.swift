//
//  ApplyLaterCommand.swift
//  Calculator
//
//  Created by David Walter on 03.08.18.
//

import Foundation

struct ApplyLaterCommand: Executable {
	
	func execute() {
		let stack = DataStack.shared
		
		guard let data = stack.pop() else { Calculator.exit("Invalid Stack Data") }
		
		CommandStream.shared.append(data.description)
	}
	
}
