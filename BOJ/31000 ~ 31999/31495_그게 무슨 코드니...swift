import Foundation
var word = readLine()!
if word.last != "\"" || word.first != "\"" || word.replacingOccurrences(of: "\"", with: "").isEmpty {
    print("CE")
} else {
    print(word.replacingOccurrences(of: "\"", with: ""))
}
