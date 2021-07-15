let input = String(readLine()!)
let endIdx = input.endIndex
var stringArray: [String] = []
for i in 0..<input.count{
    let startIdx = input.index(input.startIndex, offsetBy: i)
    stringArray.append(String(input[startIdx..<endIdx]))
}
stringArray.sort()
for i in stringArray{
    print(i)
}
