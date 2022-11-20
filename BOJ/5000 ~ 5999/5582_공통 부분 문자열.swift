let string1 = ["0"] + readLine()!.map { $0 }
let string2 = ["1"] + readLine()!.map { $0 }

var cache = [[Int]](repeating: [Int](repeating: 0, count: string1.count), count: string2.count)

var answer = 0
for i in 1..<string2.count {
    for j in 1..<string1.count {
        if string2[i] == string1[j] {
            cache[i][j] = cache[i - 1][j - 1] + 1
            answer = max(answer, cache[i][j])
        }
    }
}

print(answer)
