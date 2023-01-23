import UIKit

func add_five(arr: [String]) -> [String] {
    // write your code here
    
    var theArray :[String] = []
    if arr.isEmpty{
        return theArray
    }
    
    for i in arr {
     var x = i
        x += "5"
        theArray.append(x)
    }
    return theArray
    
    }
var addiding = add_five(arr: ["majedah" , " 54"])
 print(addiding)


// chaleng2


func middle_char(word: String) -> String {
    let theWord = word.count
    
    if theWord < 2 {
        return word
    }
    
    let start = word.index(word.startIndex, offsetBy: (theWord - 1) / 2)
    let end = word.index(word.startIndex, offsetBy: (theWord + 2) / 2)
    
    return String(word[start..<end])
}

print(middle_char(word: "majedah"))
print(middle_char(word: "mk"))



//challeng 3


