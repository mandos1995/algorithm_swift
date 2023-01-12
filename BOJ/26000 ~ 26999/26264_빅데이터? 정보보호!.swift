let n = Int(readLine()!)!
let string = readLine()!.filter { $0 == "b" || $0 == "s" }
let bigdata = string.filter { $0 == "b" }.count
let security = string.filter { $0 == "s" }.count
if bigdata > security {
    print("bigdata?")
} else if bigdata < security {
    print("security!")
} else {
    print("bigdata? security!")
}
