//
//  MoreInfoViewController.swift
//  Move It.
//
//  Created by Ryan Borgstrom on 9/21/18.
//  Copyright © 2018 Ryan Borgstrom. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON



class MoreInfoViewController: UIViewController {
var index: Int!
    
    @IBOutlet weak var moving_username: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Alamofire.request("hhttps://gentle-tor-12481.herokuapp.com/all_users/\(index)").responseJSON { (responseData) -> Void in
            if((responseData.result.value) != nil) {
                let swiftyJsonVar = JSON(responseData.result.value!)
                print(swiftyJsonVar)
            }
        }
        
        
        
        
        moving_username.text = ("You tapped the cell at index \(index)")
        
        
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    


    

}
