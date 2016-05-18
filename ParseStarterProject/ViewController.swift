/**
* Copyright (c) 2015-present, Parse, LLC.
* All rights reserved.
*
* This source code is licensed under the BSD-style license found in the
* LICENSE file in the root directory of this source tree. An additional grant
* of patent rights can be found in the PATENTS file in the same directory.
*/

import UIKit
import Parse

class ViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate{
   
    var activityIndicator: UIActivityIndicatorView = UIActivityIndicatorView()
    
    
    
    
    
    
    
    
    
    
    
    @IBOutlet var importedImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
        
        
        
        
       /*
        var product = PFObject(className:"Products")
        product["name"] = "ice cream"
        product["description"] = "tutti fruiti"
        product["price"] = 4.99
        
        product.saveInBackgroundWithBlock{(success, error) -> Void in
            if success == true {
                print("object saved it with ID \(product.objectId)")
            }else {
                print("failed")
                print(error)
            }
            
        }

*/
      /*
        var query = PFQuery(className: "Products")
        
        
        query.getObjectInBackgroundWithId("3Xktx47SoM", block: {(object:PFObject?, error:NSError?)-> Void in
            
            if error != nil {
                print(error)
            }else if let product = object {
                
                product["description"] = "rocky road"
                product["price"] = 5.99
                product.saveInBackground()
                //print(object!.objectForKey("description"))
                
            }
            
        })
*/
    }
    
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingImage image: UIImage, editingInfo: [String : AnyObject]?) {
        print("image selected")
        self.dismissViewControllerAnimated(true, completion: nil)
        
        importedImage.image = image
    }
    @IBAction func importImage(sender: AnyObject) {
        
       var image = UIImagePickerController()
        image.delegate = self
        image.sourceType = UIImagePickerControllerSourceType.PhotoLibrary
        image.allowsEditing = false
        self.presentViewController(image, animated: true, completion: nil)
        
        
        
        
    }

    
    @IBAction func pause(sender: AnyObject) {
        activityIndicator = UIActivityIndicatorView(frame: CGRectMake(0,0,50,50))
        activityIndicator.center = self.view.center
        activityIndicator.hidesWhenStopped = true
        activityIndicator.activityIndicatorViewStyle = UIActivityIndicatorViewStyle.Gray
        view.addSubview(activityIndicator)
        
        activityIndicator.startAnimating()
        UIApplication.sharedApplication().beginIgnoringInteractionEvents()
        
    }
    
    
    @IBAction func restore(sender: AnyObject) {
        activityIndicator.stopAnimating()
        //UIApplication.sharedApplication().endIgnoringInteractionEvents()
        
    }
    
    
    @IBAction func alert(sender: AnyObject) {
        if #available(iOS 8.0, *) {
            var alert = UIAlertController(title: "hey there", message: "are you sure?", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "ok", style: .Default, handler: {(action) -> Void in
                self.dismissViewControllerAnimated(true, completion: nil)
            }))
            self.presentViewController(alert, animated: true, completion: nil)
        } else {
            // Fallback on earlier versions
            
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
