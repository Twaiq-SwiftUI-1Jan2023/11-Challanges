//: [Previous](@previous)

import Foundation



func similarOrdered(_ word1: String,_ word2: String) -> String {
    var sortword1 = word1.sorted(by: {$0 < $1})
    var sortword2 = word2.sorted(by: {$0 < $1})
    var temp =  sortword1.map{ i in
        sortword2.filter(){ j in
            i == j
        }
    }
    var result : String = ""
    for i in 0..<temp.count{
        
        if !temp[i].isEmpty{
            result += String(temp[i][0])
            
        }else{
            break
        }
    }
    
    if result.count == 0{
        return "No matches found"
    }else{
        return  "\(result)"
    }
}
var r = similarOrdered("washing", "waiting")
print(r)



