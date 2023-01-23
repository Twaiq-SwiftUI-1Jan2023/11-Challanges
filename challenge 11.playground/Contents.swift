// MARK: Challenge 1
func add_five(arr: [String]) -> [String] {
    // write your code here
    var result: [String] = []
    
    if array.count != 0 {
        
        for element in array {
            
            result.append("\(element)5")
            
        }
        
    }
    
    return result
}


print(add_five(arr: ["code", "c"]))
print(add_five(arr: ["test", "t"]))
print(add_five(arr: ["null"]))
print(add_five(arr: ["book", "pen", "pencil"]))



// MARK: Challenge 2
func middle_char(word: String) -> String {
    // write your code here
    let firstIndex = word.index(word.startIndex, offsetBy: (word.count - 1) / 2)
    let lastIndex = word.index(word.startIndex, offsetBy: word.count / 2)
    
    return "\(word[firstIndex...lastIndex])"
}

print(middle_char(word: "test"))
print(middle_char(word: "z"))
print(middle_char(word: "salem"))
print(middle_char(word: "like"))



// MARK: Challenge 3
func similarOrdered(word1: String, word2: String) -> String {
    // write your code here
    
    // remove same character
    let removeSame1 = Set(word1)
    let removeSame2 = Set(word2)
    
    // order by alphabetically
    var sortedCharacter1 = removeSame1.sorted()
    var sortedCharacter2 = removeSame2.sorted()

    // Character to String
    var string1 = ""
    var string2 = ""
    
    for i in sortedCharacter1 {
        string1.append(i)
    }
    for x in sortedCharacter2 {
        string2.append(x)
    }
    
    let result = string1.filter({ string2.contains($0) })
    
    let firstIndex = result.index(result.startIndex, offsetBy: 0)
    let lastIndex = result.index(result.startIndex, offsetBy: 1)
    
    if result.count >= 2 {
        
        
        return "\(result[firstIndex...lastIndex])"
        
        
        
    } else if result.count > 5 {
        
        let wholeIndex = result.index(result.startIndex, offsetBy: result.count + 1)
        return "\(result[firstIndex...wholeIndex])"
        
    }  else {
        
        return "No matches found"
        
    }
    
}

print(similarOrdered(word1: "xcbacbwdwa", word2: "xcefwdfecxd"))
print(similarOrdered(word1: "washing", word2: "waiting"))
print(similarOrdered(word1: "me", word2: "meet"))
