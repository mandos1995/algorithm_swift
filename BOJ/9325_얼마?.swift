let t = Int(readLine()!)!

for _ in 0..<t {
    let carPrice = Int(readLine()!)!
    let optionNum = Int(readLine()!)!
    var result = carPrice
    for _ in 0..<optionNum {
        let input = readLine()!.split(separator: " ").map { Int($0)! }
        result += input[0] * input[1]
    }
    print(result)
}
