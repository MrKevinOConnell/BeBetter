//
//  Setup.swift
//  BeBetter
//
//  Created by Kevin O'Connell on 12/20/19.
//  Copyright © 2019 Kevin O'Connell. All rights reserved.
//

import UIKit

class Setup: UIViewController {
    //initalization of needed variables for age and firsName, as well as the textField and datePicker
    var ageYears = 0;
    var firstName = "";
    @IBOutlet weak var fName: UITextField!
    @IBOutlet weak var date: UIDatePicker!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
     
       
    }
    
   //Removes the keyboard if tap on screen elsewhere
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
                                      //display error and return if user selects a later date than today
                                      let alertView = UIAlertController(title: "Error", message: "Please enter a valid date", preferredStyle: .alert)
                                      
                                      let action = UIAlertAction(title: "OK", style: .default, handler: nil)
                                      
                                      alertView.addAction(action)
                                      
                                      self.present(alertView, animated: false, completion: nil)
                                      
                                      return
                    }
                   
                  //create an instance of the user's current calendar
                  let calendar = Calendar.current
                  
                  //use calendar to get difference between two dates
                  let components = calendar.dateComponents([.year], from: birthDate, to: today)
                  //sets age years to the calender year and the first name to what the user inputted
        ageYears = components.year ?? 0;
         firstName = fName.text ?? "";
        
                  //display age in label
                print("\(ageYears) years, name, " + firstName);
        self.performSegue(withIdentifier: "letsGo", sender: self)
           //check our birth date is earlier than today
      
        
}
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //gives Finally.swift the first name and age
        if(segue.identifier == "letsGo"){
            let change = segue.destination as! Finally
            change.name = firstName;
            change.age = ageYears;
        }
    }

}
