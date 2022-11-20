let num = Int(readLine()!)!
if num % 2 == 1{
    print("Either")
} else {
    if (num / 2) % 2 == 1{
        print("Odd")
    } else {
        print("Even")
    }
}
