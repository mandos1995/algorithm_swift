_ = readLine()
var problem = 0
while let command = readLine(), command != "고무오리 디버깅 끝" {
    if command == "고무오리" {
        problem = problem < 1 ? 2 : problem - 1
    } else {
        problem += 1
    }
}

print(problem == 0 ? "고무오리야 사랑해" : "힝구")
