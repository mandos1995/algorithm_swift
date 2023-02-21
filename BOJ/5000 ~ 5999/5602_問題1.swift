let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]
var area = [Int](repeating: 0, count: m)
for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    for i in 0..<m {
        area[i] += input[i]
    }
}

let answer = area.enumerated().map { ($0.offset + 1, $0.element) }
answer.sorted {
    $0.1 == $1.1 ? $0.0 < $1.0 : $0.1 > $1.1
}.map { $0.0 }.forEach { print($0, terminator: " ") }
