var input = readLine()!.split(separator: " ").map { String($0) }
let a = Int(input[0])!, b = Int(input[1])!, c = Int(String(input[2].removeLast()))! % 2
if c == 0 { print(a) } else { print(a ^ b) }
