//
//  ViewController.swift
//  BeBetter
//
//  Created by Kevin O'Connell on 12/19/19.
//  Copyright © 2019 Kevin O'Connell. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var click: UILabel!
    @IBOutlet var tap: UITapGestureRecognizer!
    @IBOutlet weak var bb: UILabel!
    override func viewDidLoad()
    {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //opening animation
     func begin()
        {
            //for the BeBetter text, starts it at double the size, reduces it to 70% of the original text, then brings it to normal.
        UIView.animate(withDuration: 1.0)
            {
            self.bb.transform = CGAffineTransform(scaleX: 2.0, y: 2.0)
                
            }
            UIView.animate(withDuration: 0.5)
                       {
                        self.bb.transform = CGAffineTransform(scaleX: 0.7, y: 0.7)
                           
                       }
            //brings the opacity of Click anywhere to begin from 0 to 1.
             UIView.animate(withDuration: 1.0)
             {
                self.click.alpha = 1.0;
            }
        }
        
    
        begin();
        
}
   //brings program to firstTime, will change at a later date
    @IBAction func go(_ sender: Any) {
         performSegue(withIdentifier: "hi", sender: self)
    }
    

}
