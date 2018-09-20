//
//  Moving Post Page ViewController.swift
//  Move It.
//
//  Created by Ryan Borgstrom on 9/17/18.
//  Copyright © 2018 Ryan Borgstrom. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class Moving_Post_Page_ViewController: UIViewController {

    
    @IBOutlet weak var nameLabel: UILabel!
    
    
    var finalName = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        nameLabel.text = finalName

//        guard let url = URL(string: "https://gentle-tor-12481.herokuapp.com/all_users") else {return}
//        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
//            guard let dataResponse = data,
//                error == nil else {
//                    print(error?.localizedDescription ?? "Response Error")
//                    return }
//            do{
//                //here dataResponse received from a network request
//                let jsonResponse = try JSONSerialization.jsonObject(with:
//                    dataResponse, options: [])
//                print(jsonResponse) //Response result
//
//
//
//            } catch let parsingError {
//                print("Error", parsingError)
//            }
//        }
//        task.resume()
//    }
        
        
        Alamofire.request("https://gentle-tor-12481.herokuapp.com/all_users").responseJSON { (responseData) -> Void in
            if((responseData.result.value) != nil) {
                let swiftyJsonVar = JSON(responseData.result.value!)
                print(swiftyJsonVar)
            }
        }
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
