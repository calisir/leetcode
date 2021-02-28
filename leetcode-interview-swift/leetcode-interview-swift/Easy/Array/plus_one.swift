//
//  plus_one.swift
//  leetcode-interview-swift
//
//  Created by Yusuf Turan on 27.02.2021.
//

func plusOne(_ digits: [Int]) -> [Int] {
	if digits.count == 0 {
		return [1]
	}
	var arr = digits
	for i in (0..<arr.count).reversed() {
		if arr[i] != 9 {
			arr[i] += 1
			break
		}
		else if i != 0 {
			arr[i] = 0
		}
		else {
			arr[i] = 1
			arr.append(0)
		}
	}
	return arr
}
