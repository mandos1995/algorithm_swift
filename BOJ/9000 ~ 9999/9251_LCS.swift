let string1 = ["0"] + readLine()!.map { String($0) }
let string2 = ["1"] + readLine()!.map { String($0) }

var cache = [[Int]](repeating: [Int](repeating: 0, count: string2.count), count: string1.count)

for i in 1..<string1.count {
    for j in 1..<string2.count {
        if string1[i] == string2[j] {
            cache[i][j] = cache[i - 1][j - 1] + 1
            continue
        }
        
        if string1[i] != string2[j] {
            cache[i][j] = max(cache[i - 1][j], cache[i][j - 1])
            continue
        }
    }
}

print(cache.flatMap { $0 }.max()!)
