let input = readLine()!.split(separator: " ").map { Int($0)! }
var firstImg = [String]()
var secondImg = [String]()
var result = [String](repeating: "", count: input[0])
var resultBool = false

for _ in 0..<input[0] {
    firstImg.append(readLine()!)
}

for _ in 0..<input[0] {
    secondImg.append(readLine()!)
}

for i in 0..<input[0] {
    for chr in firstImg[i] {
        result[i] += (String(chr) + String(chr))
    }
}

for i in 0..<input[0] {
    if result[i] == secondImg[i] {
        resultBool = true
    } else {
        resultBool = false
        break
    }
}

if resultBool {
    print("Eyfa")
} else {
    print("Not Eyfa")
}
