import Foundation

func solution(_ myString:String, _ pat:String) -> Int {
    return myString.uppercased().contains(pat.uppercased()) ? 1 : 0
}
