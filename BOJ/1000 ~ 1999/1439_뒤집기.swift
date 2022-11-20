import Foundation
let input = readLine()!
let allZero = String(repeating: "0", count: input.count)
let allOne = String(repeating: "1", count: input.count)
var save = ""
var zeroCount = 0
var oneCount = 0
var j = 0
for i in input {
    if i == allZero[allZero.index(allZero.startIndex, offsetBy: j)] {
        save = String(i)
    } else {
        if save == String(i) {
            continue
        } else {
            zeroCount += 1
        }
        save = String(i)
    }
    j += 1
}
j = 0
save = ""
for i in input {
    if i == allOne[allOne.index(allOne.startIndex, offsetBy: j)] {
        save = String(i)
    } else {
        if save == String(i) {
            continue
        } else {
            oneCount += 1
        }
        save = String(i)
    }
    j += 1
}
print(min(oneCount,zeroCount))
