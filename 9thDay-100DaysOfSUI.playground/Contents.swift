import UIKit

let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]

//let oddNmbers = luckyNumbers.filter({$0%2 == 1})
//let sortedOddNumbers = oddNmbers.sorted(by: {$0<$1})
//let mappedStringArray = sortedOddNumbers.map({"\($0) is a lucky number"})
//mappedStringArray.forEach { element in
//    print(element)
//}


let resultArray = luckyNumbers.filter({$0%2 == 1})
    .sorted(by: {$0<$1})
    .map({"\($0) is a lucky number"})

resultArray.forEach({print($0)})
