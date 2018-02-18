//
//  AboutYouViewController.swift
//  RajPatel_Assignment1
//
//  Created by Raj on 2018-02-12.
//  Copyright © 2018 Raj. All rights reserved.
//

import UIKit

class AboutYouViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var tfName: UITextField!
    @IBOutlet var tfEmail: UITextField!
    @IBOutlet var lbAge: UILabel!
    @IBOutlet var lbGender: UILabel!
    @IBOutlet var switchGender: UISwitch!
    
    //function to hide keyboard
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return textField.resignFirstResponder()
    }
    
    //Pop an alert to thank the user on submit click
    @IBAction func formSubmitted(_ sender: UIButton) {
        //need name and email from the information entered
        let usName = tfName.text!
        let usEmail = tfEmail.text!
        
        let showMessage: String = "Thank you \(usName) [\(usEmail)] for your time"
        //making an alert object
        let alert = UIAlertController(title: "Submission complete", message: showMessage, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK!", style: .default, handler: { (action: UIAlertAction!) in
            self.dismiss(animated: true, completion: nil)
        }))
        // present the alert
        present(alert, animated: true)
        
    }
    
    // show slider value when the slider is changed
    @IBAction func sliderValueChanged (sender: UISlider) {
        let sliderVal = Int(sender.value)
        lbAge.text = "\(sliderVal)"
    }
    
    //function to change gender when the switch is changed
    @IBAction func switchGenderChanged(sender: UISwitch) {
        if sender.isOn {
            lbGender.text = "Male"
        }else {
            lbGender.text = "Female"
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
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
