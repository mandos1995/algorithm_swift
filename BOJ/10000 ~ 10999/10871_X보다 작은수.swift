import Foundation
let input = readLine()!.components(separatedBy: " ")
let n = Int(input[0])!
let x = Int(input[1])!
var array = readLine()!.components(separatedBy: " ").map {Int($0)!}
for i in 0..<array.count{
    if array[i] < x {
        print(array[i],terminator: " ")
    }
}
