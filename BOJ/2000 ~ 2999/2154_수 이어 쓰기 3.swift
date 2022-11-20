var str: [Character] = []

for i in 1...100001 {
    for s in "\(i)" {
        str.append(s)
    }
}
let findNum = readLine()!

for i in 0..<str.count - findNum.count {
    if String(str[i..<i + findNum.count]) == findNum {
        print(i + 1)
        break
    }
}
