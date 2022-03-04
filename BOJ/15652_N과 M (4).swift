let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]
var result: [Int] = []
var output = ""
func backtracking(start:Int, index: Int) {
    if index == m {
        output += result.map { String($0)}.joined(separator: " ")
        output += "\n"
        return
    }
    for i in start...n {
        result.append(i)
        backtracking(start: i, index: index + 1)
        result.removeLast()
    }
}
backtracking(start: 1, index: 0)
print(output)
