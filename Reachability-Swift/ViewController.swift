//
//  ViewController.swift
//  Reachability-Swift
//
//  Created by Tushar Kolhe on 05/07/18.
//  Copyright © 2018 Tushar Kolhe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       
    }

    @IBAction func checkBtn(_ sender: Any) {
        if ConnectionCheck.isConnectedToNetwork() {
            print("Connected")
            let alertController = UIAlertController(title: "Hey!!", message: "Your internet connection is ONN...", preferredStyle: .alert)
            
            let defaultAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            alertController.addAction(defaultAction)
            
            present(alertController, animated: true, completion: nil)
        }
        else{
            print("disConnected")
            
            let alertController = UIAlertController(title: "Alert!!", message: "Please check your internet connection!!!", preferredStyle: .alert)
            
            let defaultAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            alertController.addAction(defaultAction)
            
            present(alertController, animated: true, completion: nil)
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

