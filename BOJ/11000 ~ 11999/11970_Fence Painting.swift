let first = readLine()!.split(separator: " ").map { Int($0)! }
let second = readLine()!.split(separator: " ").map { Int($0)! }
let a = first[0], b = first[1], c = second[0], d = second[1]
var isPainted = [Bool](repeating: false, count: 101)
for i in a..<b {
    isPainted[i] = true
}
for i in c..<d {
    isPainted[i] = true
}
var result = 0
for i in 0...100 {
    if isPainted[i] {
        result += 1
    }
}
print(result)
