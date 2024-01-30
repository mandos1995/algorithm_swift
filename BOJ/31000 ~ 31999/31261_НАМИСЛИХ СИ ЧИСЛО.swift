let ab = readLine()!.split(separator: " ").map { Int($0)! }
let a = ab[0], b = ab[1]
print(((b + a) * a + a) * a)
