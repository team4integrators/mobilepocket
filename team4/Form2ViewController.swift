//
//  Form2ViewController.swift
//  team4
//
//  Created by Chandrima Ghosh on 10/13/16.
//  Copyright © 2016 Chandrima Ghosh. All rights reserved.
//

import UIKit

class Form2ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var dob: UITextField!

    @IBOutlet weak var jstate: UITextField!
    @IBOutlet weak var faceAmount: UITextField!
    @IBOutlet weak var interpersonalInterview: UISegmentedControl!
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBOutlet weak var teleApp: UISegmentedControl!
    
   
    
    func calcAge(birthday:String) -> Int{
        let dateFormater = NSDateFormatter()
        dateFormater.dateFormat = "MM/dd/yyyy"
        let birthdayDate = dateFormater.dateFromString(birthday)
        let calendar: NSCalendar! = NSCalendar(calendarIdentifier: NSCalendarIdentifierGregorian)
        let now: NSDate! = NSDate()
        let calcAge = calendar.components(.Year, fromDate: birthdayDate!, toDate: now, options: [])
        let age = calcAge.year
        return age
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
