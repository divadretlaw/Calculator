//
//  Register.swift
//  Basic
//
//  Created by David Walter on 30.07.18.
//

import Foundation

class Register {
	
	static let shared = Register(size: 32)
	
	private var data: [Data?]
	
	private let std: Int
	private var stdInOut: Data? {
		get {
			print("-->", separator: "", terminator: " ")
			guard let data = Swift.readLine() else { return nil }
			return List("\(data)")
		}
		set {
			guard let data = newValue else { return }
			print(data.description)
		}
	}
	
	/// - Parameters:
	///   - size: Number of registers
	///	  - std: Index of the register to be used as `stdin` / `stdout`; defaults to 1
	private init(size: Int, std: Int = 1) {
		self.std = std
		data = Array(repeating: nil, count: size)
	}
	
	subscript(register: Int) -> Data? {
		set {
			guard register >= 0, register < 32 else { Calculator.exit("Invalid register index") }
			
			if register == self.std {
				self.stdInOut = newValue
			} else {
				self.data[register] = newValue
			}
		}
		get {
			guard register >= 0, register < 32 else { Calculator.exit("Invalid register index") }
			
			if register == self.std {
				return self.stdInOut
			} else {
				return self.data[register]
			}
		}
	}
	
}
