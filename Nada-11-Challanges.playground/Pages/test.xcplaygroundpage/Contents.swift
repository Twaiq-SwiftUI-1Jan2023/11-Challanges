////: [Previous](@previous)
//
//import Foundation
//
//
//func similarOrdered(word1: String, word2: String) -> String {
//    let sortedWord1 = String(Set(word1.sorted()))
//    let sortedWord2 = String(Set(word2.sorted()))
//    var similarity = ""
//    var maxSimilarity = ""
//    for char1 in sortedWord1 {
//        for char2 in sortedWord2 {
//            if char1 == char2 {
//                similarity += String(char1)
//                if similarity.count > maxSimilarity.count {
//                    maxSimilarity = similarity
//                }
//            } else {
//                similarity = ""
//            }
//        }
//    }
//    if maxSimilarity.isEmpty {
//        return "No matches found"
//    }
//    return maxSimilarity
//}
//
//
//let word1 = "washing"
//let word2 = "waiting"
//print(similarOrdered(word1: word1, word2: word2)) // "ag"
//
//let word3 = "me"
//let word4 = "meet"
//print(similarOrdered(word1: word3, word2: word4)) // "em"
//
//let word5 = "Reem"
//let word6 = "Nouf"
//print(similarOrdered(word1: word5, word2: word6)) // "No matches found"
//
//let word7 = "abcdefggghi"
//let word8 = "abcdefghirr"
//print(similarOrdered(word1: word7, word2: word8)) // "abcdefghi"
