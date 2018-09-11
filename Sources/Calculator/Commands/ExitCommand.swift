//
//  ExitCommand.swift
//  Calculator
//
//  Created by David Walter on 03.08.18.
//

import Foundation

struct ExitCommand: Executable {
	
	func execute() {
		exit(0)
	}
	
}
