var cache = [(Int, Int)](repeating: (0, 0), count: 41)
cache[0] = (1, 0)
cache[1] = (0, 1)

for i in 2...40 {
    cache[i] = (cache[i - 2].0 + cache[i - 1].0, cache[i - 2].1 + cache[i - 1].1)
}

for _ in 0..<Int(readLine()!)! {
    let n = Int(readLine()!)!
    print(cache[n].0, cache[n].1)
}
