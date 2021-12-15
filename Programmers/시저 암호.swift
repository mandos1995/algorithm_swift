func solution(_ s:String, _ n:Int) -> String {
    var highValue: [String] = []
    var result = ""
    for i in 65...90 {
        highValue.append(String(UnicodeScalar(UInt8(i))))
    }
    let lowValue = highValue.map { $0.lowercased() }
    for chr in s {
        if highValue.contains(String(chr)) {
            var sum = chr.asciiValue! + UInt8(n)
            if sum > 90 {
                sum -= 26
            }
            result += String(UnicodeScalar(sum))
        } else if lowValue.contains(String(chr)) {
            var sum = chr.asciiValue! + UInt8(n)
            if sum > 122 {
                sum -= 26
            }
            result += String(UnicodeScalar(sum))
        } else {
            result += " "
        }
    }
    return result
}
