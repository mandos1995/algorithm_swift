let input = readLine()!.split(separator: " ").map { Int($0)! }
let a = input[0], m = input[1]
for i in 1...10000 {
    if (a * i) % m == 1 {
        print(i)
        break
    }
}
