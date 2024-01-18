let a = Int(readLine()!)!
let b = Int(readLine()!)!
let c = Int(readLine()!)!
let dict = Dictionary("\(a*b*c)".map { (String($0), 1) }, uniquingKeysWith: +)
for i in 0...9 {
    print(dict["\(i)", default: 0])
}
