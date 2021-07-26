let isMultipleNum = Int(readLine()!)!
while true {
    let n = Int(readLine()!)!
    if n == 0 {
        break
    } else {
        if n.isMultiple(of: isMultipleNum) {
            print("\(n) is a multiple of \(isMultipleNum).")
        } else {
            print("\(n) is NOT a multiple of \(isMultipleNum).")
        }
    }
}
