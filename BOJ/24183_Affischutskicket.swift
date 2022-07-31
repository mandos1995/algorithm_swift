let input = readLine()!.split(separator: " ").map { Double($0)! }
let c4 = input[0], a3 = input[1], a4 = input[2]
let envelop = 229 * 324 * c4 * 2
let poster = 297 * 420 * a3 * 2
let sheet = 210 * 297 * a4

print((envelop + poster + sheet) * 0.000001)
