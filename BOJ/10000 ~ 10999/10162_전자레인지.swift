var time = Int(readLine()!)!
var a = 300
var b = 60
var c = 10
var cnt = [0, 0, 0]

if time % 10 != 0{
    print(-1)
} else {
    while time != 0{
        if time >= 300{
            time -= a
            cnt[0] += 1
        } else if time >= 60 {
            time -= b
            cnt[1] += 1
        } else if time >= 10 {
            time -= c
            cnt[2] += 1
        }
    }
    for i in 0..<3{
        print(cnt[i], terminator: " ")
    }
}
