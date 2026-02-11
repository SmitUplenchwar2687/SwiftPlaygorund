import Foundation


final class Owner {
    let name: String
    var worker: Worker?
    init(name: String) {
        self.name = name
        print("Owner init")
    }
    deinit{
        print("Owner deinit")
    }
}


final class Worker{
    let id: Int
    weak var owner: Owner?
    init(id: Int){
        self.id = id
        print("Worker init")
    }
    deinit{
        print("worker deinit")
    }
}

func leakDemo(){
    let o = Owner(name: "Smit")
    let w = Worker(id: 1)
    o.worker = w
    w.owner = o
    print("End function")
}

@main
struct Main {
    static func main(){
        leakDemo()
        print("end program")
        //start()
    }
}





