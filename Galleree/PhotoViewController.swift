//
//  PhotoViewController.swift
//  Galleree
//
//  Created by Diana Lim on 7/21/16.
//  Copyright © 2016 Natalie Lim. All rights reserved.
//

import UIKit

class PhotoViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet weak var imageVIew: UIImageView!
    let imagePicker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        imagePicker.delegate = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Capture Image
    
    @IBAction func butLibraryAction(sender: AnyObject) {
        imagePicker.allowsEditing = false
        imagePicker.sourceType = .PhotoLibrary
        
        imagePicker.modalPresentationStyle = UIModalPresentationStyle.Popover
        imagePicker.popoverPresentationController?.sourceView = imageVIew
        self.presentViewController(imagePicker, animated: true, completion: nil)
    }
    
    // Mark: - Update Image View
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        if let pickedImage = info[UIImagePickerControllerOriginalImage] as? UIImage{
            imageVIew.contentMode = .ScaleAspectFit
            imageVIew.image = pickedImage
        }
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    /////////////////////////
    
    typealias PhotoTakingHelperCallback = UIImage? -> Void
    
    class PhotoTakingHelper : NSObject {
        
        // View controller on which AlertViewController and UIImagePickerController are presented
        weak var viewController: UIViewController!
        var callback: PhotoTakingHelperCallback
        var imagePickerController: UIImagePickerController?
        
        init(viewController: UIViewController, callback: PhotoTakingHelperCallback) {
            self.viewController = viewController
            self.callback = callback
            
            super.init()
            
            showPhotoSourceSelection()
        }
        
        func showPhotoSourceSelection() {
            // Allow user to choose between photo library and camera
            let alertController = UIAlertController(title: nil, message: "Where do you want to get your picture from?", preferredStyle: .ActionSheet)
            
            let cancelAction = UIAlertAction(title: "Cancel", style: .Cancel, handler: nil)
            alertController.addAction(cancelAction)
            
            let photoLibraryAction = UIAlertAction(title: "Photo from Library", style: .Default) { (action) in
                self.showImagePickerController(.PhotoLibrary) // do nothing yet...
            }
            
            alertController.addAction(photoLibraryAction)
            
            // Only show camera option if rear camera is available
            
            if (UIImagePickerController.isCameraDeviceAvailable(.Rear)) {
                let cameraAction = UIAlertAction(title: "Photo from Camera", style: .Default) { (action) in
                    self.showImagePickerController(.Camera) // do nothing yet...
                }
                
                alertController.addAction(cameraAction)
            }
            
            viewController.presentViewController(alertController, animated: true, completion: nil)
        }
        
        
        func showImagePickerController(sourceType: UIImagePickerControllerSourceType) {
            imagePickerController = UIImagePickerController()
            imagePickerController!.sourceType = sourceType
           // imagePickerController!.delegate = self
            
            self.viewController.presentViewController(imagePickerController!, animated: true, completion: nil)
        }
    }

}
  /*  extension PhotoTakingHelper: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
        
        func imagePickerController(picker: UIImagePickerController, didFinishPickingImage image: UIImage!, editingInfo: [NSObject : AnyObject]!) {
            viewController.dismissViewControllerAnimated(false, completion: nil)
            
            callback(image)
        }
        
        func imagePickerControllerDidCancel(picker: UIImagePickerController) {
            viewController.dismissViewControllerAnimated(true, completion: nil)
        }
} */