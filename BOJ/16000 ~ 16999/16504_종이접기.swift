let n = Int(readLine()!)!
var paper: [[Int]] = []

for _ in 0..<n {
    paper.append(readLine()!.split(separator: " ").map { Int($0)! })
}

func foldPaper(n : Int) {
    if n == 1 {
        return
    }
    var newPaper = [[Int]](repeating: [Int](repeating: 0, count: 0), count: n)
    for i in 0..<n {
        for j in 0..<n/2 {
            newPaper[i].append(paper[i][j] + paper[i][j + n / 2])
        }
    }
    paper = [[Int]](repeating: [Int](repeating: 0, count: 0), count: n / 2)
    for i in 0..<n / 2 {
        for j in 0..<n / 2 {
            paper[i].append(newPaper[i][j] + newPaper[i + n / 2][j])
        }
    }
    foldPaper(n: n / 2)
}
foldPaper(n: n)
print(paper[0][0])
