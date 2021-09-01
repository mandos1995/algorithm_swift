let t = Int(readLine()!)!

for i in 1...t {
    var input = readLine()!.split(separator: " ").map { Int($0)! }
    input.sort(by: >)
    print("Scenario #\(i):")
    if input[0] * input[0] == input[1] * input[1] + input[2] * input[2] {
        print("yes")
    } else {
        print("no")
    }
    print()
}
