//
//   Challenge 2.swift
//  the challenge
//
//  Created by Judy Alshahrani on 29/06/1444 AH.
//

import Foundation
func middleChar( word: String) -> String {
    let ch = word.count

    if ch < 2 {
        return word
    }

    let start = word.index(word.startIndex, offsetBy: (ch - 1)/2)
    let end = word.index(word.startIndex, offsetBy: (ch + 2)/2)

    return String(word[start..<end])
}
//print(middle_Char("wejdan"))
