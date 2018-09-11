//
//  CommandStream.swift
//  Calculator
//
//  Created by David Walter on 30.07.18.
//

import Foundation

class CommandStream: Stack<Character> {
	
	static let shared = CommandStream()
	
	private override init() {
		super.init()
	}
	
	/// Prepends data to the stream,
	/// Prepended data will be parsed as soon as possible
	/// - Parameter data: `String` to prepend
	func prepend(_ data: String) {
		self.array.append(contentsOf: data.streamed())
	}
	
	/// Appends data to the stream,
	/// Appended data will be parsed as soon as the stream is empty
	/// - Parameter data: `String` to append
	func append(_ data: String) {
		self.array.prepend(contentsOf: data.streamed())
	}
	
}

fileprivate extension String {
	/// Transforms a `String` into a reversed array of `Character`
	func streamed() -> [Character] {
		return self.appending(" ").map { $0 }.reversed()
	}
}
