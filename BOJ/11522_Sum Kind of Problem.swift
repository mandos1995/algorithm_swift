let n = Int(readLine()!)!

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { Double($0)! }
    let num = input[1]
    let sum1 = Int(num * (num + 1) / 2)
    let sum2 = Int((num * 2) * (num / 2))
    let sum3 = Int((num * 2 + 2) * (num / 2))
    print(Int(input[0]), sum1, sum2, sum3)
}
