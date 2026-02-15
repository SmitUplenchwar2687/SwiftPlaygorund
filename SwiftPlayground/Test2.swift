
import Foundation


var global: Tracked?

final class Tracked {
    let id: Int
    init(_ id: Int){
        self.id = id
        print("init \(id)")
    }
    
    deinit {
        print("deinit \(id)")
    }
}


func scopeDemo() {
    let a = Tracked(1)
    global = a
    print("We have \(a.id)")
}

func start() {
    scopeDemo()
    print("after scopeDemo")
    global = nil
}
