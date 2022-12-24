let n = Int(readLine()!)!

for i in 1...n {
    if readLine()!.split(separator: " ").map({ Int($0)! }) == [1, 2, 3, 4, 5, 1, 2, 3, 4, 5] {
        print(i)
    }
}
