//
//  Data.swift
//  Calculator
//
//  Created by David Walter on 30.07.18.
//

import Foundation

protocol Data {
	var intValue: Int? { get }
	var boolValue: Bool? { get }
	var description: String { get }
}
