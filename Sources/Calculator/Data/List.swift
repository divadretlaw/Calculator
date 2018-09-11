//
//  List.swift
//  Calculator
//
//  Created by David Walter on 30.07.18.
//

import Foundation

struct List {
	
	var data: String
	
	init(_ data: String?) {
		guard let data = data else {
			self.data = "()"
			return
		}
		
		if data.first == "(", data.last == ")" {
			self.data = data
		} else {
			self.data = "(\(data))"
		}
	}
	
	/// Returns `true` if the List is empty; `false` otherwise
	var isEmpty: Bool {
		return data.count <= 2
	}
	
	/// First item of the List
	var head: String {
		guard let character = self.description.first else { return "" }
		return String(character)
	}
	
	/// Contents of the List except the head
	var tail: String {
		return String(self.description.dropFirst())
	}
	
	/// `String` representation of the List without the parenthesis
	var description: String {
		let start = self.data.index(after: self.data.startIndex)
		let end = self.data.index(before: self.data.endIndex)
		return String(data[start..<end])
	}
}

extension List: ExpressibleByStringLiteral {
	init(stringLiteral value: String.StringLiteralType) {
		self = List(value)
	}
}
