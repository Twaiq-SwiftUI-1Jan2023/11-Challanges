import UIKit

var greeting = "Hello, playground"

import Foundation
func addFive(arr: [String]) -> [String] {
    if arr.isEmpty {
        return arr
    }
    return arr.map { $0 + "5" }
}

var arr1 = ["code", "c"]
print(addFive(arr: arr1))

let arr2 = ["test", "t"]
print(addFive(arr: arr2))
let arr3 = ["null"]

print(addFive(arr: arr3))

let arr4 = ["book", "pen", "pencil"]
print(addFive(arr: arr4))


