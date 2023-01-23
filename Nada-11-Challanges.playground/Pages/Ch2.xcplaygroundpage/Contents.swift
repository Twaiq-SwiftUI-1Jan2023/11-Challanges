8

import Foundation
func middleChar(word: String) -> String {
    var wordCount = word.count
    if wordCount == 1 {
        return word
    } else if wordCount % 2 == 0 {
        var middleIndex = wordCount / 2
        var leftMiddleChar = word[word.index(word.startIndex, offsetBy: middleIndex - 1)]
        var rightMiddleChar = word[word.index(word.startIndex, offsetBy: middleIndex)]
        return "\(leftMiddleChar)\(rightMiddleChar)"
    } else {
        let middleIndex = wordCount / 2
        return String(word[word.index(word.startIndex, offsetBy: middleIndex)])
        
        
    }
}


let word1 = "test"
print(middleChar(word: word1))

let word2 = "z"
print(middleChar(word: word2))

let word3 = "salem"
print(middleChar(word: word3))

let word4 = "nada"
print(middleChar(word: word4))

