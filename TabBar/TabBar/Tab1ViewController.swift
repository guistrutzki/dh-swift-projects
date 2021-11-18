//
//  Tab1ViewController.swift
//  TabBar
//
//  Created by Guilherme Strutzki on 13/07/21.
//

import UIKit

class Tab1ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        print("AzulViewController===viewDidLoad")
        // Do any additional setup after loading the view.
      }
      override func viewDidAppear(_ animated: Bool) {
        print("AzulViewController===viewDidAppear")
      }
      override func viewWillAppear(_ animated: Bool) {
        print("AzulViewController===viewWillAppear")
      }
      override func viewDidDisappear(_ animated: Bool) {
        print("AzulViewController===viewDidDisappear")
      }
}
