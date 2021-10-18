let n = Int(readLine()!)!
let array = readLine()!.split(separator: " ").map { Int(String($0))! }
let sortArray = array.sorted()
var sumArray = [Int]()
for i in 0..<n {
    sumArray.append(sortArray[i] + sortArray[2 * n - i - 1])
}
print(sumArray.min()!)
