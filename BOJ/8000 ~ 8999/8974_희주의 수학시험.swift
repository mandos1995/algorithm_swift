var array: [Int] = []
for i in 1...1000 {
    if array.count > 1000 { break }
    for _ in 1...i {
        array.append(i)
    }
}

let input = readLine()!.split(separator: " ").map { Int($0)! - 1 }
let a = input[0], b = input[1]
print(array[a...b].reduce(0, +))
