let input = readLine()!.split(separator: " ").map { Int($0)! }
var box = readLine()!.split(separator: " ").map { Int($0)! }
var book = readLine()!.split(separator: " ").map { Int($0)! }

for i in 0..<input[0] {
    for j in 0..<input[1] {
        if box[i] - book[j] >= 0 {
            box[i] -= book[j]
            book[j] = 0
            continue
        }
    }
}
print(box.reduce(0, +))
