var num = readLine()!

if num.hasPrefix("0x") {
    num.removeFirst()
    num.removeFirst()
    print(Int(num, radix: 16)!)
} else if num.hasPrefix("0") {
    num.removeFirst()
    print(Int(num, radix: 8)!)
} else {
    print(num)
}
