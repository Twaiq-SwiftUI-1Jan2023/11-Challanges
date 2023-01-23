// Q1
func add_five(arr: [String]) -> [String] {
    return arr.map{$0 + "5"}
    }

// Q2
func middleWord(word: String) -> String {
   
var mid = word.count / 2
    var char = Array(word)
    return word.count % 2 == 0 ? "\(char[mid - 1])\(char[mid])" : "\(char[mid])"
    }
// Q3

func similerWord(word1: String, word2: String) -> String {
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
        return finale.count == 0 ? "No matches found" : "\(finale)"
    }

