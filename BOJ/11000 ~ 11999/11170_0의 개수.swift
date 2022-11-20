let t = Int(readLine()!)!
for _ in 0..<t {
    let input = readLine()!.split(separator: " ").map{ Int(String($0))! }
    let n = input[0]
    let m = input[1]
    var count = 0
    for i in n...m {
        for j in String(i) {
            if j == "0" {
                count += 1
            }
        }
    }
    print(count)
}
