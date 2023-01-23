func add_five(arr: [String]) -> [String] {
    // write your code here
    return arr.map { $0 + "5" }
    }
print(add_five(arr: ["code","c"]))


print( add_five(arr:["test","t"]))

print( add_five(arr: ["null"]))
       
       print( add_five(arr:["book","pen","pencil"]))
              
           
//-------------------------------------

func middle_char(_ word: String) -> String {
    var mid = word.count / 2
    var char = Array(word)
    char.remove(at: 0)
    char.removeLast()
    if (char.count == mid){
        return char
    }else
 var vfv = char
        vfv.remove(at: 0)
        vfv.removeLast()
    return vfv
}
    
    print(middle_char("asdf"))
