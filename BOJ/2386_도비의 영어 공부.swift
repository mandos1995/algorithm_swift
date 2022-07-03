while let input = readLine()?.split(separator: " ").map({ String($0) }) {
    let find = input[0]
    var count = 0
    if find == "#" {
        break
    }
    let inputString = String(input[1..<input.count].reduce("", +)).uppercased()
    for i in inputString {
        if find.uppercased() == String(i) {
            count += 1
        }
    }
    print(find, count)
}
