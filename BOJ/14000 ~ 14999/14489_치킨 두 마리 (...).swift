let input = readLine()!.split(separator: " ").map { Int($0)! }
let chicken = Int(readLine()!)! * 2
let sum = input.reduce(0, +)
if sum >= chicken {
    print(sum - chicken)
} else {
    print(sum)
}
