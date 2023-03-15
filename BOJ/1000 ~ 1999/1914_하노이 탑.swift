import Foundation

func move(start: String, to: String) {
    print(start, to)
}

func hanoi(n: Int, start: String, to: String, via: String) {
    if n == 1 {
        move(start: start, to: to)
        return
    }
    
    hanoi(n: n - 1, start: start, to: via, via: to)
    move(start: start, to: to)
    hanoi(n: n - 1, start: via, to: to, via: start)
}

let n = Int(readLine()!)!

print(pow(2, n) - 1)

if n <= 20 {
    hanoi(n: n, start: "1", to: "3", via: "2")
}
