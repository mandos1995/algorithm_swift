let input = readLine()!.split(separator: " ").map { Int($0)! }
let e = input[0]
let s = input[1]
let m = input[2]
var i = 0
while true {
    i += 1
    var new_e = i % 15
    if new_e == 0 {
        new_e = 15
    }
    var new_s = i % 28
    if new_s == 0 {
        new_s = 28
    }
    var new_m = i % 19
    if new_m == 0 {
        new_m = 19
    }
    if new_e == e && new_s == s && new_m == m {
        break
    }
}
print(i)
