// Challange1
func add_five(_ arr: [String]) -> [String] {
    return arr.map{$0 + "5"}
}
print(add_five(["abdullah","mohammed","ali","Saad"]))
// Challeng 2
func middle_char(_ word: String) -> String {
    var mid = word.count / 2
    var char = Array(word)
    return word.count % 2 == 0 ? "\(char[mid - 1])\(char[mid])" : "\(char[mid])"
}
print(middle_char("abdulla"))
// Challeng 3
func similarOrdered(_ word1: String,_ word2: String) -> String {
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
print(similarOrdered("washing", "waiting"))
print(similarOrdered("me", "meet"))
print(similarOrdered("Reem", "Nouf"))
print(similarOrdered("abcdefggghi", "abcdefghirr"))


