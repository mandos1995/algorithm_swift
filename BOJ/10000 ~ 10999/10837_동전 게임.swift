let k = Int(readLine()!)!
let c = Int(readLine()!)!
var answer = ""
for _ in 0..<c {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let m = input[0], n = input[1]
    
    if m == n {
        answer += "1\n"
    } else if m > n {
        if (m - n) - (k - m) <= 2 {
            answer += "1\n"
        } else {
            answer += "0\n"
        }
    } else {
        if (n - m) - (k - n) <= 1 {
            answer += "1\n"
        } else {
            answer += "0\n"
        }
    }
}
print(answer)
