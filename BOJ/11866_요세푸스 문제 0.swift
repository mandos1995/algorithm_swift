let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], k = input[1]
var array = [Int](repeating: 0, count: n + 1)
for i in 1...n {
    array[i] = i
}
array.removeFirst()
var answer: [Int] = []
var step = 0
for _ in 0..<n {
    step += k - 1
    step %= array.count
    answer.append(array.remove(at: step))
}
var result = "<"
for ans in answer.map({ String($0) }) {
    result += "\(ans), "
}
result.removeLast()
result.removeLast()
result += ">"
print(result)
