import Foundation
let input = readLine()!.components(separatedBy: " : ").map { Int($0)! }
let input2 = readLine()!.components(separatedBy: " : ").map { Int($0)! }
let start_hour = input[0]
let start_min = input[1]
let start_sec = input[2]

let end_hour = input2[0]
let end_min = input2[1]
let end_sec = input2[2]

var start_time = start_hour * 3600 + start_min * 60 + start_sec
var end_time = end_hour * 3600 + end_min * 60 + end_sec
if end_time < start_time {
    end_time = (end_hour + 24) * 3600 + end_min * 60 + end_sec
}
print(end_time - start_time)
