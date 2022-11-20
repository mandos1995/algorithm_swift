let targetHeight = Int(readLine()!)!
let baseHeight = Int(readLine()!)!
let addHeight = Int(readLine()!)!

let height = targetHeight - baseHeight

if height <= 0 {
    print(250)
} else {
    height % addHeight == 0 ? print(250 + (height / addHeight) * 100) : print(250 + ((height / addHeight) + 1) * 100)
}
