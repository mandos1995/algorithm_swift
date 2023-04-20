let m = readLine()!.split(separator: " ").map { Int($0)! }
let t = readLine()!.split(separator: " ").map { Int($0)! }
let p = readLine()!.split(separator: " ").map { Int($0)! }
let a = min(m[0], t[1], p[0])
let b = min(m[1], t[0], p[1])
print(min(a, b + 1) + min(b, a + 1))
