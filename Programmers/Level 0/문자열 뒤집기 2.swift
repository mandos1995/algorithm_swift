import Foundation

func solution(_ myString: String, _ s:Int, _ e:Int) -> String {
    var myString = myString.map { $0 }
    myString.replaceSubrange(s...e, with: myString[s...e].reversed())
    return String(myString)
}
