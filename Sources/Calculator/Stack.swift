//
//  Stack.swift
//  Calculator
//
//  Created by David Walter on 30.07.18.
//

import Foundation

class Stack<Element> {
	
	var array = [Element]()
	
	/// Returns the number of elements on the stack
	var count: Int {
		return array.count
	}
	
	/// Pushes a new element onto the stack
	/// - Parameter element: `Element` to append on top of the to the stack
	func push(_ element: Element?) {
		guard let element = element else { return }
		array.append(element)
	}
	
	/// Returns the top element without removing it
	func peek() -> Element? {
		return array.last
	}
	
	/// Removes and returns the last element of the stack
	func pop() -> Element? {
		return array.popLast()
	}
	
}
