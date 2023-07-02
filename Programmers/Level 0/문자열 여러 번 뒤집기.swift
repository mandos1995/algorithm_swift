import Foundation

func solution(_ my_string:String, _ queries:[[Int]]) -> String {
    var myString = my_string.map { $0 }
    queries.forEach {
        myString.replaceSubrange($0[0]...$0[1], with: myString[$0[0]...$0[1]].reversed())
    }
    return String(myString)
}
