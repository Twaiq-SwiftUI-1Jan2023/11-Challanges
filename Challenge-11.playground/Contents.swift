import Foundation



// 1
func add_five(arr: [String]) -> [String] {
    var tempArray: [String] = []
    for x in arr {
        var i = x
        i += "5"
        tempArray.append(i)
        
    }
    
    
   return tempArray
}
print(add_five(arr: ["hello","Hi"]))


// 2
func middle_Char(_ word: String) -> String {
    let count = word.count

    if count < 2 {
        return word
    }

    let start = word.index(word.startIndex, offsetBy: (count - 1)/2)
    let end = word.index(word.startIndex, offsetBy: (count + 2)/2)

    return String(word[start..<end])
}
print(middle_Char("salem"))



// 3

func similarOrdered(word1: String, word2: String) -> String {
    var emptySet1 = Set<String>()
    var emptySet2 = Set<String>()
    var wordArray1:[String] = []
    var wordArray2:[String] = []
    var emptyString1 = ""
    var emptyString2 = ""
    var sumArrays:[String] =  []
    
    var stringArray:[String] = []
    var emptySumString:[String] = []
    var finalString = ""
    
    // WORD 1
    for x in word1 {
        emptySet1.insert(String(x))
    }
    for x in emptySet1 {
        wordArray1.append(String(x))
    }
    
    // WORD 2
    for x in word2 {
        emptySet2.insert(String(x))
    }
    for x in emptySet2 {
        wordArray2.append(String(x))
    }
    
    wordArray1.sort(by: <)
    wordArray2.sort(by: <)
    
    // append from array to string for word 1
    for x in wordArray1 {
        emptyString1 += x
    }
    
    // append from array to string for word 2
    
    for x in wordArray2 {
        emptyString2 += x
    }
    
    stringArray = wordArray1.filter{wordArray2.contains($0)}
    
    sumArrays = wordArray1 + wordArray2
    
    if stringArray.isEmpty {
        return "No matches found"
    }
    
    
    while wordArray1[0] != stringArray[0] {
        wordArray1.remove(at: 0)
    }
    
    while wordArray2[0] != stringArray[0] {
        wordArray2.remove(at: 0)
    }
    
    
    for x in wordArray1 {
        if x == wordArray2[0] {
            finalString += x
            wordArray2.remove(at: 0)
        }else{
            break
        }
    }
    
    
    return finalString
}
print(similarOrdered(word1: "washing", word2: "waiting"))
