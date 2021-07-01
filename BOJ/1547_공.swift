var cup = [1, 2, 3]
let n = Int(readLine()!)!

for _ in 0..<n{
    let input = readLine()!.split(separator: " ").map{ Int($0)! }
    let first = cup.firstIndex(of: input[0])!
    let second = cup.firstIndex(of: input[1])!
    let empty = cup[first]
    cup[first] = cup[second]
    cup[second] = empty
    print(cup)
}
print(cup[0])
