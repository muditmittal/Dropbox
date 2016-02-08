//
//  FileDetailViewController.swift
//  Dropbox
//
//  Created by Mudit Mittal on 2/7/16.
//  Copyright © 2016 Mudit Mittal. All rights reserved.
//

import UIKit

class FileDetailViewController: UIViewController {

    let favorites = NSUserDefaults.standardUserDefaults()

    @IBAction func onButton(sender: UIButton) {

        if (sender.selected == true)
        {
            sender.selected = false
            favorites.setBool(false, forKey: "favorited")
            favorites.synchronize()
        } else{
            sender.selected = true
            favorites.setBool(true, forKey: "favorited")
            favorites.synchronize()
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
