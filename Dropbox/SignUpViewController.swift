//
//  SignUpViewController.swift
//  Dropbox
//
//  Created by Mudit Mittal on 2/6/16.
//  Copyright © 2016 Mudit Mittal. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!

    func keyboardWillShow(notification: NSNotification!) {
        
    }
    
    func keyboardWillHide(notification: NSNotification!) {
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        self.nameField.becomeFirstResponder()
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillShow:", name: UIKeyboardWillShowNotification, object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillHide:", name: UIKeyboardWillHideNotification, object: nil)
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onButton(sender: UIButton) {
        dismissViewControllerAnimated(true, completion: nil)
    }

    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
