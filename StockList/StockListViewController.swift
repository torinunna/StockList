//
//  StockListViewController.swift
//  StockList
//
//  Created by YUJIN KWON on 2023/05/05.
//

import UIKit

class StockListViewController: UIViewController {

    let stockList: [StockModel] = StockModel.list
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.dataSource = self
        collectionView.delegate = self
    }
    
}

extension StockListViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return stockList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: StockListCell.identifier, for: indexPath) as? StockListCell else { return UICollectionViewCell() }
        let stock = stockList[indexPath.item]
        cell.configure(stock)
        return cell
    }
    
}

extension StockListViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.bounds.width, height: 80.0)
    }
}
