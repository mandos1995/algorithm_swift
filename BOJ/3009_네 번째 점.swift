let coordinate1 = readLine()!.split(separator: " ").map { Int($0)! }
let coordinate2 = readLine()!.split(separator: " ").map { Int($0)! }
let coordinate3 = readLine()!.split(separator: " ").map { Int($0)! }
var coordinate4 = [0, 0]
for i in 0..<2 {
    if coordinate1[i] == coordinate2[i] {
        coordinate4[i] = coordinate3[i]
    } else if coordinate1[i] == coordinate3[i] {
        coordinate4[i] = coordinate2[i]
    } else if coordinate2[i] == coordinate3[i] {
        coordinate4[i] = coordinate1[i]
    }
}
print("\(coordinate4[0]) \(coordinate4[1])")
