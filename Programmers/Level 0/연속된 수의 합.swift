import Foundation

func solution(_ num:Int, _ total:Int) -> [Int] {
    var sum = (num * (num + 1)) / 2
    var high = num
    var low = 1
    while sum != total {
        if sum < total {
            high += 1
            sum -= low
            sum += high
            low += 1
        } else {
            sum -= high
            high -= 1
            low -= 1
            sum += low
        }
    }
    
    return [Int](low...high)
}
