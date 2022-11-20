let n = Int(readLine()!)!

for _ in 0..<n {
    let input = readLine()!
    if input == "P=NP" {
        print("skipped")
    } else {
        let problem = input.split(separator: "+").map { Int($0)! }
        print(problem.reduce(0, +))
    }
}
