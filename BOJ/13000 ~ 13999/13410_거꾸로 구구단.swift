let input = readLine()!.split(separator: " ").map { Int($0)! }
var numsArray = [String]()
for i in 1...input[1] {
    numsArray.append(String(String(input[0] * i).reversed()))
}

let result = numsArray.map { Int(String($0))! }

print(result.max()!)
