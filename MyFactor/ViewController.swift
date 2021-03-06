//
//  ViewController.swift
//  MyFactor
//
//  Created by kotchaphan on 29/10/2561 BE.
//  Copyright © 2561 Thanapat.P. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    //    Explicit
    var numberString: String = ""
    var mainNumberInts = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]
    var answerString = [String]()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mainNumberInts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "answerCell")
        
        cell.textLabel?.text = answerStrings[indexPath]
        return cell
        
        
    }
    
    

    

    
    
    @IBOutlet weak var numberTextField: UITextField!
    
    
    @IBAction func calculateButton(_ sender: Any) {
        
        
//        Get Value From TextField
        numberString = numberTextField.text!
        print("numberString ==> \(numberString)")
        
//        Calculate
        
        var answerInt = 0
        var resultString = ""
        
        
        for myResultInt in mainNumberInts {
            answerInt = myResultInt * Int(numberString)!
            print("answerInt ==> \(answerInt)")
            resultString = numberString + " x " + String(myResultInt) +  " = " + String(answerInt)
            print("resultString ==> \(resultString)")
            
            answerString.append(resultString)
            
            
        }   //for
        
        print("answerString ==> \(answerString)")
        
    }//calculate Function
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

