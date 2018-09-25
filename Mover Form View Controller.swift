////
////  Mover Form View Controller.swift
////  Move It.
////
////  Created by Ryan Borgstrom on 9/13/18.
////  Copyright © 2018 Ryan Borgstrom. All rights reserved.
////
//
//import UIKit
//import Alamofire
//
//class Mover_Form_View_Controller: UIViewController, UITextFieldDelegate {
//    
//        var moverInfo = ""
//        var movingData = ""
//    
//    @IBOutlet weak var moverUsernameLBL: UITextField!
//    @IBOutlet weak var truckPictureLBL: UITextField!
//    @IBOutlet weak var moverDateLBL: UITextField!
//    @IBOutlet weak var moverTimeLBL: UITextField!
//    @IBOutlet weak var moverLocationLBL: UITextField!
//    @IBOutlet weak var moverPriceLBL: UITextField!
//    
//    override func viewDidLoad() {
//            super.viewDidLoad()
//        
//            
//            moverUsernameLBL.delegate = self
//            truckPictureLBL.delegate = self
//            moverDateLBL.delegate = self
//            moverTimeLBL.delegate = self
//            moverLocationLBL.delegate = self
//            moverPriceLBL.delegate = self
//        }
//    
//        override func didReceiveMemoryWarning() {
//            super.didReceiveMemoryWarning()
//        }
//    
//    @IBAction func Submit2(_ sender: Any) {
//            performSegue(withIdentifier: "truckInfo", sender: self)
//            
//            let parameters = [
//                "mover_username": "\(moverUsernameLBL.text!)",
//                "mover_date": "\(truckPictureLBL.text!)",
//                "mover_time": "\(moverDateLBL.text!)",
//                "mover_location": "\(moverTimeLBL.text!)",
//                "mover_price": "\(moverPriceLBL.text!)",
//            ]
//            
//            Alamofire.request("https://gentle-tor-12481.herokuapp.com/all_users", method: .post, parameters: parameters,encoding: JSONEncoding.default, headers: nil).responseJSON {
//                response in
//                switch response.result {
//                case .success:
//                    print(response)
//                    break
//                case .failure(let error):
//                    
//                    print(error)
//                }
//            }
//        }
//    
////                override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
////                    let vc = segue.destination as! Mover_Form_View_Controller
////                    vc.movingData = self.moverInfo
////                }
//    
//        override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//            moverUsernameLBL.resignFirstResponder()
//            truckPictureLBL.resignFirstResponder()
//            moverDateLBL.resignFirstResponder()
//            moverTimeLBL.resignFirstResponder()
//            moverLocationLBL.resignFirstResponder()
//            moverPriceLBL.resignFirstResponder()
//        }
//    
//        func textFieldShouldReturn(_ textField: UITextField) -> Bool {
//            if textField == moverUsernameLBL {
//                textField.resignFirstResponder()
//                moverUsernameLBL.becomeFirstResponder()
//            } else if textField == truckPictureLBL {
//                textField.resignFirstResponder()
//                truckPictureLBL.becomeFirstResponder()
//            } else if textField == moverDateLBL{
//                textField.resignFirstResponder()
//                moverDateLBL.becomeFirstResponder()
//            }else if textField == moverTimeLBL{
//                textField.resignFirstResponder()
//                moverTimeLBL.becomeFirstResponder()
//            }else if textField == moverLocationLBL{
//                textField.resignFirstResponder()
//                moverLocationLBL.becomeFirstResponder()
//            }else if textField == moverPriceLBL{
//                textField.resignFirstResponder()
//                moverPriceLBL.becomeFirstResponder()
//            }
//            return true
//        }
//    }
////    extension ViewController : UITextFieldDelegate {
////        func textFieldShouldReturn(_ textField: UITextField) -> Bool {
////            self.view.endEditing(true)
////            textField.resignFirstResponder()
////            return true
////        }
////    }
//
