//
//  Helper.swift
//  leetcode-interview-swift
//
//  Created by Yusuf Turan on 27.02.2021.
//

public func test(of description: String, action: () -> Void) {
	print("---Test: \(description)---")
	action()
	print()
}
