while let n = Int(readLine()!) {
    if n == -1 {
        break
    } else {
        var arr = [Int]()
        for i in 1..<n {
            if n % i == 0 {
                arr.append(i)
            }
        }
        if n == arr.reduce(0, +) {
            print("\(n) = ",terminator: "")
            for i in 0..<arr.count {
                if arr[i] == arr[arr.count - 1] {
                    print(arr[i])
                } else {
                    print("\(arr[i]) + ",terminator: "")
                }
            }
        } else {
            print("\(n) is NOT perfect.")
        }
    }
}
