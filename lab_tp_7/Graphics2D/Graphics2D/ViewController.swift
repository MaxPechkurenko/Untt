//
//  ViewController.swift
//  Graphics2D
//
//  Created by Admin on 03.6.17.
//  Copyright © 2017 Admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var backgroundSwitch: UISwitch!
    @IBOutlet weak var switchIndicator: UILabel!
    
    @IBAction func backgroundSwitchTapped(_ sender: Any) {
            if backgroundSwitch.isOn
            {
                switchIndicator.text = "Picture: bg1.jpg"
                view.backgroundColor = UIColor(patternImage: UIImage(named: "bg1")!)
            }
            else
            {
                switchIndicator.text = "Picture: bg2.jpg"
                view.backgroundColor = UIColor(patternImage: UIImage(named:"bg2")!)
            }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        switchIndicator.textColor = UIColor.white
        switchIndicator.text = "Picture: bg2.jpg"
        view.backgroundColor = UIColor(patternImage: UIImage(named: "bg2")!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

