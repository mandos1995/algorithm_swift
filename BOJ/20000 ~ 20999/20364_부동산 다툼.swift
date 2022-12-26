let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], q = input[1]
var visited = [Bool](repeating: false, count: n + 1)

for _ in 0..<q {
    var x = Int(readLine()!)!
    let earthNumber = x
    var isSuccess = true
    var isBreakNumber = 0
    
    while x != 1 {
        if visited[x] {
            isSuccess = false
            isBreakNumber = x
        }
        x /= 2
    }
    if isSuccess {
        visited[earthNumber] = true
    }
    print(isBreakNumber)
}
