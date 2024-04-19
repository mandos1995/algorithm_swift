let str = readLine()!.map { $0 }
var i = 0
while i < str.count {
    print(str[i], terminator: "")
    i += Int(str[i].asciiValue!) - 64
}
