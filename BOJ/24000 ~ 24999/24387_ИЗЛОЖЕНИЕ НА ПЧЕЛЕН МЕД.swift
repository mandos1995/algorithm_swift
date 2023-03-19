let a = readLine()!.split(separator: " ").map { Int($0)! }.sorted(by: <)
let b = readLine()!.split(separator: " ").map { Int($0)! }.sorted(by: <)
print(a[0] * b[0] + a[1] * b[1] + a[2] * b[2])
