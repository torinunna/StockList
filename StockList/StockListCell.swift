//
//  StockListCell.swift
//  StockList
//
//  Created by YUJIN KWON on 2023/05/05.
//

import UIKit

class StockListCell: UICollectionViewCell {
    
    static let identifier = "StockListCell"
    
    @IBOutlet weak var rankLabel: UILabel!
    @IBOutlet weak var companyLogoImage: UIImageView!
    @IBOutlet weak var companyNameLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var percentageChangeLabel: UILabel!
    
    func configure(_ stock: StockModel) {
        rankLabel.text = "\(stock.rank)"
        companyLogoImage.image = UIImage(named: stock.companyLogo)
        companyNameLabel.text = stock.name
        priceLabel.text = "\(convertToCurrencyFormat(price: stock.price))원"
        percentageChangeLabel.text = "\(stock.percentage)%"
    }
    
    func convertToCurrencyFormat(price: Int) -> String {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        numberFormatter.maximumFractionDigits = 0
        let result = numberFormatter.string(from: NSNumber(value: price)) ?? ""
        return result
    }
    
}
