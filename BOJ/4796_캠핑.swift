var i = 1

while true {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    if input == [0, 0, 0] {
        break
    }
    let l = input[0], p = input[1], v = input[2]
    var result = (v / p) * l
    result = v % p > l ? result + l : result + (v % p)
    print("Case \(i): \(result)")
    i += 1
}
