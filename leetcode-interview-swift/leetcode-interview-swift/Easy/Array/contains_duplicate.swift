//
//  contains_duplicate.swift
//  leetcode-interview-swift
//
//  Created by Yusuf Turan on 27.02.2021.
//

func containsDuplicate(_ nums: [Int]) -> Bool {
	var setData = Set<Int>()
	for i in nums {
		if setData.contains(i){
			return true
		}
		else {
			setData.insert(i)
		}
	}
	return false
}

