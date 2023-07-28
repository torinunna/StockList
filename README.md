# Project StockList

Fastcampus 왕초보를 위한 한 번에 끝내는 iOS 앱 개발 바이블 초격차 패키지 Online. 

## Part3-3. 주식리스트


✅ UI: Storyboard

✅ CollectionView

✅ 원화 표시 -> numberFormatter 적용

```
func convertToCurrencyFormat(price: Int) -> String {
  let numberFormatter = NumberFormatter()
  numberFormatter.numberStyle = .decimal
  numberFormatter.maximumFractionDigits = 0
  let result = numberFormatter.string(from: NSNumber(value: price)) ?? ""
  return result
}

priceLabel.text = "\(convertToCurrencyFormat(price: stock.price))원"


// 1234567원 -> 1,234,567원
```

✅ 주가 ⬆ / ⬇ 에 따라 text color 변경 -> tenary operator

```
percentageChangeLabel.textColor = stock.percentage > 0 ? UIColor.systemRed : UIColor.systemBlue
 
```


## Preview


<img width="300" alt="Screenshot 2023-05-11 at 6 48 52 PM" src="https://github.com/torinunna/StockList/assets/86116904/811b48ed-ad48-4c9c-9888-3568a12bf283">

