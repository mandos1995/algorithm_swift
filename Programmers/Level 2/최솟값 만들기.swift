import Foundation

func solution(_ A:[Int], _ B:[Int]) -> Int
{
    var ans = 0
    let sortedA = A.sorted { $0 < $1 }
    let sortedB = B.sorted { $0 > $1 }
    for (index, a) in sortedA.enumerated() {
        ans += a * sortedB[index]
    }
    
    return ans
}
