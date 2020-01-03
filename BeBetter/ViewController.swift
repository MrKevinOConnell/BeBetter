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
        
     func begin()
        {
        UIView.animate(withDuration: 1.0)
            {
            self.bb.transform = CGAffineTransform(scaleX: 2.0, y: 2.0)
                
            }
            UIView.animate(withDuration: 0.5)
                       {
                        self.bb.transform = CGAffineTransform(scaleX: 0.7, y: 0.7)
                           
                       }
             UIView.animate(withDuration: 1.0)
             {
                self.click.alpha = 1.0;
            }
        }
        
    
        begin();
        
}
   
    @IBAction func go(_ sender: Any) {
         performSegue(withIdentifier: "hi", sender: self)
    }
    

}
