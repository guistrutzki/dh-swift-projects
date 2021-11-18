import UIKit

class CustomTabViewController: UIViewController {
    private var arrayAnimais:[Animal] = []
    
    @IBOutlet weak var customTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        self.arrayAnimais = [
            Animal(nome: "", comportamento: "", imageName: "animal1", imageNameBackground: "plano1"),
            Animal(nome: "", comportamento: "", imageName: "animal2", imageNameBackground: "plano2"),
            Animal(nome: "", comportamento: "", imageName: "animal3", imageNameBackground: "plano3"),
            Animal(nome: "", comportamento: "", imageName: "animal4", imageNameBackground: "plano4"),
            Animal(nome: "", comportamento: "", imageName: "animal5", imageNameBackground: "plano5"),
            Animal(nome: "", comportamento: "", imageName: "animal6", imageNameBackground: "plano6"),
            Animal(nome: "", comportamento: "", imageName: "animal7", imageNameBackground: "plano7"),
            Animal(nome: "", comportamento: "", imageName: "animal8", imageNameBackground: "plano8"),
            Animal(nome: "", comportamento: "", imageName: "animal9", imageNameBackground: "plano9"),
            Animal(nome: "", comportamento: "", imageName: "animal10", imageNameBackground: "plano10"),
            Animal(nome: "", comportamento: "", imageName: "animal11", imageNameBackground: "plano11"),
            Animal(nome: "", comportamento: "", imageName: "animal12", imageNameBackground: "plano12"),
            Animal(nome: "", comportamento: "", imageName: "animal13", imageNameBackground: "plano13"),
            Animal(nome: "", comportamento: "", imageName: "animal14", imageNameBackground: "plano14"),
            Animal(nome: "", comportamento: "", imageName: "animal15", imageNameBackground: "plano15"),
            Animal(nome: "", comportamento: "", imageName: "animal16", imageNameBackground: "plano16"),
            Animal(nome: "", comportamento: "", imageName: "animal17", imageNameBackground: "plano17"),
            Animal(nome: "", comportamento: "", imageName: "animal18", imageNameBackground:"plano18")]
        
        
        self.customTableView.register(UINib(nibName: "HorizontalTableViewCell", bundle: nil), forCellReuseIdentifier: "HorizontalTableViewCell")
        self.customTableView.register(UINib(nibName: "LargeCardTableViewCell", bundle: nil), forCellReuseIdentifier: "LargeCardTableViewCell")
        self.customTableView.register(UINib(nibName: "CardTableViewCell", bundle: nil), forCellReuseIdentifier: "CardTableViewCell")
        
        self.customTableView.dataSource = self
        self.customTableView.delegate = self
    }
}

extension CustomTabViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if section == 0 {
            return 1
        }
        return self.arrayAnimais.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.section == 0 {
            
            let cell: HorizontalTableViewCell? = tableView.dequeueReusableCell(withIdentifier: "HorizontalTableViewCell", for: indexPath) as? HorizontalTableViewCell
            
            cell?.delegate = self
            cell?.setup(value: self.arrayAnimais)
            
            return cell ?? UITableViewCell()
        }else {
            
            if indexPath.row % 2 == 0 {
                let cell: LargeCardTableViewCell? = tableView.dequeueReusableCell(withIdentifier: "LargeCardTableViewCell", for: indexPath) as? LargeCardTableViewCell
                
                cell?.setup(value: self.arrayAnimais[indexPath.row])
                
                return cell ?? UITableViewCell()
            } else {
                let cell: CardTableViewCell? = tableView.dequeueReusableCell(withIdentifier: "CardTableViewCell", for: indexPath) as? CardTableViewCell
                
                cell?.setup(value: self.arrayAnimais[indexPath.row])
                
                return cell ?? UITableViewCell()
            }
        }

    }
    
}


extension CustomTabViewController: HorizontalTableViewCellProtocol {
    
    func didSelectAnimal(value: Animal) {
 
        print("ViewController=====HorizontalTableViewCellProtocol=======didSelectAnimal\n \(value)")
    }

}
