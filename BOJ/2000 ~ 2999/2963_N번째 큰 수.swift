let t = Int(readLine()!)!

for _ in 0 ..< t {
    var input = readLine()!.split(separator: " ").map { Int($0)! }
    input.sort(by: >)
    print(input[2])
}
