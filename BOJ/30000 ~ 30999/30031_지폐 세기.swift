var answer = 0
for _ in 0..<Int(readLine()!)! {
    switch readLine()!.split(separator: " ").map({ Int($0)! }).first! {
    case 136: answer += 1_000
    case 142: answer += 5_000
    case 148: answer += 10_000
    case 154: answer += 50_000
    default: fatalError()
    }
}
print(answer)
