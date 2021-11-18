//
//  HomeVC.swift
//  network
//
//  Created by Guilherme Strutzki on 26/08/21.
//

import UIKit
import Alamofire

class HomeVC: UIViewController {

    @IBOutlet weak var memeTableView: UITableView!
    
    var memeList: [Meme] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setup()
        self.getMemesFromAPI()
        
        
    }
    
    func setup() {
        self.memeTableView.delegate = self
        self.memeTableView.dataSource = self
    }
    
    func getMemesFromAPI() {
        AF.request("https://api.imgflip.com/get_memes").responseJSON { response in
            if response.response?.statusCode == 200 {
                if let data = response.data {
                    do {
                        let result: Result? = try JSONDecoder().decode(Result.self, from: data)
                        
                        if let memesList = result?.data.memes {
                            for eachMeme in memesList {
                                let _meme = Meme(
                                    id: eachMeme.id,
                                    name: eachMeme.name,
                                    url: eachMeme.url,
                                    width: eachMeme.width,
                                    height: eachMeme.height,
                                    boxCount: eachMeme.boxCount
                                )
                                
                                self.memeList.append(_meme)
                            }
                            
                            self.memeTableView.reloadData()
                        }
                    } catch {
                        print(error)
                    }
                }
            }
        }
    }
    
}

extension HomeVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return memeList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = memeTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = memeList[indexPath.row].id
        cell.detailTextLabel?.text = memeList[indexPath.row].name
        
        return cell
    }
}
