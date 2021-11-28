let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], k = input[1]

var a = readLine()!.split(separator: " ").map { Int($0)! }
var b = readLine()!.split(separator: " ").map { Int($0)! }

a.sort()
b.sort{ $0 > $1 }

for i in 0..<k {
    if a[i] < b[i] {
        (a[i], b[i]) = (b[i], a[i])
    } else {
        break
    }
}
print(a.reduce(0, +))
