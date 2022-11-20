func rev(num: String) -> Int {
    let reversedNum = Int(String(num.reversed()))!
    return reversedNum
}

let input = readLine()!.split(separator: " ").map { String($0) }
let result = rev(num: input[0]) + rev(num: input[1])
print(rev(num: "\(result)"))
