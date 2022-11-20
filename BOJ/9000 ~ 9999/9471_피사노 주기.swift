let n = Int(readLine()!)!

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let caseNumber = input[0], m = input[1]
    
    var fibo1 = 0, fibo2 = 1, count = 0
    
    while true {
        let temp = fibo1
        fibo1 = fibo2
        fibo2 = (temp % m + fibo2 % m) % m
        count += 1
        if fibo1 == 0 && fibo2 == 1 {
            break
        }
    }
    print(caseNumber, count)
}
