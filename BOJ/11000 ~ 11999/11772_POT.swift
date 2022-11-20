func pow(x: Int, a: Int) -> Int {
    var result = 1
    for _ in 0..<a {
        result *= x
    }
    return result
}

let n = Int(readLine()!)!
var sum = 0
for _ in 0..<n {
    let num = Int(readLine()!)!
    sum += pow(x: num / 10, a: num % 10)
}
print(sum)
