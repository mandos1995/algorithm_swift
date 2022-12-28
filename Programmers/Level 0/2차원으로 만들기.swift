import Foundation

func solution(_ num_list:[Int], _ n:Int) -> [[Int]] {
    var answer = [[Int]](repeating: [Int](repeating: 0, count: n), count: num_list.count / n)
    
    for i in 0..<num_list.count {
        answer[i / n][i % n] = num_list[i]
    }
    return answer
}
