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
    
    var arrRes = [[String:AnyObject]]()
    var myIndex = 0
    var movingData = ""
    
    @IBOutlet weak var tableView: UITableView!


    
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

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let indexPath = tableView.indexPathForSelectedRow
        let index = indexPath?.row
        let movingDetails = arrRes[index!]
        let movingID = movingDetails["id"]
        let detailViewController = segue.destination as! MoreInfoViewController
      detailViewController.index = movingID as! Int
  }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrRes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        var dict = arrRes[(indexPath as NSIndexPath).row]
        let id = (dict["id"])
        cell.textLabel?.text = dict["moving_location"] as? String
        cell.detailTextLabel?.text = String(describing: id!)
        
        return cell
}

    override func viewDidAppear(_ animated: Bool) {
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
           myIndex = indexPath.row
            performSegue(withIdentifier: "cell", sender: self)
   }
}

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}


