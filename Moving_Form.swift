//
//  Moving_Form.swift
//  Move It.
//
//  Created by Ryan Borgstrom on 9/18/18.
//  Copyright © 2018 Ryan Borgstrom. All rights reserved.
//

import UIKit

class Moving_Form: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    
    
    var nameText = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func done(_ sender: Any) {
        self.nameText = textField.text!
        performSegue(withIdentifier: "name", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var vc = segue.destination as! Moving_Post_Page_ViewController
        vc.finalName = self.nameText
    }

}
