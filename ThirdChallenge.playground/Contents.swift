import UIKit

func similarOrdered(word1: String, word2: String) -> String {
    var setOne = Set<Character>()
    var setTwo = Set<Character>()
    
    let sortedOne = String(word1.sorted())
    let sortedTwo = String(word2.sorted())
    
    let squeezedOne = sortedOne.filter { setOne.insert($0).inserted }
    let squeezedTwo = sortedTwo.filter { setTwo.insert($0).inserted }
    
    let stringArray = squeezedOne.filter { squeezedTwo.contains($0) }
    
    if stringArray.isEmpty {
        return "No matches found."
    }
    
    return stringArray
}

print(similarOrdered(word1: "washing", word2: "waiting"))
print(similarOrdered(word1: "me", word2: "meet"))
print(similarOrdered(word1: "Reem", word2: "Nouf"))
print(similarOrdered(word1: "abcdefggghi", word2: "abcdefghirr"))
