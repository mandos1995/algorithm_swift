let t = Int(readLine()!)!

for _ in 0..<t {
    var yonsei = 0
    var korea = 0
    for _ in 0..<9 {
        let input = readLine()!.split(separator: " ").map { Int(String($0))! }
        yonsei += input[0]
        korea += input[1]
    }
    if yonsei > korea {
        print("Yonsei")
    } else if korea > yonsei {
        print("Korea")
    } else {
        print("Draw")
    }
}
