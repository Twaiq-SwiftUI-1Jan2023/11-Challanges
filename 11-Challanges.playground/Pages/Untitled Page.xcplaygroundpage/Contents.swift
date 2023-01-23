import UIKit

func middle_char(word: String) -> String {
    
    let count = word.count

    if count < 2 {
        return word
    }

    let start = word.index(word.startIndex, offsetBy: (count - 1)/2)

    let end = word.index(word.startIndex, offsetBy: (count + 2)/2)
   
    return String(word[start..<end])
    }


middle_char(word: "saleem")

