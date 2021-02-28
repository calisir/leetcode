//
//  rotate_array.swift
//  leetcode-interview-swift
//
//  Created by Yusuf Turan on 27.02.2021.
//

func rotate(_ nums: inout [Int], _ k: Int) {
	let kk = k % nums.count
	//reverse whole arr:
	reverse(&nums, s: 0, e: nums.count-1)
	//reverse to the kk
	reverse(&nums, s: 0, e: kk-1)
	//reverse after kk
	reverse(&nums, s: kk, e: nums.count-1)
}

func reverse(_ nums: inout [Int], s: Int, e: Int) {
	var start = s; var end = e;
	while start < end {
		//swap them with tuple.
		//(nums[start], nums[end]) = (nums[end], nums[start])
		//or use just:
		nums.swapAt(start, end)
		start += 1
		end -= 1
	}
}
