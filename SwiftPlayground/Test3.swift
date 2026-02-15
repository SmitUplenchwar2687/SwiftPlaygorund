
import Foundation

final class LeakyTimer {
    var tick: (() -> Void)?
    init() {
        tick = {
            print("tick \(self)")
        }
    }
    deinit{
        print("leakytimer deinit")
    }
}


func closerLeakDemo() {
    let t = LeakyTimer()
    t.tick?()
    print("end closer function")
}




