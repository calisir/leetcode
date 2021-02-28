//
//  remove_duplicates.swift
//  leetcode-interview-swift
//
//  Created by Yusuf Turan on 27.02.2021.
//

func removeDuplicates(_ nums: inout [Int]) -> Int {
	let len = nums.count
	guard len > 1 else { return len }
	var prevIndex = nums.startIndex
	var nextIndex = nums.index(after: prevIndex)
	var endIndex = nums.endIndex - 1
	while nextIndex <= endIndex {
		if (nums[prevIndex] == nums[nextIndex]){
			nums.remove(at: nextIndex)
			endIndex = nums.count - 1
			continue
		}
		else {
			prevIndex += 1
			nextIndex += 1
		}
	}
	return nums.count
}


