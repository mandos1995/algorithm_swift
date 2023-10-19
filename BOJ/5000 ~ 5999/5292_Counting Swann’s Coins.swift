import Foundation

let n = Int(readLine()!.replacingOccurrences(of: " ", with: ""))!
for i in 1...n {
    if i % 3 == 0 && i % 5 == 0 { print("DeadMan") }
    else if i % 3 == 0 { print("Dead") }
    else if i % 5 == 0 { print("Man") }
    else { print(i, terminator: " ") }
}
