func getDivisor(n: Int) -> [Int] {
    var answer: [Int] = []
    for i in 1...n {
        if n % i == 0 {
            answer.append(i)
        }
    }
    return answer
}

let input = readLine()!.split(separator: " ").map { Int($0)! }
let p = getDivisor(n: input[0]), q = getDivisor(n: input[1])

for p in p {
    for q in q {
        print(p, q)
    }
}
