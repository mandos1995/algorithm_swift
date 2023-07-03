import Foundation

func solution(_ picture:[String], _ k:Int) -> [String] {
    return picture.map { $0.map { String(repeating: $0, count: k) }.joined() }.flatMap { Array(repeating: $0, count: k) }    
}
