
import UIKit

class ViewA: UIView {
}

class ViewB: UIView {
}

protocol ViewController: class {
    associatedtype View: UIView
    var view: View { get }
}

class ViewControllerA: ViewController {
    var view: ViewA {
        get {
            return ViewA()
        }
    }
}

class ViewControllerB: ViewController {
    var view: ViewB {
        get {
            return ViewB()
        }
    }
}


let viewControllerA = ViewControllerA()
type(of: viewControllerA.view)

let viewControllerB = ViewControllerB()
type(of: viewControllerB.view)
