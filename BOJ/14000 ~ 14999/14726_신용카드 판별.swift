import Foundation

let t = Int(readLine()!)!
for _ in 0..<t {
    solution(n: readLine()!)
}

func solution(n: String) {
    var answer = ""
    for (index, n) in n.enumerated().reversed() {
        let n = Int(String(n))!
        if (16 - index) % 2 == 0 {
            if n * 2 > 9 {
                answer += String("\(n * 2)".map { Int(String($0))! }.reduce(0, +))
            } else {
                answer += "\(n * 2)"
            }
        } else {
            answer += "\(n)"
        }
    }
    print(answer.map { Int(String($0))! }.reduce(0, +) % 10 == 0 ? "T" : "F")

}
