//
//  StockModel.swift
//  StockList
//
//  Created by YUJIN KWON on 2023/05/05.
//

import Foundation

struct StockModel {
    let rank: Int
    let companyLogo: String
    let name: String
    let price: Int
    let percentage: Double
}

extension StockModel {
    static let list: [StockModel] = [
        StockModel(rank: 1, companyLogo: "TSLA", name: "테슬라", price: 1_238_631, percentage: 0.04),
        StockModel(rank: 2, companyLogo: "AAPL", name: "애플", price: 238_631, percentage: 1.04),
        StockModel(rank: 3, companyLogo: "NFLX", name: "넷플릭스", price: 438_631, percentage: -0.04),
        StockModel(rank: 4, companyLogo: "GOOG", name: "알파벳 A", price: 3_176_631, percentage: 0.04),
        StockModel(rank: 5, companyLogo: "AMZN", name: "아마존", price: 3_538_631, percentage: 0.04),
        StockModel(rank: 6, companyLogo: "NIKE", name: "나이키", price: 158_631, percentage: 0.04),
        StockModel(rank: 7, companyLogo: "DIS", name: "디즈니", price: 138_631, percentage: 0.04),
        StockModel(rank: 8, companyLogo: "TSLA", name: "테슬라", price: 1_238_631, percentage: 0.04),
        StockModel(rank: 9, companyLogo: "AAPL", name: "애플", price: 238_631, percentage: 1.04),
        StockModel(rank: 10, companyLogo: "NFLX", name: "넷플릭스", price: 438_631, percentage: -0.04),
        StockModel(rank: 11, companyLogo: "GOOG", name: "알파벳 A", price: 3_176_631, percentage: 0.04),
        StockModel(rank: 12, companyLogo: "AMZN", name: "아마존", price: 3_538_631, percentage: 0.04),
        StockModel(rank: 13, companyLogo: "NIKE", name: "나이키", price: 158_631, percentage: 0.04),
        StockModel(rank: 14, companyLogo: "DIS", name: "디즈니", price: 138_631, percentage: 0.04),
    ]
}
