import Foundation

func solution(_ left:Int, _ right:Int) -> Int {
    var sum = 0
    for i in left...right {
        var count = 0
        for j in 1...i {
            if i % j == 0 {
                count += 1
            }
        }
        sum = count % 2 == 0 ? sum + i : sum - i
    }
    return sum
}
