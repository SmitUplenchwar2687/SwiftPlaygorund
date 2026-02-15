import Foundation

final class Blob {
    let data: [UInt8]
    init(size: Int) {
        data = Array(repeating: 1, count: size)
    }
}

func churn() {
    var arr: [Blob] = []
    for i in 0..<5000{
        arr.append(Blob(size: 10_000))
        if i % 200 == 0 {
            usleep(10_000)
        }
    }
    print(arr.count)
}


//churn()


