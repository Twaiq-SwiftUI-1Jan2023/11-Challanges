//First Challenge
/*
 قم بكتابة دالة function تستقبل مصفوفة من نوع string تقوم الدالة function
 *وتقوم الدالة بإرجاع النتيجة كمصفوفة من نوع string بعد إضافة الرقم 5 على كل عنصر موجود داخل المصفوفة .
 *في حال كانت المصفوفة فارغة تقوم الدالة بارجاع المصفوفة كما هي بدون إضافة.
 */
func add_five(arr: [String]) -> [String] {
    return arr.isEmpty ? arr : arr.map { $0 + "5" }
}

var arr = ["code","c"]

add_five(arr: arr)

arr = ["test","t"]

add_five(arr: arr)

arr = ["null"]

add_five(arr: arr)

arr = ["book","pen","pencil"]

add_five(arr: arr)
