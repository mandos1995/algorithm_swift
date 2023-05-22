import Foundation

func solution(_ myString:String, _ pat:String) -> Int {
    return String(myString.map { $0 == "A" ? "B" : "A" }).contains(pat) ? 1 : 0
}
