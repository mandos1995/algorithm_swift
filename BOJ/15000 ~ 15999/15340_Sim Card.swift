while true {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    if input[0] == 0 && input[1] == 0 {
        break
    } else {
        let pay1 = input[0] * 30 + input[1] * 40
        let pay2 = input[0] * 35 + input[1] * 30
        let pay3 = input[0] * 40 + input[1] * 20
        
        print(min(pay1, pay2, pay3))
    }
}
