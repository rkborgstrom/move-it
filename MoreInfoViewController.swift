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
    
    @IBOutlet weak var mover_username: UILabel!
    @IBOutlet weak var mover_price: UILabel!
    @IBOutlet weak var mover_date: UILabel!
    @IBOutlet weak var mover_time: UILabel!
    @IBOutlet weak var mover_location: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Alamofire.request("https://gentle-tor-12481.herokuapp.com/all_users/\(index!)").responseJSON { (responseData) -> Void in
            if((responseData.result.value) != nil) {
                let swiftyJsonVar = JSON(responseData.result.value!)
                let all_users = swiftyJsonVar["all_users"]
                let mover_username = all_users["moving_username"]
                let mover_price = all_users["mover_price"]
                let mover_date = all_users["mover_date"]
                let strDate = "\(mover_date)"
                let newDate = strDate.prefix(10)
                let mover_location = all_users["moving_location"]

                
                self.mover_username?.text = ("\(mover_username)")
                self.mover_price?.text = ("\(mover_price)")
                self.mover_date?.text = ("\(newDate)")
                self.mover_location?.text = ("\(mover_location)")

                
                print(swiftyJsonVar)
            }
        }
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    


    

}
