//
//  ViewController.swift
//  DisplayNumber
//
//  Created by Jessi Chartier on 5/17/18.
//  Copyright © 2018 Jessi Chartier. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //Outlets
    
    @IBOutlet weak var firstNumberTextField: UITextField!
    @IBOutlet weak var secondNumberTextField: UITextField!
    @IBOutlet weak var totalNumberLabel: UILabel!
    @IBOutlet weak var operationSegmentedControl: UISegmentedControl!
    @IBOutlet weak var picImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hideKeyboardWhenTappedAround()
    }
    

    @IBAction func calculateBtnPressed(_ sender: UIButton) {
        guard let number1 = Int(firstNumberTextField.text!), let number2 = Int(secondNumberTextField.text!) else { print("You have entered invalid numbers. Please re-enter them again")
            return
        }
        switch operationSegmentedControl.selectedSegmentIndex {
        case 0:
            let addedNumber = add(number: number1, secondNumber: number2)
            if addedNumber % 2 == 0 {
                picImageView.image = UIImage(named: "funnyimage2")
                if addedNumber == 64 {
                    picImageView.image = UIImage(named: "Donkey kong")
                }
            } else {
                picImageView.image = UIImage(named: "funny image")
            }
            totalNumberLabel.text = String(addedNumber)
        case 1:
            let subtractedNumber = subtract(number: number1, secondNumber: number2)
            if subtractedNumber % 2 == 0 {
                picImageView.image = UIImage(named: "funnyimage2")
                if subtractedNumber == 64 {
                    picImageView.image = UIImage(named: "Donkey kong")
                }
            } else {
                picImageView.image = UIImage(named: "funny image")
            }
            totalNumberLabel.text = String(subtractedNumber)
        case 2:
            let multipliedNumber = multiply(number: number1, secondNumber: number2)
            if multipliedNumber % 2 == 0 {
                picImageView.image = UIImage(named: "funnyimage2")
                if multipliedNumber == 64 {
                    picImageView.image = UIImage(named: "Donkey kong")
                }
            } else {
                picImageView.image = UIImage(named: "funny image")
            }
            totalNumberLabel.text = String(multipliedNumber)
        case 3:
            let dividedNumber = divide(number: number1, secondNumber: number2)
            if dividedNumber % 2 == 0 {
                picImageView.image = UIImage(named: "funnyimage2")
                if dividedNumber == 64 {
                    picImageView.image = UIImage(named: "Donkey kong")
                }
            } else {
                picImageView.image = UIImage(named: "funny image")
            }
            totalNumberLabel.text = String(dividedNumber)
        default:
            print("somethings wrong")
        }
        
        
    }
    
    func add(number: Int, secondNumber: Int) -> Int {
        return number + secondNumber
    }
    func subtract(number: Int, secondNumber: Int) -> Int {
        return number - secondNumber
    }
    func multiply(number: Int, secondNumber: Int) -> Int {
        return number * secondNumber
    }
    func divide(number: Int, secondNumber: Int) -> Int {
        return number / secondNumber
    }
    
}






extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}

