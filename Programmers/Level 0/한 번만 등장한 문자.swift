import Foundation

func solution(_ s:String) -> String {
    let dict = Dictionary(s.map { ($0, 1) }, uniquingKeysWith: +)
    let answer = String(dict.filter { $0.value == 1 }.keys.sorted(by: <))
    return answer
}
