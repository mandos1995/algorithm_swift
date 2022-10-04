let input = readLine()!.split(separator: " ").map { Int($0)! }
let a = input[0], b = input[1], c = input[2]

for i in 1...c {
    print(a * c + b * i, terminator: " ")
}
