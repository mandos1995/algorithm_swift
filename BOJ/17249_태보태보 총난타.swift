import Foundation
let teabo = readLine()!.split(separator: "0")
print(teabo[0].filter { $0 == "@"}.count, teabo[1].filter { $0 == "@"}.count)
