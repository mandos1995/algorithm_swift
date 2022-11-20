var people = [Int]()

for _ in 0..<9 {
    people.append(Int(readLine()!)!)
}
var sum = people.reduce(0, +)
var liar1 = 0, liar2 = 0
for i in 0..<9 {
    for j in i + 1..<9 {
        sum -= people[i] + people[j]
        if sum == 100 {
            liar1 = i
            liar2 = j
            break
        } else {
            sum = people.reduce(0, +)
        }
    }
}
for i in 0..<people.count {
    if i == liar1 || i == liar2 {
        continue
    } else {
        print(people[i])
    }
}
