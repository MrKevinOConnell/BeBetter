//
//  Setup.swift
//  BeBetter
//
//  Created by Kevin O'Connell on 12/20/19.
//  Copyright © 2019 Kevin O'Connell. All rights reserved.
//

import UIKit

class Setup: UIViewController {
    var ageYears = 0;
    var firstName = "";
    @IBOutlet weak var fName: UITextField!
    @IBOutlet weak var date: UIDatePicker!
     var year = 0;
    var age = 0;
    var stage = "";
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
     
       
    }
    
   
    @IBAction func touched(_ sender: Any) {
        let noName = UIAlertController(title: "No name provided", message: "please enter in name", preferredStyle: .alert)
        noName.addAction(UIAlertAction(title: "Yes", style: .default, handler: nil));
        if(fName == nil)
        {
            self.present(noName,animated: true);
        }
        else{
            
        
        fName.resignFirstResponder();
        }
    }
    
  

   
    
    @IBAction func go(_ sender: Any) {
        //1 - get selected date from date picker
                  let birthDate = self.date.date
                  
                  // get the date of today
                  let today = Date()
                 
        if birthDate >= today
                    {
                                      //display error and return
                                      let alertView = UIAlertController(title: "Error", message: "Please enter a valid date", preferredStyle: .alert)
                                      
                                      let action = UIAlertAction(title: "OK", style: .default, handler: nil)
                                      
                                      alertView.addAction(action)
                                      
                                      self.present(alertView, animated: false, completion: nil)
                                      
                                      return
                    }
                   
                  //3 - create an instance of the user's current calendar
                  let calendar = Calendar.current
                  
                  //4 - use calendar to get difference between two dates
                  let components = calendar.dateComponents([.year], from: birthDate, to: today)
                  
        ageYears = components.year ?? 0;
         firstName = fName.text ?? "";
        
                  //5 - display age in label
                print("\(ageYears) years, name, " + firstName);
        self.performSegue(withIdentifier: "letsGo", sender: self)
           //check our birth date is earlier than today
      
        
}
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "letsGo"){
            let change = segue.destination as! Finally
            change.name = firstName;
            change.age = ageYears;
        }
    }

}
