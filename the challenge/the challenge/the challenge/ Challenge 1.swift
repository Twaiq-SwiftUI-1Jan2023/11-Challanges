

import Foundation

func add_five(arr: [String]) -> [String] {
    var Array: [String] = []
    for i in arr {
        var num = i
        num += "5"
        Array.append(i)

    }

   return Array
}
//print(add_five(arr: ["wejdan","Hi","sarah"]))


