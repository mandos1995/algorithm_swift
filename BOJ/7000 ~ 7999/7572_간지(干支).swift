let num = "7890123456".map { String($0) }
let alpha = "JKLABCDEFGHI".map { String($0) }
let n = (Int(readLine()!)! - 1) % 60
print(alpha[n % 12] + num[n % 10])
