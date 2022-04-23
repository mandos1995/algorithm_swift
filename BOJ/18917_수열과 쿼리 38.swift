var sum = 0
var xor = 0
for _ in 0..<Int(readLine()!)! {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    
    switch input[0] {
    case 1:
        sum += input[1]
        xor ^= input[1]
    case 2:
        sum -= input[1]
        xor ^= input[1]
    case 3:
        print(sum)
    case 4:
        print(xor)
    default:
        continue
    }
}
