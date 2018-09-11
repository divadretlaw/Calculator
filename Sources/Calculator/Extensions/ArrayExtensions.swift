//
//  ArrayExtensions.swift
//  Calculator
//
//  Created by David Walter on 17.08.18.
//

import Foundation

extension Array {
	/// Adds the elements of a sequence to the start of the array.
	///
	/// Use this method to append the elements of a sequence to the start of this
	/// array. This example prepends the elements of a `Range<Int>` instance
	/// to an array of integers.
	///
	///     var numbers = [1, 2, 3, 4, 5]
	///     numbers.append(contentsOf: 10...15)
	///     print(numbers)
	///     // Prints "[10, 11, 12, 13, 14, 15, 1, 2, 3, 4, 5]"
	///
	/// - Parameter newElements: The elements to prepend to the array.
	///
	/// - Complexity: O(*n*), where *n* is the length of the resulting array.
	mutating func prepend(contentsOf data: [Element]) {
		self.insert(contentsOf: data, at: 0)
	}

	subscript (safe index: Index) -> Element? {
		return indices.contains(index) ? self[index] : nil
	}
}
