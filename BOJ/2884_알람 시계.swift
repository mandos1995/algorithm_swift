import Foundation
let line = readLine()!
let input = line.components(separatedBy: " ")
var h = Int(input[0])!
var m = Int(input[1])!
if m - 45 < 0{
    if h - 1 < 0 {
        h = h + 24
    }
    print("\(h - 1) \(m + 15)")
} else {
    print("\(h) \(m - 45)")
}
