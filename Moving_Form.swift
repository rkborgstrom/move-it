//
//  Moving_Form.swift
//  Move It.
//
//  Created by Ryan Borgstrom on 9/18/18.
//  Copyright © 2018 Ryan Borgstrom. All rights reserved.
//

import UIKit
import Alamofire

class Moving_Form: UIViewController, UITextFieldDelegate {

        var movingInfo = ""
    
    @IBOutlet weak var usernameLBL: UITextField!
    @IBOutlet weak var dateLBL: UITextField!
    @IBOutlet weak var timeLBL: UITextField!
    @IBOutlet weak var locationLBL: UITextField!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var objectsLBL: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        usernameLBL.delegate = self
        dateLBL.delegate = self
        timeLBL.delegate = self
        locationLBL.delegate = self
        objectsLBL.delegate = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func SubmitButton(_ sender: Any) {
        performSegue(withIdentifier: "movingInfo", sender: self)
        
            let parameters = [
                "moving_username": "\(usernameLBL.text!)",
                "moving_date": "\(dateLBL.text!)",
                "moving_time": "\(timeLBL.text!)",
                "moving_location": "\(locationLBL.text!)",
                "moving_objects": "\(objectsLBL.text!)",
            ]
            
            Alamofire.request("https://gentle-tor-12481.herokuapp.com/all_users", method: .post, parameters: parameters,encoding: JSONEncoding.default, headers: nil).responseJSON {
                response in
                switch response.result {
                case .success:
                    print(response)
                    break
                case .failure(let error):
                    
                    print(error)
                }
            }
        }
    
//        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//            let vc = segue.destination as! Moving_Post_Page_ViewController
//            vc.movingData = self.movingInfo
//        }
    
override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    usernameLBL.resignFirstResponder()
    dateLBL.resignFirstResponder()
    timeLBL.resignFirstResponder()
    locationLBL.resignFirstResponder()
    objectsLBL.resignFirstResponder()
}

func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    if textField == usernameLBL {
        textField.resignFirstResponder()
        usernameLBL.becomeFirstResponder()
    } else if textField == dateLBL {
        textField.resignFirstResponder()
        dateLBL.becomeFirstResponder()
    } else if textField == timeLBL{
        textField.resignFirstResponder()
        timeLBL.becomeFirstResponder()
    }else if textField == locationLBL{
        textField.resignFirstResponder()
        locationLBL.becomeFirstResponder()
    }else if textField == objectsLBL{
        textField.resignFirstResponder()
        objectsLBL.becomeFirstResponder()
    }
    return true
   }
}

extension ViewController : UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        textField.resignFirstResponder()
        return true
    }
}

