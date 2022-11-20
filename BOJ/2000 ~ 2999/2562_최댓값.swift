var input = [Int]()
for _ in 0..<9{
    input.append(Int(readLine()!)!)
}
print(input.max()!)
print(input.firstIndex(of: input.max()!)! + 1)
