let n = Int(readLine()!)!
var array = [Int](0...n)
while array.count > 2 {
    for i in 0..<array.count {
        if i % 2 == 1 {
            array[i] = -1
        }
    }
    array = array.filter { $0 != -1 }
}
print(array[1])
