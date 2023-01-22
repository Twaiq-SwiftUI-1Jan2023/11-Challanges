import UIKit

func add_five(arr: [String]) -> [String] {
    var returnArray: [String] = []
    
    if arr.isEmpty {
        return returnArray
    }
    
    for item in arr {
        returnArray.append(item + "5")
    }
    
    return returnArray
}

print(add_five(arr: ["code", "c"]))
print(add_five(arr: ["test", "t"]))
print(add_five(arr: ["null"]))
print(add_five(arr: ["book", "pen", "pencil"]))
