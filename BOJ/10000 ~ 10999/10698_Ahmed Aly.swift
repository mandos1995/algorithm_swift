let n = Int(readLine()!)!

for i in 1...n {
    let input = readLine()!.split(separator: " ").map { String($0) }
    let oper = input[1]
    switch oper {
    case "+":
        if Int(input[0])! + Int(input[2])! == Int(input[4])! {
            print("Case \(i): YES")
        } else {
            print("Case \(i): NO")
        }
    default:
        if Int(input[0])! - Int(input[2])! == Int(input[4])! {
            print("Case \(i): YES")
        } else {
            print("Case \(i): NO")
        }
    }
}
