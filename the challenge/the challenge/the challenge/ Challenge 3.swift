
import Foundation
func challenge3a(string1: String, string2: String) -> String{
   var checkString = string2
   for letter in string1 {
      if let index = checkString.firstIndex(of: letter) {
         checkString.remove(at: index)
      } else {
         return "false"
      }
}
   return checkString
}
let x = challenge3a(string1: "wdanje", string2: "wejdan")
//print("h\(x)")


func challenge3b(string1: String, string2: String) ->  Bool {
   //return string1.sorted()
  return string1.sorted()==string2.sorted()
}
let x1 = challenge3b(string1: "wdanje", string2: "wejdan")

