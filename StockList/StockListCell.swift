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
    @IBOutlet weak var companyIconImage: UIImageView!
    @IBOutlet weak var companyNameLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var percentageChangeLabel: UILabel!
    
    func configure(_ stock: StockModel) {
        rankLabel.text = "\(stock.rank)"
        companyIconImage.image = UIImage(named: stock.companyIcon)
        companyNameLabel.text = stock.name
        priceLabel.text = "\(stock.price)원"
        percentageChangeLabel.text = "\(stock.percentage)%"
    }
    
}