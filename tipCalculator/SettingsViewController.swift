//
//  SettingsViewController.swift
//  tipCalculator
//
//  Created by user176468 on 7/24/20.
//  Copyright © 2020 user176468. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var numPeopleField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        
    }
    
    
    @IBAction func numPeopleField(_ sender: Any) {
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


}


extension ViewController : UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        return true
    }
}
