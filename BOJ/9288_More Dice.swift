func solution(i: Int) {
    let target = Int(readLine()!)!
    print("Case \(i):")
    for a in 1...6 {
        for b in a...6 {
            if a + b == target {
                print("(\(a),\(b))")
            }
        }
    }
}

let t = Int(readLine()!)!

for i in 1...t {
    solution(i: i)
}
