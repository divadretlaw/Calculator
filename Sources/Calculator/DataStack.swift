//
//  DataStack.swift
//  Calculator
//
//  Created by David Walter on 12.08.18.
//

import Foundation

class DataStack: Stack<Data> {
	
	static let shared = DataStack()
	
	private override init() {
		super.init()
	}
	
	/// *n*th element of the stack; counted from the end of the stack
	/// - Parameter n: Number of element
	subscript(_ n: Int) -> Data? {
		let index = count - n
		guard index >= 0, index < count else { return nil }
		return array[safe: index]
	}
	
	/// Removes the *n*th element of the stack; counted from the end of the stack
	/// - Parameter n: Number of element to remove
	func remove(_ n: Int) {
		let index = count - n
		guard index >= 0, index < count else { return }
		array.remove(at: index)
	}
	
}
