//
//  rotate_image.swift
//  leetcode-interview-swift
//
//  Created by Yusuf Turan on 27.02.2021.
//

func rotate(_ matrix: inout [[Int]]) {
	matrix.reverse()
	for i in 0..<matrix.count {
		for j in 0..<i {
			let tmp = matrix[i][j]
			matrix[i][j] = matrix[j][i]
			matrix[j][i] = tmp
		}
	}
}

