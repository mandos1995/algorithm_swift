struct Student {
    let country: Int
    let id: Int
    let score: Int
}

let n = Int(readLine()!)!
var students: [Student] = []
var countryDB: [Int: Int] = [:]
var checkCount = 0
for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let country = input[0], id = input[1], score = input[2]
    let student = Student(country: country, id: id, score: score)
    students.append(student)
}

students.sorted { $0.score > $1.score }.forEach { student in
    if checkCount > 2 {
        return
    }
    if countryDB[student.country, default: 0] < 2 {
        print(student.country, student.id)
        countryDB[student.country, default: 0] += 1
        checkCount += 1
    }
}
