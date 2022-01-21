let n = Int(readLine()!)!

for _ in 0..<n {
    var koong = [Int](repeating: 0, count: 70)
    koong[0] = 1
    koong[1] = 1
    koong[2] = 2
    koong[3] = 4
    let k = Int(readLine()!)!
    if k > 3 {
        for i in 4...k {
            koong[i] = koong[i - 1] + koong[i - 2] + koong[i - 3] + koong[i - 4]
        }
    }
    print(koong[k])
}
