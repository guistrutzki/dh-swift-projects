//
//  ViewController.swift
//  camera-app
//
//  Created by Guilherme Strutzki on 17/08/21.
//

import UIKit
import PhotosUI

class ViewController: UIViewController {

    @IBOutlet weak var myImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }
    
    func showUI(for status: PHAuthorizationStatus) {
        
        switch status {
        case .authorized:
            showFullAccessUI()

        case .notDetermined:
            break

        @unknown default:
            break
        }
    }
    
    func showFullAccessUI() {
        let photoCount = PHAsset.fetchAssets(with: nil).count
    }
    
    @IBAction func tappedButton(_ sender: Any) {
        let alert = UIAlertController(title: "", message: "", preferredStyle: .actionSheet)

        alert.addAction(UIAlertAction(title: "Camera", style: .default, handler: { action in
            print("camera")
            self.getImage(fromSourceType: .camera)
            
            // implementar metodo para imagem
        }))
        
        alert.addAction(UIAlertAction(title: "Photo Album", style: .default, handler: { action in
            
            PHPhotoLibrary.requestAuthorization(for: .readWrite) { [unowned self] (status) in
                DispatchQueue.main.async { [unowned self] in
                    showUI(for: status)
                }
            }
            
            self.getImage(fromSourceType: .photoLibrary)
            // implementar metodo para photo album
        }))
        
        alert.addAction(UIAlertAction(title: "Cancelar", style: .default, handler: { action in
            print("Cancelar")
            // implementar método para fechar
        }))
        
        self.present(alert, animated: true, completion: nil)
    }
    
   
    func getImage(fromSourceType: UIImagePickerController.SourceType) {
        if UIImagePickerController.isSourceTypeAvailable(fromSourceType) {
            let imagePickerController = UIImagePickerController()
            imagePickerController.delegate = self
            imagePickerController.sourceType = fromSourceType
            
            self.present(imagePickerController, animated: true, completion: nil)
        }
    }

}

extension ViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        let image: UIImage? = info[UIImagePickerController.InfoKey.originalImage] as? UIImage
        
        if let _image = image {
            self.myImageView.image = _image
        }
        
        self.dismiss(animated: true, completion: nil)
    }
}
