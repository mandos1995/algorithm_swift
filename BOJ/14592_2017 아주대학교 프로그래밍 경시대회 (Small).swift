var info: [[Int]] = []
for i in 0..<Int(readLine()!)! {
    info.append([i] + readLine()!.split(separator: " ").map { Int($0)! })
}

info.sort { ($0[1] == $1[1] && $0[2] == $1[2]) ? $0[3] < $1[3] : ($0[1] == $1[1]) ? $0[2] < $1[2] : $0[1] > $1[1] }
print(info[0][0] + 1)
