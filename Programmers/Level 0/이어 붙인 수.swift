import Foundation

func solution(_ num_list:[Int]) -> Int {
    let evenNumber = Int(num_list.filter { $0 % 2 == 0 }.map { String($0) }.joined())!
    let oddNumber = Int(num_list.filter { $0 % 2 != 0 }.map { String($0) }.joined())!
    return evenNumber + oddNumber
}
