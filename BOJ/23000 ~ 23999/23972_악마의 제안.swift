let input = readLine()!.split(separator: " ").map { Int($0)! }
let k = input[0], n = input[1]

if n == 1 {
    print(-1)
} else {
    var result = k * n / (n - 1)
    if k * n % (n - 1) != 0 {
        result += 1
    }
    print(result)
}
