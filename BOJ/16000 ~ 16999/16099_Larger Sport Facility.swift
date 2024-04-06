let t = Int(readLine()!)!
for _ in 0..<t { solution() }

func solution() {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    if input[0] * input[1] == input[2] * input[3] { print("TIE") }
    else if input[0] * input[1] > input[2] * input[3] { print("TelecomParisTech") }
    else { print("Eurecom") }
}
