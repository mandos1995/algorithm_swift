import Foundation

func solution(_ my_string:String, _ num1:Int, _ num2:Int) -> String {
    var myString = my_string.map { $0 }
    myString.swapAt(num1, num2)
    return String(myString)
}
