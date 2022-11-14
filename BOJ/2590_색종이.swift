var paper: [Int] = [0]
for _ in 0..<6 {
    paper.append(Int(readLine()!)!)
}

var answer = 0

while paper.reduce(0, +) > 0 {
    answer += paper[6]
    paper[6] = 0
    
    while paper[5] > 0 {
        var area = 36
        area -= 25
        paper[5] -= 1
        if paper[1] <= area {
            paper[1] = 0
        } else {
            paper[1] -= area
        }
        answer += 1
    }
    
    while paper[4] > 0 {
        var area = 36
        area -= 16
        paper[4] -= 1
        if paper[2] > 5 {
            paper[2] -= 5
            area -= 20
        } else {
            area -= 4 * paper[2]
            paper[2] = 0
        }
        if paper[1] <= area {
            paper[1] = 0
        } else {
            paper[1] -= area
        }
        answer += 1
    }
    
    while paper[3] > 0 {
        var area = 36
        if paper[3] > 4 {
            paper[3] -= 4
            area = 0
        } else {
            area -= paper[3] * 9
            paper[3] = 0
        }
        if area == 27 && paper[2] > 5 {
            paper[2] -= 5
            area -= 20
        } else if area == 27 && paper[2] <= 5 {
            area -= paper[2] * 4
            paper[2] = 0
        }
        if area == 18 && paper[2] > 3 {
            paper[2] -= 3
            area -= 12
        } else if area == 18 && paper[2] <= 3 {
            area -= paper[2] * 4
            paper[2] = 0
        }
        if area == 9 && paper[2] >= 1 {
            area -= 4 * paper[2]
            paper[2] = 0
        }
        if paper[1] <= area {
            paper[1] = 0
        } else {
            paper[1] -= area
        }
        answer += 1
    }
    
    while paper[2] > 0 {
        var area = 36
        if paper[2] > 9 {
            paper[2] -= 9
            area = 0
        } else {
            area -= paper[2] * 4
            paper[2] = 0
        }
        if paper[1] <= area {
            paper[1] = 0
        } else {
            paper[1] -= area
        }
        answer += 1
    }
    
    while paper[1] > 0 {
        if paper[1] > 36 {
            paper[1] -= 36
        } else {
            paper[1] = 0
        }
        answer += 1
    }
}
print(answer)
