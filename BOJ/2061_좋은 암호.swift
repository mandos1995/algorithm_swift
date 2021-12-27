let input = readLine()!.split(separator: " ").map { String($0) }
let k = input[0], l = Int(input[1]) ?? 0
var array: [Bool] = [Bool](repeating: true, count: l + 1)

for i in 2..<l {
    if array[i] {
        var j = 2
        while i * j <= l {
            array[i * j] = false
            j += 1
        }
    }
}

var primeNumbers: [Int] = []
for i in 2..<array.count - 1 {
    if array[i] {
        primeNumbers.append(i)
    }
}

func primeCheck(p: String, k: Int) -> Bool {
    var remain = 0
    for chr in p {
        remain = (remain * 10 + (Int(String(chr)))!) % k
    }
    return remain == 0 ? true : false
}

var isGood: Bool = true

for i in 0..<primeNumbers.count {
    if primeCheck(p: k, k: primeNumbers[i]) {
        print("BAD \(primeNumbers[i])")
        isGood = false
        break
    }
}

if isGood {
    print("GOOD")
}
