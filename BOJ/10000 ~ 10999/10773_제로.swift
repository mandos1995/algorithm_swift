var stack: [Int] = []
for _ in 0..<Int(readLine()!)! {
    let n = Int(readLine()!)!
    if n == 0 {
        _ = stack.removeLast()
    } else {
        stack.append(n)
    }
}
print(stack.reduce(0, +))
