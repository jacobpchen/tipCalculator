//
//  ViewController.swift
//  tip
//
//  Created by Jacob Chen on 7/16/20.
//  Copyright © 2020 Jacob Chen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel:
        UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var billUiView: UIView!
    @IBOutlet weak var totalUiView: UIView!
    @IBOutlet weak var themeSwitch: UIBarButtonItem!
    @IBOutlet weak var resetButton: UIButton!
    @IBOutlet weak var darkModeSwitch: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Creates border and rounds the corner
        billUiView.layer.cornerRadius = 10
        totalUiView.layer.cornerRadius = 10
        resetButton.layer.cornerRadius = 10
        totalUiView.layer.borderWidth = 1
        totalUiView.layer.borderColor = UIColor.red.cgColor
        tipControl.layer.borderWidth = 1
        tipControl.layer.borderColor = UIColor.systemPink.cgColor
        
        // Set the title in the navigation bar
        self.title = "Tip Calculator"
        
        //changes text color of UISegmentedControl
        let titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
    tipControl.setTitleTextAttributes(titleTextAttributes, for: .normal)
    tipControl.setTitleTextAttributes(titleTextAttributes, for: .selected)
    }
    
    //hides the keyboard
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    //reset button
    func clear(){
        self.billField.text = nil
        self.tipLabel.text = nil
        self.totalLabel.text = nil
        
    }
    
    //calculate tip
    func calcualteTip() {
        //get the bill amount
        let bill = Double(billField.text!) ?? 0
        
        //calculate tip and total
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = (bill + tip)
        
        //update the tip and total labels
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
    @IBAction func resetButton(_ sender: UIButton) {
        clear()
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        calcualteTip()
    }
}




