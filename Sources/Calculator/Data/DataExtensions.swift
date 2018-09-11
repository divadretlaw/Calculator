//
//  DataExtensions.swift
//  Calculator
//
//  Created by David Walter on 17.08.18.
//

import Foundation

extension Int: Data {
	
	var intValue: Int? {
		return self
	}
	
	var boolValue: Bool? {
		switch self {
		case 0:
			return false
		case 1:
			return true
		default:
			return nil
		}
	}
	
}

extension Bool: Data {
	
	var intValue: Int? {
		return self ? 1 : 0
	}
	
	var boolValue: Bool? {
		return self
	}
	
	var description: String {
		return self ? "1" : "0"
	}
	
}

extension List: Data {
	
	var intValue: Int? {
		return nil
	}
	
	var boolValue: Bool? {
		return nil
	}
	
}
