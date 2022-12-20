import Foundation

func solution(_ cipher:String, _ code:Int) -> String {
    return String(cipher.enumerated().filter { $0.offset + 1 % code == 0 }.map { $0.element })
}
