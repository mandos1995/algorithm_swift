let input = readLine()!.split(separator: " ").map { Int($0)! }
let t = input[0], s = input[1]
if s == 1 || !(12...16 ~= t) {
    print(280)
} else {
    print(320)
}
