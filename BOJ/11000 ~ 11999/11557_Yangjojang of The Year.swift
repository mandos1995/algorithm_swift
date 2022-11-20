let t = Int(readLine()!)!
var school: [String] = []
var max = 0
var idx = 0
for _ in 0..<t {
    let n = Int(readLine()!)!
    for i in 0..<n {
        let input = readLine()!.split(separator: " ")
        school.append(String(input[0]))
        if max < Int(input[1])! {
            max = Int(input[1])!
            idx = i
        }
    }
    print(school[idx])
    max = 0
    idx = 0
    school.removeAll()
}
