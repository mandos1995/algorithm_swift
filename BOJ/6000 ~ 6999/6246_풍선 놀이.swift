let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], q = input[1]
var check = [Bool](repeating: false, count: n + 1)
for _ in 0..<q {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    var l = input[0]
    let i = input[1]
    while l <= n {
        check[l] = true
        l += i
    }
}
print(check[1...].filter { !$0 }.count)
