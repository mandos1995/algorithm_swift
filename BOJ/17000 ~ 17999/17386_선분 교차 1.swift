func CCW(_ x1: Double, _ y1: Double, _ x2: Double, _ y2: Double, _ x3: Double, _ y3: Double) -> Int {
    let result = (x1 * y2 + x2 * y3 + x3 * y1) - (y1 * x2 + y2 * x3 + y3 * x1)
    return result == 0 ? 0 : result > 0 ? 1 : -1
}

let L1 = readLine()!.split(separator: " ").map { Double($0)! }
let L2 = readLine()!.split(separator: " ").map { Double($0)! }

let x = [L1[0], L1[2], L2[0], L2[2]]
let y = [L1[1], L1[3], L2[1], L2[3]]

if CCW(x[0], y[0], x[1], y[1], x[2], y[2]) * CCW(x[0], y[0], x[1], y[1], x[3], y[3]) <= 0 &&
    CCW(x[2], y[2], x[3], y[3], x[0], y[0]) * CCW(x[2], y[2], x[3], y[3], x[1], y[1]) <= 0 {
    print(1)
} else { print(0) }
