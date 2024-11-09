import Foundation

let n = Double(readLine()!)!
if n == 0 {
    print(0)
} else {
    print(Int(log2(n).rounded(.up)+1))
}
