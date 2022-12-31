import Foundation

func solution(_ array:[Int], _ n:Int) -> Int {
    var answer = 0
    var minDistance = Int.max
    for arr in array {
        if abs(arr - n) < minDistance {
            answer = arr
            minDistance = abs(arr - n)
            continue
        }
        if abs(arr - n) == minDistance {
            if answer > arr {
                answer = arr
            }
        }
    }
    
    return answer
}
