////
////  TestViewController.swift
////  Move It.
////
////  Created by Ryan Borgstrom on 9/20/18.
////  Copyright © 2018 Ryan Borgstrom. All rights reserved.
////
//
//import UIKit
//
//class TestViewController: UIViewController {
//    final let url = URL(string: "https://gentle-tor-12481.herokuapp.com/all_users")
//
//    var users = [Users]()
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        downloadJson()
//    }
//
//    func downloadJson() {
//        guard let downloadURL = url else { return }
//        URLSession.shared.dataTask(with: downloadURL) { data, urlResponse, error in
//            guard let data = data, error == nil, urlResponse != nil else {
//            print("something is wrong")
//                return
//            }
//            print("downloaded")
//            do
//            {
//                let decoder = JSONDecoder()
//                let downloadedUsers = try decoder.decode(User.self, from: data)
//                self.users = downloadedUsers.User
//                } catch {
//                print("something wrong after download")
//            }
//        }.resume()
//    }
//}
