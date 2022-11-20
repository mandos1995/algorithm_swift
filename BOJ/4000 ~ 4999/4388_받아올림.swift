while true {
    let input = readLine()!.split(separator: " ").map { String($0) }.sorted { $0.count > $1.count }
    if input == ["0", "0"] {
        break
    }
    var num1 = input[0].map { String($0) }, num2 = input[1].map { String($0) }
    for _ in 0..<num1.count - num2.count {
        num2.insert("0", at: 0)
    }
    var answer = 0
    var carry = 0
    var resultAdd = ""
    for i in (0..<num1.count).reversed() {
        let n1 = Int(num1[i])!
        let n2 = Int(num2[i])!
        var sum = n1 + n2 + carry
        if sum > 9 {
            sum -= 10
            carry = 1
            answer += 1
        } else {
            carry = 0
        }
        resultAdd = "\(sum)" + resultAdd
    }
    resultAdd = carry == 1 ? "1" + resultAdd : resultAdd
    print(answer)
}
