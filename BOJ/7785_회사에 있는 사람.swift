let t = Int(readLine()!)!
var people = [String: Bool]()
for _ in 0..<t {
    let input = readLine()!.split(separator: " ").map { String($0) }
    if input[1] == "enter" {
        people[input[0]] = true
    } else {
        people[input[0]] = false
    }
}

var resultArray = [String]()

for (key, value) in people {
    if value {
        resultArray.append(key)
    }
}

resultArray.sort(by: >)

for result in resultArray {
    print(result)
}
