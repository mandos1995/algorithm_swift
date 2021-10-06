let n = Int(readLine()!)!
let input = readLine()!.split(separator: " ").map { Int($0)! }
var sortInput = input.sorted()

for i in 0..<n {
    print(sortInput.firstIndex(of: input[i])!, terminator: " ")
    sortInput[sortInput.firstIndex(of: input[i])!] = -1
}
