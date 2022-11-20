let input = readLine()!.split(separator: " ").map{ Int($0)! }
let r = input[0]
let c = input[1]
let cctv = input[2]
var x = 0
var y = 0
if r % cctv != 0{
   y = r / cctv + 1
} else {
    y = r / cctv
}

if c % cctv != 0{
    x = c / cctv + 1
} else {
    x = c / cctv
}
print(x * y)
