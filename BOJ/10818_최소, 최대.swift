let n = Int(readLine()!)!
// let input = readLine()!.split(separator: " ").map { Int($0)! }
// 시간 초과, Substring에서 Int로 바로 형변환하는 것 보다
// Substring -> String -> Int 로 형변환 하는것이 더 빠름
let input = readLine()!.split(separator: " ").map { Int(String($0))! }
print(input.min()!, input.max()!)
