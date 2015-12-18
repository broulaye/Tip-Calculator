//
//  SettingsViewController.swift
//  tips
//
//  Created by Broulaye Doumbia on 12/17/15.
//  Copyright (c) 2015 Broulaye Doumbia. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var defaultTipControl: UISegmentedControl!
    let defaults = NSUserDefaults.standardUserDefaults()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        var savedTip = defaults.integerForKey("default tip")
        
       // if (savedTip == nil) {
         //   savedTip = 0
        
       // }
        
        defaultTipControl.selectedSegmentIndex = savedTip
        // Do any additional setup after loading the view.
    }

    @IBAction func onSave(sender: AnyObject) {
        defaults.setInteger(defaultTipControl.selectedSegmentIndex, forKey: "default tip")
        defaults.synchronize()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
