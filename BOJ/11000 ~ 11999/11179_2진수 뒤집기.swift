let n = Int(readLine()!)!
let binaryN = String(n, radix: 2)
let reverse = String(binaryN.reversed())
print(Int(reverse, radix: 2)!)
