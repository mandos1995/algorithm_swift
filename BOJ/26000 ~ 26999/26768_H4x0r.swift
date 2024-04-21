let d=["a":"4","e":"3","i":"1","o":"0","s":"5"]
print(readLine()!.map{d[String($0)] ?? String($0)}.joined())
