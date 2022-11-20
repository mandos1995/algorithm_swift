var array = [Int]()
for _ in 0..<10{
    let num = Int(readLine()!)!
    array.append(num % 42)
}
var setArray = Set(array)
print(setArray.count)
