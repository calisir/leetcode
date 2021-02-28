//
//  two_sum.swift
//  leetcode-interview-swift
//
//  Created by Yusuf Turan on 27.02.2021.
//

//brute force
func twoSumBrute(_ nums: [Int], _ target: Int) -> [Int] {
	var sums = Array<Int>()
	for i in 0..<nums.count {
		for j in (i+1)..<nums.count {
			if (nums[i] + nums[j] == target) {
				sums.append(i)
				sums.append(j)
			}
		}
	}
	return sums
}

//hash:
func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
	guard !nums.isEmpty else {
		return [-1, -1]
	}
	var indices = Array<Int>()
	var hashTable = Dictionary<Int, Int>()
	for (index, val) in nums.enumerated() {
		if let right = hashTable[val] {
			indices.append(index)
			indices.append(right)
			return indices
		}
		hashTable[target-val] = index
	}
	return indices
}
