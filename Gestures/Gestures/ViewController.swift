//
//  ViewController.swift
//  Gestures
//
//  Created by Guilherme Strutzki on 22/07/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var viewRef: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.handlerTap(_:)))
        
        let longPress = UILongPressGestureRecognizer(target: self, action: #selector(self.handleLongPress(_:)))
        
        let swipeGesture = UISwipeGestureRecognizer(target: self, action: #selector(self.handleSwipe(_:)))
        
        swipeGesture.direction = .left
                
        self.viewRef.addGestureRecognizer(tap)
        self.viewRef.addGestureRecognizer(longPress)
        self.viewRef.addGestureRecognizer(swipeGesture)
        
    }
    
    @objc func handlerTap(_ sender: UITapGestureRecognizer) {
        print("handleTap")
    }
    
    @objc func handleLongPress(_ sender: UILongPressGestureRecognizer) {
        if sender.state == .ended {
            print("handle longPress")
        }
        
    }
    
    @objc func handleSwipe(_ sender: UISwipeGestureRecognizer) {
        print("swipe")
    }

    @IBAction func tapGestureAction(_ sender: Any) {
        print("tap gesture")
    }
    
    @IBAction func swipeGestureAction(_ sender: Any) {
        print("swipe gesture")
    }
    
    @IBAction func longPressGestureAction(_ sender: Any) {
        print("tap longPress gesture")
    }
    
}

