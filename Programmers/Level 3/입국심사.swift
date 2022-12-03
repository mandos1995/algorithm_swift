import Foundation

func solution(_ n:Int, _ times:[Int]) -> Int64 {
    var start = 1
    var end = times.max()! * n
    
    while start <= end {
        let mid = start + (end - start) / 2
        if isVaild(n: n, times: times, mid: mid) {
            end = mid - 1
        } else {
            start = mid + 1
        }
    }
    
    return Int64(start)
}

func isVaild(n: Int, times: [Int], mid: Int) -> Bool {
    return times.map { mid / $0 }.reduce(0, +) >= n
}
