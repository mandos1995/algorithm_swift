var firstPhoneNumber = readLine()!.map { Int(String($0))! }
var secondPhoneNumber = readLine()!.map { Int(String($0))! }
var lovePhoneNumber: [Int] = []
for i in 0..<firstPhoneNumber.count {
    lovePhoneNumber.append(firstPhoneNumber[i])
    lovePhoneNumber.append(secondPhoneNumber[i])
}

while lovePhoneNumber.count > 2 {
    var love = [Int](repeating: 0, count: lovePhoneNumber.count - 1)
    for i in 0..<lovePhoneNumber.count - 1 {
        love[i] += (lovePhoneNumber[i] + lovePhoneNumber[i + 1]) % 10
    }
    lovePhoneNumber = love
}
print(lovePhoneNumber.map { String($0) }.reduce("", +))
