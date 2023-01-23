import UIKit



func add_five(_ arr: [String]) -> [String] {
    var newarr:[String] = []
    if arr.isEmpty{
        return arr
    }
    else {
        for i in arr {
          var x = i
            x += "5"
            newarr.append(x)
        }
        
    }
    return newarr
 
    }


print(add_five(["Atheer", "Asma"]))




func middle_char(_ word: String) {
    

    //is even num
    
       if (word.count % 2 == 0){
          print("The middle elements are: ");
    
          var x = (word.count/2) - 1;
          print(x);
          var y = word.count/2;
          print(y);
           
       }
       

       else {
       
         //if odd numbers
          var z = word.count/2;
          print("The middle elements is: ");
          print(z);
       }
    
   
    }
    
    

middle_char("alaskjksk")
