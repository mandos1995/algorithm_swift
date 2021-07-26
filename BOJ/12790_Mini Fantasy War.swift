let n = Int(readLine()!)!
for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    var hp = 0
    var mp = 0
    var sp = 0
    if input[0] + input[4] < 1 {
        hp = 1
    } else {
        hp = input[0] + input[4]
    }
    if input[1] + input[5] < 1 {
        mp = 1
    } else {
        mp = input[1] + input[5]
    }
    if input[2] + input[6] < 0 {
        sp = 0
    } else {
        sp = input[2] + input[6]
    }
    let dp = input[3] + input[7]
    
    let result = hp + 5 * mp + 2 * sp + 2 * dp
    print(result)
}
