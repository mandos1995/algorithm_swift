import Foundation

let n = Double(readLine()!)!
let votes = readLine()!.split(separator: " ").map { Int($0)! }
let approvedCount = votes.filter { $0 == 1 }.count
let rejectedCount = votes.filter { $0 == -1 }.count
let invalidCount = votes.filter { $0 == 0 }.count

if invalidCount >= Int(ceil(n / 2)) {
    print("INVALID")
} else if approvedCount > rejectedCount {
    print("APPROVED")
} else {
    print("REJECTED")
}
