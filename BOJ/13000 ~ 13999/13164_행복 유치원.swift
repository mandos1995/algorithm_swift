let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], k = input[1]
let heights = readLine()!.split(separator: " ").map { Int($0)! }
var diffrents: [Int] = []
for (index, height) in heights.enumerated() {
    if index == 0 {
        continue
    }
    diffrents.append(height - heights[index - 1] )
}
diffrents.sort(by: <)

for _ in 0..<k - 1 {
    diffrents.removeLast()
}
print(diffrents.reduce(0, +))
