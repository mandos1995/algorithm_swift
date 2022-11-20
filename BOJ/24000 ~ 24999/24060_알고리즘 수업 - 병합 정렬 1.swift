let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], k = input[1]
var count = 0
var tmp = [Int](repeating: -1, count: n)
var array = readLine()!.split(separator: " ").map { Int($0)! }
var answer = -1
mergeSort(&array, 0, n - 1)
print(answer)

func mergeSort(_ array: inout [Int], _ p: Int, _ r: Int) {
    if p < r {
        if count > k {
            return
        }
        let q = (p + r) / 2
        mergeSort(&array, p, q)
        mergeSort(&array, q + 1, r)
        merge(&array, p, q, r)
    }
}

func merge(_ array: inout [Int], _ p: Int, _ q: Int, _ r: Int) {
    var i = p
    var j = q + 1
    var t = 0
    
    while i <= q && j <= r {
        if array[i] <= array[j] {
            tmp[t] = array[i]
            i += 1
        } else {
            tmp[t] = array[j]
            j += 1
        }
        t += 1
    }
    
    while i <= q {
        tmp[t] = array[i]
        i += 1
        t += 1
    }
    
    while j <= r {
        tmp[t] = array[j]
        j += 1
        t += 1
    }
    
    i = p; t = 0
    
    while i <= r {
        count += 1
        if count == k {
            answer = tmp[t]
            break
        }
        array[i] = tmp[t]
        i += 1; t += 1
    }
}
