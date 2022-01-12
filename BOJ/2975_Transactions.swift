while true {
    let input = readLine()!.split(separator: " ").map { String($0) }
    if input == ["0", "W", "0"] {
        break
    } else {
        let firstMoney = Int(input[0]) ?? 0
        let letter = String(input[1])
        let secondMoney = Int(input[2]) ?? 0
        var result = 0
        if letter == "W" {
            result = firstMoney - secondMoney
            if result < -200 {
                print("Not allowed")
            } else {
                print(result)
            }
        } else {
            result = firstMoney + secondMoney
            print(result)
        }
        
    }
}
