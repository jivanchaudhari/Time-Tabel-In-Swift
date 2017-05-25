//
//  ViewController.swift
//  JCTimeTable
//
//  Created by Mindrose on 24/05/17.
//  Copyright © 2017 Mindrose. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var textNumber: UITextField!
    
    @IBOutlet var textLimit: UITextField!
    
    var newNumber: Int = 0
    var newLimit: Int = 0
    var text = String()
    var allValues = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
    @IBAction func buttonSave(_ sender: UIButton) {
      
        let numberString = textNumber.text
        
        let limitString = textLimit.text
        
        if ((numberString?.characters.count)! > 0 && (limitString?.characters.count)! > 0) {
             newLimit = Int(limitString!)!
            newNumber = Int(numberString!)!
            
            for i in 1...newLimit {
                 text = "\(newNumber)   *   \(i)    =     \(newNumber * i)"
             //   print(text)
                allValues += ["\(text)"]
            }
 
        let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "AddViewController") as! AddViewController
        
        secondViewController.textArray = allValues
        print(allValues)

        self.navigationController?.pushViewController(secondViewController, animated: true)
        } else {
            print("Text Field Is Empty.")
            alertWithAction(Title: "Text Empty", Message: "Please Enter The Text.")
        }
    }
    func alertWithAction(Title:String,Message:String) {
        let alert = UIAlertController(title: Title, message: Message, preferredStyle: .alert)
        
        let okAction = UIAlertAction(title:"OK", style: .default) { (action:(UIAlertAction)) in
            
        }
        alert.addAction(okAction)
        self.present(alert, animated: true, completion: nil)
        
    }
    override func viewWillAppear(_ animated: Bool) {
        
        textNumber.text = nil
        textLimit.text = nil
        allValues.removeAll()
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        self.view .endEditing(true)
    }
}

