//
//  ViewController.swift
//  Great Number Game
//
//  Created by admin on 11/9/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var Butten: UIButton!
    @IBOutlet weak var TextFild: UITextField!
    var x = 44
  
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func ButtenAction(_ sender: Any) {
       
        func testAlert(title: String, message: String, action: String, color: UIColor){
            let alertController = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
            
            // Background color.
            alertController.view.subviews.first?.subviews.first?.subviews.first?.backgroundColor = color
             
            // Action.
            let action = UIAlertAction(title: action, style: UIAlertAction.Style.default, handler: nil)
            alertController.addAction(action)
            self.present(alertController, animated: true, completion: nil)
        }
        
        guard let inputNumber = Int( TextFild.text! )
        else { return }
        
        if inputNumber == x {
            testAlert(title: "Correct", message: "\(inputNumber) was correct", action: "Play again", color: UIColor.green)
            
        }else if inputNumber < x {
            testAlert(title: "Incorrect", message: "\(inputNumber) Too Low", action: "Guess Again", color: UIColor.red)
            
        }else{
            testAlert(title: "Incorrect", message: "\(inputNumber) Too High", action: "Guess Again", color: UIColor.red)
        }
    }
}
