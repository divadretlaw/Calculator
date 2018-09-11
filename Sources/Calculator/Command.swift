//
//  CommandParser.swift
//  Calculator
//
//  Created by David Walter on 03.08.18.
//

import Foundation

enum Command: Character {

	// MARK: - Basic operators
	
	case plus = "+"
	case minus = "-"
	case multiply = "*"
	case divide = "/"
	case modulo = "%"
	case and = "&"
	case or = "|"
	case equals = "="
	case smaller = "<"
	case greater = ">"
	
	// MARK: - Advanced operators
	
	case negation = "~"
	case copy = "c"
	case delete = "d"
	case applyImmediately = "a"
	case applyLater = "z"
	case read = "r"
	case write = "w"
	case integerCheck = "i"
	case listCheck = "l"
	case stackSize = "s"
	case combineList = ":"
	case divideList = "!"
	case exit = "x"
	
	// MARK: - 
	
	func execute() {
		switch self {
		case .plus:
			PlusCommand().execute()
		case .minus:
			MinusCommand().execute()
		case .multiply:
			MultiplyCommand().execute()
		case .divide:
			DivideCommand().execute()
		case .modulo:
			ModuloCommand().execute()
		case .and:
			AndCommand().execute()
		case .or:
			OrCommand().execute()
		case .equals:
			EqualsCommand().execute()
		case .smaller:
			SmallerCommand().execute()
		case .greater:
			GreaterCommand().execute()
		case .negation:
			NegationCommand().execute()
		case .copy:
			CopyCommand().execute()
		case .delete:
			DeleteCommand().execute()
		case .applyImmediately:
			ApplyImmediatelyCommand().execute()
		case .applyLater:
			ApplyLaterCommand().execute()
		case .read:
			ReadCommand().execute()
		case .write:
			WriteCommand().execute()
		case .integerCheck:
			IntegerCheckCommand().execute()
		case .listCheck:
			ListCheckCommand().execute()
		case .stackSize:
			StackSizeCommand().execute()
		case .combineList:
			CombineListCommand().execute()
		case .divideList:
			DivideListCommand().execute()
		case .exit:
			ExitCommand().execute()
		}
	}
}
