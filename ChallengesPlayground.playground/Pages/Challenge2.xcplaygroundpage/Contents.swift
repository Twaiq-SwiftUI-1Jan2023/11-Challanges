//Second Challenge
/*
 قم بكتابة دالة function تستقبل قيمة نصية من نوع string تقوم الدالة function باستخراج الحرف الموجود في وسط الكلمة ثم قم بإرجاع الحرف من نوع string
 */

func middle_char(word: String) -> String {
    var result : String = ""
    var word_count = word.count
    if word_count <= 1 {
        return word
    } else {
        var splitter = Int(Float(word_count/2))
        if word.count % 2 == 0 {
            
            var first = word.index(word.startIndex,offsetBy: splitter-1)
            word[first]
            var second = word.index(word.endIndex, offsetBy: -splitter+1)
            word[second]
            var range = first..<second
            result = String(word[range])
        } else {
            var first = word.index(word.startIndex,offsetBy: splitter)
            word[first]
            var second = word.index(word.endIndex, offsetBy: -splitter)
            word[second]
            var range = first..<second
            result = String(word[range])
        }
    }
    return result
}

var word = "test"
middle_char(word: word)

word = "z"
middle_char(word: word)

word = "salem"
middle_char(word: word)

word = "like"
middle_char(word: word)
