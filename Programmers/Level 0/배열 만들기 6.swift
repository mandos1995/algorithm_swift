import Foundation

func solution(_ arr:[Int]) -> [Int] {
    var stk: [Int] = []
    for i in 0..<arr.count {
        if let last = stk.last, last == arr[i] { stk.removeLast() }
        else { stk.append(arr[i]) }
    }
    
    return stk.isEmpty ? [-1] : stk
}
