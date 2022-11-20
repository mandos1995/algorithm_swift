let n = Int(readLine()!)!

for _ in 0..<n {
    let num = readLine()!
    let numIdx = num.index(num.endIndex, offsetBy: -1)
    let lastNum = Int(String(num[numIdx]))!
    if lastNum % 2 == 0 {
        print("even")
    } else {
        print("odd")
    }
}
