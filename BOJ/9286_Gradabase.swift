let n = Int(readLine()!)!
func solution(index: Int) {
    let m = Int(readLine()!)!
    print("Case \(index):")
    for _ in 0..<m {
        let grade = Int(readLine()!)!
        if grade < 6 {
            print(grade + 1)
        }
    }
    
}

for index in 1...n {
    solution(index: index)
}
