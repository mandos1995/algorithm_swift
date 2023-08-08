let input = readLine()!.split(separator: " ").map { String($0) }
let a = Int(input[0])!, b = Int(input[2])!, c = Int(input[4])!
print(a + b == c ? "YES" : "NO")

