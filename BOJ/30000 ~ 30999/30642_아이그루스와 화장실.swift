let n = Int(readLine()!)!
let name = readLine()!
let k = Int(readLine()!)!

if name == "annyong" {
    print(k % 2 == 0 ? k - 1 == 0 ? k + 1 : k - 1 : k)
} else {
    print(k % 2 == 0 ? k : k - 1 == 0 ? k + 1 : k - 1)
}
