

import Foundation



func similarOrdered( word1: String, word2: String) -> String {
    var w1 = word1.sorted(by: {$0 < $1})
    var w2 = word2.sorted(by: {$0 < $1})
    var temp =  w1.map{ i in
        w2.filter(){ j in
            i == j
        }
    }
    var finale : String = ""
    for i in 0..<temp.count{
        if !temp[i].isEmpty{
            finale += String(temp[i][0])
            
        }else{
            break
        }
        
    }
        if finale.count == 0 {
            return "No matches found"
        }
        return "\(finale)"
    
}

let word1 = "washing"
let word2 = "waiting"
print(similarOrdered(word1: word1, word2: word2)) // "ag"

let word3 = "me"
let word4 = "meet"
print(similarOrdered(word1: word3, word2: word4)) // "em"

let word5 = "Reem"
let word6 = "Nouf"
print(similarOrdered(word1: word5, word2: word6)) // "No matches found"

let word7 = "abcdefggghi"
let word8 = "abcdefghirr"
print(similarOrdered(word1: word7, word2: word8)) // "abcdefghi"
