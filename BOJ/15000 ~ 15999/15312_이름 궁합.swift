var count = [3, 2, 1, 2, 3, 3, 2, 3, 3, 2, 2, 1, 2, 2, 1, 2, 2, 2, 1, 2, 1, 1, 1, 2, 2, 1]
var alpha = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y" ,"Z"]
let firstName = readLine()!.map { String($0) }
let secondName = readLine()!.map { String($0) }
var newName = ""
for i in 0..<firstName.count {
    newName += firstName[i]
    newName += secondName[i]
}
var array: [Int] = []

for chr in newName {
    array.append(count[alpha.firstIndex(of: String(chr))!])
}
while array.count > 2 {
    var newArray = [Int](repeating: 0, count: array.count - 1)
    for i in 0..<array.count - 1 {
        newArray[i] = (array[i] + array[i + 1]) % 10
    }
    array = newArray
}

print(array.map {String($0)}.reduce("", +))
