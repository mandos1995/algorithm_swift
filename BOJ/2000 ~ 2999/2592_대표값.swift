var dictionary = [Int: Int]()
var temp = [Int](repeating: 0, count: 10)
for index in 0..<10 {
    let input = Int(readLine()!)!
    if let count = dictionary[input] {
        dictionary[input] = count+1
    }
    else {
        dictionary[input] = 1
    }
    temp[index] = input
}
print(temp.reduce(0, +) / 10)
print(dictionary.max { $0.value < $1.value }!.key)
