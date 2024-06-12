let n = Int(readLine()!)!
var fibo = [Int](repeating: 0, count: 117)
fibo[1] = 1; fibo[2] = 1; fibo[3] = 1;
for i in 4...116 {
    fibo[i] = fibo[i - 3] + fibo[i - 1]
}
print(fibo[n])
