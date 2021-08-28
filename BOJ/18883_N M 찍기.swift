let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0]
let m = input[1]
var k = 0
var result = ""
for _ in 1...n {
    for _ in 1...m {
        k += 1
        result += "\(k) "
    }
    result = String(result.dropLast())
    print(result)
    result = ""
}
