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

class Moving_Post_Page_ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!

    var movingData = ""
    
    var arrRes = [[String:AnyObject]]()
    var usersArr = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Alamofire.request("https://gentle-tor-12481.herokuapp.com/all_users").responseJSON { (responseData) -> Void in
            if((responseData.result.value) != nil) {
                let swiftyJsonVar = JSON(responseData.result.value!)
                //                print(swiftyJsonVar)
                if let resData = swiftyJsonVar["all_users"].arrayObject {
                    self.arrRes = resData as! [[String:AnyObject]]
                    print(self.arrRes)
                }
                if self.arrRes.count > 0 {
                    self.tableView.reloadData()
                }
            }
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrRes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell : UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell")!
        var dict = arrRes[(indexPath as NSIndexPath).row]
        print(dict)
        cell.textLabel?.text = dict["moving_username"] as? String
        cell.detailTextLabel?.text = dict["moving_location"] as? String
        return cell
  }
}

