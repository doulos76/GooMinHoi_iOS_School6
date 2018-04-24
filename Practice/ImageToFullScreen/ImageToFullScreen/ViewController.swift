//
//  ViewController.swift
//  ImageToFullScreen
//
//  Created by dave on 24/04/2018.
//  Copyright © 2018 dave. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var tappedGesture: UIGestureRecognizer!
    @IBOutlet weak var previewImageView: UIImageView?
    
    var hasImageView: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        previewImageView?.isUserInteractionEnabled = true
        tappedGesture.delegate = self
    }

    @IBAction func addImageButton(_ sender: UIButton) {
        if hasImageView == false {
            let picker = UIImagePickerController()
            picker.delegate = self
            picker.allowsEditing = true
            self.present(picker, animated: true, completion: nil)
        } else {
            deleteImageView()
        }
    }
    
    func deleteImageView() {
        let alert = UIAlertController(title: nil, message: "사진을 지우시겠습니까?", preferredStyle: .actionSheet)
        let deleteAction = UIAlertAction(title: "지움", style: .default) { (_) in
            self.hasImageView = false
            self.previewImageView?.image = nil
        }
        let cancel = UIAlertAction(title: "취소", style: .cancel, handler: nil)
        alert.addAction(deleteAction)
        alert.addAction(cancel)
        self.present(alert, animated: false, completion: nil)
    }
}

extension ViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        let pickedImage = info[UIImagePickerControllerEditedImage] as? UIImage
        previewImageView?.image = pickedImage
        hasImageView = true
        picker.dismiss(animated: true, completion: nil)
    }
}

extension ViewController: UIGestureRecognizerDelegate {
    func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldReceive touch: UITouch) -> Bool {
        print("tapped")
        let fullImageView = UIImageView()
        fullImageView.frame = CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.height)
        fullImageView.image = previewImageView?.image
        fullImageView.contentMode = .scaleAspectFill
        fullImageView.isUserInteractionEnabled = true
        let tap = UITapGestureRecognizer(target: self, action: #selector(dismissFullScreenImage(_:)))
        fullImageView.addGestureRecognizer(tap)
        self.view.addSubview(fullImageView)
        return true
    }
    
    @objc func dismissFullScreenImage(_ sender: UIGestureRecognizer) {
        sender.view?.removeFromSuperview()
    }
}
