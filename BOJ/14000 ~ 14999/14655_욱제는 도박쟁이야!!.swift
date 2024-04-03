_ = readLine()
let game1 = readLine()!.split(separator: " ").map { abs(Int($0)!) }.reduce(0, +)
let game2 = readLine()!.split(separator: " ").map { -abs(Int($0)!) }.reduce(0, +)
print(game1 - game2)
