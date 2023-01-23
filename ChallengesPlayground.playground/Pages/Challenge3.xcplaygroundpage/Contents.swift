//Third Challenge
/*
 قُم بكتابة دالة function تستقبل قيمتين نصية. تقوم الدالة بترتيب القيمتين النصية أبجدياً وإرجاع أطول حد تشابه بين القيمتين النصية . يتم أيضاً إزالة الأحرف المكررة في حد التشابه والإكتفاء بحرف واحد. في حال لم يُوجد تشابه بين القيمتين النصية، سيتم إرجاع القيمة No matches found.
 
 مثال: word1= xcbacbwdwa و word2 = xcefwdfecxd تقوم الدالة بترتيب هذه الكلمتين أبجدياً وحذف الحروف المتكررة منها لتصبح word1=abcdwx و word2=cdefwx. ستقوم الدالة بإرجاع أطول أول تشابه بين الكلمتين هذه cd. نلاحظ تم تجاهل التشابه wx لأن التشابه ac ظهر قبله.
 */

func similarOrdered(word1: String, word2: String) -> String {
    var set1 = Set<Character>()
    var str1 = word1.filter{set1.insert($0).inserted}
    str1 = String(str1.sorted())
    var set2 = Set<Character>()
    var str2 = word2.filter{set2.insert($0).inserted}
    str2 = String(str2.sorted())
    var tempArr1 : [String] = []
    var tempArr2 : [String] = []
    var duplicatedArr : [String] = []
    var counter = str1.count < str2.count ? str1.count : str2.count
    var temp1 : Int = 0
    for x in 0...counter{
        for i in 0..<x{
            var index1first = str1.index(str1.startIndex, offsetBy: i)
            var index1second = str1.index(str1.startIndex, offsetBy: x)
            var range1 = index1first..<index1second
            var sub1 = String(str1[range1])
            tempArr1.append(sub1)
            var index2first = str2.index(str2.startIndex, offsetBy: i)
            var index2second = str2.index(str2.startIndex, offsetBy: x)
            var range2 = index2first..<index2second
            var sub2 = String(str2[range2])
            tempArr2.append(sub2)
            temp1+=1
        }
    }
    for item in tempArr1 {
        if tempArr2.contains(item) {
            duplicatedArr.append(item)
        }
    }
    var result : String = "No matches found"
    if !duplicatedArr.isEmpty{
        
        var longestDuplicated : Int = duplicatedArr[0].count
        for item in duplicatedArr {
            longestDuplicated = item.count > longestDuplicated ? item.count : longestDuplicated
        }
        result = duplicatedArr.first { element in
            element.count == longestDuplicated
        } ?? result
    }
   return result
}

var word1 = "washing"
var word2 = "waiting"
//'ag'
similarOrdered(word1: word1, word2: word2)

word1 = "me"
word2 = "meet"
//'em'
similarOrdered(word1: word1, word2: word2)

word1 = "Reem"
word2 = "Nouf"
//'No matches found'
similarOrdered(word1: word1, word2: word2)

word1 = "abcdefggghi"
word2 = "abcdefghirr"
//'abcdefghi'
similarOrdered(word1: word1, word2: word2)
