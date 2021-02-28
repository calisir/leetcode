//
//  main.swift
//  leetcode-interview-swift
//
//  Created by Yusuf Turan on 27.02.2021.
//

import Foundation


// SAMPLE TEST CASE USAGE:

test(of: "remove duplicates") {
	var nums = [1,1,2]
	let output = removeDuplicates(&nums)
	print(output)
}

test(of: "max profit") {
	let arr = [7, 1, 5, 3, 6, 4]
	let out = maxProfit(arr)
	print(out)
	
	let arr2 = [1, 7, 2, 3, 6, 7, 6, 7]
	let out2 = maxProfit2(arr2)
	print(out2)
}

test(of: "rotate array") {
	var arr = [1,2,3,4,5,6,7]
	rotate(&arr, 3)
	print(arr)
}

test(of: "contains duplicate") {
	let arr = [1,1,1,3,3,4,3,2,4,2]
	let out = containsDuplicate(arr)
	print(out)
}

test(of: "single number") {
	let arr = [3, 3, 4, 4, 1]
	let out = singleNumber(arr)
	print(out)
}

test(of: "two sum") {
	let nums1 = [2,7,11,15]
	let out = twoSum(nums1, 9)
	print(out)
}

test(of: "rotate image") {
	var matrix = [[1,2,3],[4,5,6],[7,8,9]]
	rotate(&matrix)
	print(matrix)
}
