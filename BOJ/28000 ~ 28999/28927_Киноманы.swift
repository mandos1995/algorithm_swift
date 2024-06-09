let i1 = readLine()!.split{$0 == " "}.map { Int($0)! }
let i2 = readLine()!.split{$0 == " "}.map { Int($0)! }
let t1 = i1[0], e1 = i1[1], f1 = i1[2]
let t2 = i2[0], e2 = i2[1], f2 = i2[2]
let total1 = t1 * 3 + e1 * 20 + f1 * 120
let total2 = t2 * 3 + e2 * 20 + f2 * 120

print(total1 == total2 ? "Draw" : total1 > total2 ? "Max" : "Mel")
