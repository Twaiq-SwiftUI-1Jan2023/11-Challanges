//: [Previous](@previous)

import Foundation

func add_five(arr: [String]) -> [String] {
    var array : [String ] = []
    if arr.count == 0{
        return arr
    }
    for i in arr {
        var b = i
        b += "5"
        array.append(b)
    }
    return array
}
