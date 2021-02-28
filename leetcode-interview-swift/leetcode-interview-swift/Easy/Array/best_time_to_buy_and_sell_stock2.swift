//
//  best_time_to_buy_and_sell_stock2.swift
//  leetcode-interview-swift
//
//  Created by Yusuf Turan on 27.02.2021.
//

public func maxProfit(_ prices: [Int]) -> Int {
	var i: Int = 0
	var maxProfit: Int = 0
	var valley = prices[0]
	var peak = prices[0]
	while i < (prices.count-1) {
		while (i < prices.count-1 && prices[i] >= prices[i+1]){
			i += 1
		}
		valley = prices[i]
		while (i < prices.count-1 && prices[i] <= prices[i+1]){
			i += 1
		}
		peak = prices[i]
		maxProfit += (peak - valley)
	}
	return maxProfit
}
//Also one pass solution would be like:
//https://leetcode.com/media/original_images/122_maxprofit_2.PNG (A+B+C = D)
public func maxProfit2(_ prices: [Int]) -> Int {
	var maxprofit: Int = 0
	for i in 1..<prices.count {
		if (prices[i] > prices[i-1]){
			maxprofit += Int(max(0, prices[i]-prices[i-1]))
		}
	}
	return maxprofit
}
