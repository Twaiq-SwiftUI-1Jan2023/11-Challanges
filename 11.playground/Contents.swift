import UIKit

// MARK: Part 1️⃣

func add_five(arr: [String]) -> [String] {
    if arr.isEmpty {
        return arr }
    return arr.map{$0 + "5"}
}

//TEST part above
add_five( arr: ["code","c"])


// MARK: Part 2️⃣
func middle_char(word: String) -> String {
    let wordLength = word.count
    var returnedChars : String = ""
    let startIndex : String.Index
    let endIndex   : String.Index
    
    //Case#01 [1 char / empty? return the whole word]:
    if  wordLength <= 1 {
        return word
    }
    
    //📍 New term learned in Swift [offsetBy]
    //offsetBy: Returns an index that is the specified distance from the given index
    startIndex = word.index(word.startIndex, offsetBy: (wordLength - 1)/2)
    endIndex   = word.index(word.startIndex, offsetBy: (wordLength + 2)/2)
    
    //Case#02 [<word> has even length]
    //Thus, middle should be 2 chars
    if wordLength % 2 == 0 {
        returnedChars = "" + word[startIndex..<endIndex]
        return returnedChars
        
    }
    
    //Case#03 [<word> has odd length]
    //Thus, middle should be 1 char only
    returnedChars = "" + word[startIndex...startIndex]
    return returnedChars
}

//TEST part above
middle_char(word: "HERE")
middle_char(word: "HER")


