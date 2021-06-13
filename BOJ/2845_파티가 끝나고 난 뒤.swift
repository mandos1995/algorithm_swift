import Foundation
let input = readLine()!.split(separator: " ").map{ Int($0)! }
let people = input[0] * input[1]
var paper = readLine()!.split(separator: " ").map{ Int($0)! }
for i in 0..<paper.count{
    paper[i] -= people
}
for i in 0..<paper.count{
    print(paper[i], terminator: " ")
}
