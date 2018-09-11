//
//  Buffer.swift
//  Calculator
//
//  Created by David Walter on 03.08.18.
//

import Foundation

class Buffer {
	
	var buffer = ""
	
	/// Returns `true` if buffer is not empty; `false` otherwise
	var hasData: Bool { return !buffer.isEmpty }
	
	/// Append `Character`` to the buffer
	/// - Parameter character: `Character` to append
	func append(_ character: Character) {
		buffer.append(character)
	}
	
	/// Returns the contents of the buffer and empties the buffer
	@discardableResult func reset() -> String {
		let data = buffer
		buffer = ""
		return data
	}
	
	/// Parses the contents of the buffer to `Data`.
	/// The buffer is empty afterwards
	func build() -> Data? {
		guard hasData else { return nil }
		
		let buffer = reset()

		if buffer.first == "(" {
			return List(buffer)
		}
		
		return Int(buffer)
	}
	
}
