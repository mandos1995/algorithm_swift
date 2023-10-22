let t = Int(readLine()!)!

for i in 1...t {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let a = input[0], b = input[1]
    let n = a / b
    let d = a - (b * n)
    if n == 0 && d == 0 { print("Case \(i): 0")}
    else if n == 0 { print("Case \(i): \(a)/\(b)") }
    else if d == 0 { print("Case \(i): \(n)")}
    else { print("Case \(i): \(n) \(d)/\(b)") }
}
