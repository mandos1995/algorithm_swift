func move(start: String, to: String) {
    print("\(start) \(to)")
}

func hanoi(n : Int, start: String, to: String, via: String) {
    if n == 1 {
        move(start: start, to: to)
    }
    else {
        hanoi(n: n - 1, start: start, to: via, via: to)
        move(start: start, to: to)
        hanoi(n: n - 1, start: via, to: to, via: start)
    }
}

func pow(n: Int) -> Int {
    var result = 1
    for _ in 0..<n {
        result = 2 * result
    }
    return result
}

let n = Int(readLine()!)!

print(pow(n: n) - 1)
hanoi(n: n, start: "1", to: "3", via: "2")
