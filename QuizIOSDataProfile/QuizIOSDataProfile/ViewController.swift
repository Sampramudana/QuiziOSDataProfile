//
//  ViewController.swift
//  QuizIOSDataProfile
//
//  Created by Sam Pramudana on 1/23/18.
//  Copyright © 2018 Sam Pramudana. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtTelp: UILabel!
    @IBOutlet weak var txtAddress: UILabel!
    @IBOutlet weak var txtEmail: UILabel!
    @IBOutlet weak var txtName: UILabel!
    
    @IBOutlet weak var etTelp: UITextField!
    @IBOutlet weak var etAddress: UITextField!
    @IBOutlet weak var etEmail: UITextField!
    @IBOutlet weak var etFullName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func btnInput(_ sender: Any) {
        
        let name = etFullName.text
        let address = etAddress.text
        let email = etEmail.text
        let telp = etTelp.text
        
        txtName.text = "Name = " + name!
        txtAddress.text = "Address = " + address!
        txtEmail.text = "Email = " + email!
        txtTelp.text = "Telp = " + telp!
        
        if (etFullName.text == ""){
            let alertController = UIAlertController(title: "WARNING", message: "Name Cant Not Be Empty", preferredStyle: .alert)
            alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(alertController, animated: true, completion: nil)
        }else if (etAddress.text == ""){
            let alertController = UIAlertController(title: "WARNING", message: "Address Cant Not Be Empty", preferredStyle: .alert)
            alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(alertController, animated: true, completion: nil)
        }else if (etEmail.text == ""){
            let alertController = UIAlertController(title: "WARNING", message: "Email Cant Not Be Empty", preferredStyle: .alert)
            alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(alertController, animated: true, completion: nil)
        }else if (etTelp.text == ""){
            let alertController = UIAlertController(title: "WARNING", message: "Telp Cant Not Be Empty", preferredStyle: .alert)
            alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(alertController, animated: true, completion: nil)
        }else if (etFullName.text == "") && (etAddress.text == "") && (etEmail.text == "") && (etTelp.text == ""){
            let alertController = UIAlertController(title: "WARNING", message: "You Must Input First", preferredStyle: .alert)
            alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(alertController, animated: true, completion: nil)
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

