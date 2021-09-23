let n = Int(readLine()!)!

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { String($0) }
    let reversedA = Int(String(input[0].reversed()))!
    let reversedB = Int(String(input[1].reversed()))!
    let sum = reversedA + reversedB
    let result = Int(String(String(sum).reversed()))!
    print(result)
}
