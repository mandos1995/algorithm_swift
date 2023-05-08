import Foundation

func solution(_ a:Int, _ b:Int) -> Int {
    return "\(a)\(b)" > "\(b)\(a)" ? Int("\(a)\(b)")! : Int("\(b)\(a)")!
}
