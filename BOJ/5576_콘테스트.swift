var w: [Int] = []
var k: [Int] = []

for _ in 0..<10 {
    w.append(Int(readLine()!)!)
}

for _ in 0..<10 {
    k.append(Int(readLine()!)!)
}

print(w.sorted(by: >)[0...2].reduce(0, +), k.sorted(by: >)[0...2].reduce(0, +))
