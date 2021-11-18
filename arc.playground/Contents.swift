import UIKit

class User {
    let name: String
    private(set) var phones: [Phone] = []
    
    init(name: String) {
        self.name = name
        print("User \(name) was initialized")
    }
    
    func add(phone: Phone) {
        phones.append(phone)
        phone.owner = self
    }
    
    deinit {
        print("Deallocating user named: \(name)")
    }
}

class Phone {
    let model: String
    unowned var owner: User
    
    init(model: String, user: User) {
        self.model = model
        self.owner = user
        print("Phone \(model) was initialized")
    }
    
    deinit {
        print("Deallocating phone named: \(model)")
    }
}

class TestViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    func setup() {
        let user = User(name: "Rafael")
        
        let iPhone = Phone(model: "iPhone 13 Pro", user: user)
        let iPhoneMax = Phone(model: "iPhone 13 Pro Max", user: user)
        
        
        
        user.add(phone: iPhone)
        user.add(phone: iPhoneMax)
    }
}

let viewController = TestViewController()
_ = viewController.view
