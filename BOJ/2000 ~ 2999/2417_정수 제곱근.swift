import Foundation
let n = Int(readLine()!)!
var start = 0
var end = Int(sqrt(Double(Int.max)))

while start <= end {
    let mid = (start + end) / 2
    
    if isSuccess(target: mid, n: n) {
       end = mid - 1
    } else {
       start = mid + 1
    }
}

func isSuccess(target: Int, n: Int) -> Bool {
    return target * target >= n
}

print(start)
