//
//  CharacterExtensions.swift
//  Calculator
//
//  Created by David Walter on 05.08.18.
//

import Foundation

extension Character {
	
	var isInt: Bool {
		return Int(self.description) != nil
	}
	
	var isSpace: Bool {
		return self == " "
	}
	
	var isListStart: Bool {
		return self == "("
	}
	
	var isListEnd: Bool {
		return self == ")"
	}
	
	var description: String {
		return "\(self)"
	}
	
}
