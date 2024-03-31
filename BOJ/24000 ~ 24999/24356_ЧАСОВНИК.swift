let input = readLine()!.split(separator: " ").map { Int($0)! }
let t1 = input[0], m1 = input[1], t2 = input[2], m2 = input[3]
var time = (t2 - t1) * 60 + (m2 - m1)
if time < 0 { time += 1440 }
print(time, time / 30)
