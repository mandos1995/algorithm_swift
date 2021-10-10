struct Student {
    let name: String
    let korean: Int
    let english: Int
    let math: Int
    
}

let n = Int(readLine()!)!
var arr: [Student] = []
for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { String($0) }
    let student = Student(name: input[0], korean: Int(input[1])!, english: Int(input[2])!, math: Int(input[3])!)
    arr.append(student)
}
let newArr = arr.sorted { $0.korean == $1.korean ? ($0.english == $1.english ? ($0.math == $1.math ? $0.name < $1.name : $0.math > $1.math) : $0.english < $1.english) : $0.korean > $1.korean}

for i in 0..<n {
    print(newArr[i].name)
}
