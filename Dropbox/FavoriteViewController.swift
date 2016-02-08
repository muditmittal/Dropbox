//
//  FavoriteViewController.swift
//  Dropbox
//
//  Created by Mudit Mittal on 2/7/16.
//  Copyright © 2016 Mudit Mittal. All rights reserved.
//

import UIKit

class FavoriteViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    var favState :Bool = false

    override func viewDidLoad() {
        super.viewDidLoad()

        favState = NSUserDefaults.standardUserDefaults().boolForKey("favorited")
        if (favState == true){
            imageView.image = UIImage(named: "existing_favorites")
        }else{
            imageView.image = UIImage(named: "empty_favorites")
        }
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
