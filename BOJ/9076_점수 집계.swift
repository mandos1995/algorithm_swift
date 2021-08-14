let n = Int(readLine()!)!

for _ in 0..<n {
    var input = readLine()!.split(separator: " ").map { Int($0)! }
    input.remove(at: input.firstIndex(of: input.max()!)!)
    input.remove(at: input.firstIndex(of: input.min()!)!)
    if input.max()! - input.min()! >= 4 {
        print("KIN")
    } else {
        print(input.reduce(0, +))
    }
}
