func solution() {
    let input = readLine()!.split(separator: " ").map { String($0) }
    let word1 = input[0].map { $0 }
    let word2 = input[1].map { $0 }
    var distance: [Int] = []
    for i in 0..<word1.count {
        let x = Int(word1[i].asciiValue!)
        let y = Int(word2[i].asciiValue!)
        if y >= x {
            distance.append(y - x)
        } else {
            distance.append((y + 26) - x)
        }
    }
    print("Distances: ",terminator: "")
    distance.forEach {
        print($0,terminator: " ")
    }
    print()
}

for _ in 0..<Int(readLine()!)! {
    solution()
}
