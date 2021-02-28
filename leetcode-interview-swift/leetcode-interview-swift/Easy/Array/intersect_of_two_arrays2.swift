//
//  intersect_of_two_arrays2.swift
//  leetcode-interview-swift
//
//  Created by Yusuf Turan on 27.02.2021.
//

func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
	var res = Array<Int>()
	guard nums1.count > 0 && nums2.count > 0 else {
		return res
	}
	var keyCounts = Dictionary<Int, Int>()
	for i in nums1 {
		if let count = keyCounts[i] {
			keyCounts[i] = count + 1
		}
		else {
			keyCounts[i] = 1
		}
	}
	for i in nums2 {
		if let count = keyCounts[i], count > 0 {
			keyCounts[i]? -= 1
			res.append(i)
		}
	}
	return res
}

func intersectTwoPointer(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
	let array1 = nums1.sorted()
	let array2 = nums2.sorted()
	var left = 0
	var right = 0
	var result : [Int] = []
	while (left < array1.count && right < array2.count) {
		if array1[left] < array2[right] {
			left += 1
		} else if array1[left] > array2[right] {
			right += 1
		} else {
			result.append(array1[left])
			left += 1; right += 1;
		}
	}
	return result
}
