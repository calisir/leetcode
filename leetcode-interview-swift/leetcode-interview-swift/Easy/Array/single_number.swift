//
//  single_number.swift
//  leetcode-interview-swift
//
//  Created by Yusuf Turan on 27.02.2021.
//

func singleNumber(_ nums: [Int]) -> Int {
	var container = Set<Int>()
	for i in nums {
		if !container.contains(i) {
			container.insert(i)
		}
		else {
			container.remove(i)
		}
	}
	return container.first!
}

//Another solution with reduce
func singleNumberReduceFunc(_ nums: [Int]) -> Int {
	return nums.reduce(0, ^)
}
