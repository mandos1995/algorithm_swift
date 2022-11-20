let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]
var visited = [Bool](repeating: false, count: n + 1)
var result: [Int] = []
var output = ""
func backtracking(index: Int) {
    if index == m {
        output += result.map { String($0)}.joined(separator: " ")
        output += "\n"
        return
    }
    for i in 1...n {
        result.append(i)
        backtracking(index: index + 1)
        result.removeLast()
    }
}
backtracking(index: 0)
print(output)
