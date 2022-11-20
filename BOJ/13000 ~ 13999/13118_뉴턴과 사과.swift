let people = readLine()!.split(separator: " ").map { Int($0)! }
let input = readLine()!.split(separator: " ").map { Int($0)! }
let x = input[0]
var idx = 0
for (index, person) in people.enumerated() {
    if person == x {
        idx = index + 1
        break
    }
}
print(idx)
