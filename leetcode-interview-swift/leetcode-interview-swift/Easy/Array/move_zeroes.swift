//
//  move_zeroes.swift
//  leetcode-interview-swift
//
//  Created by Yusuf Turan on 27.02.2021.
//

//two pointer approach:
func moveZeroes(_ nums: inout [Int]) {
	var i = 0; var j = 0;
	while(i < nums.count) {
		if(nums[i] != 0){
			nums.swapAt(i, j)
			i += 1; j += 1;
		}
		else {
			i += 1;
		}
	}
}
