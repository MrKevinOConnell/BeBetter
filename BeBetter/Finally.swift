//
//  Finally.swift
//  BeBetter
//
//  Created by Kevin O'Connell on 12/21/19.
//  Copyright © 2019 Kevin O'Connell. All rights reserved.
//

import UIKit
import AVFoundation;
/*
 get list if user assigns it, if not use default
 grab random element from list
 remove element from list
 set title of button to element
 if activity is household(includes take, eat, brush,meditate, read, etc. segue to camera view controller)
 if not suggest places to go to, then request location to see if there.
 
 */
class Finally: UIViewController
{ //name and age are from setup, stage is if activity's will ever be based on age
    var name = "";
     var age = 0;
    var stage = "";
 
    @IBOutlet weak var button1Out: UIButton!
    @IBOutlet weak var button2Out: UIButton!
    @IBOutlet weak var button3Out: UIButton!
    
  
   
   
    @IBOutlet weak var intro: UILabel!
    override func viewDidLoad() {
        
        super.viewDidLoad()
       button1Out.titleLabel!.adjustsFontSizeToFitWidth = true;
       button2Out.titleLabel!.adjustsFontSizeToFitWidth = true;
       button3Out.titleLabel!.adjustsFontSizeToFitWidth = true;
       intro.text = "\(name), here are some activity's that will help a \(age) year old like you."
       setActivitys();
    // Do any additional setup after loading the view.
      
        
    }
    
    func setActivitys()
    {
        //plan to add more
        var basicActivitys = ["Take a shower", "brush your teeth", "eat some food","Workout", "Meditate", "Find a therapist"];
        let basicActivity = basicActivitys.randomElement();
             
               func removeActivity(check:String?)
               {
                   var b = 0;
                   
               for basicActive in basicActivitys
                   {
                   if(basicActive == check)
                       {
                       print(b);
                       basicActivitys.remove(at: b);
                       print("done!");
                       print(basicActivitys);
                       }
                   b+=1;
                   }
               }
               removeActivity(check: basicActivity);
               let secondActivity = basicActivitys.randomElement();
               removeActivity(check: secondActivity);
               let thirdActivity = basicActivitys.randomElement();
               removeActivity(check: thirdActivity);
               button1Out.setTitle(basicActivity, for: .normal);
               button2Out.setTitle(secondActivity, for: .normal);
               button3Out.setTitle(thirdActivity, for: .normal);
    }
/*
     //if i ever wanted to add an age function it would be here
func ageRange()
{
   
    if(age < 13)
    {
      stage = "child";
    }
    else if(age >= 13 && age <= 19 )
    {
        stage = "teenager";
    }
    else
    {
        stage = "adult";
    }
    
}
 */
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    //each button segues and sends title to the camera viewcontroller
    @IBAction func button1(_ sender: Any)
    {
        
    }
    
    @IBAction func button2(_ sender: Any)
    {
        
    }
    @IBAction func button3(_ sender: Any)
    {
        
    }
    
  
         
}

