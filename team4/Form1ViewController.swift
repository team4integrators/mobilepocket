//
//  Form1ViewController.swift
//  team4
//
//  Created by Chandrima Ghosh on 10/13/16.
//  Copyright © 2016 Chandrima Ghosh. All rights reserved.
//

import UIKit

class Form1ViewController: UIViewController {
    
    
    var data2:[String]=[]
    var data1:[String]=[]
   
    @IBOutlet weak var height: UITextField!
    
    
    @IBOutlet weak var heightInches: UITextField!
    @IBOutlet weak var weight: UITextField!
    
    
    @IBOutlet weak var bpd: UITextField!
    
    
    @IBOutlet weak var bps: UITextField!
   
    @IBOutlet weak var totalCholestrol: UITextField!
    
    @IBOutlet weak var hdlRatio: UITextField!
    
    @IBOutlet weak var adverseDriving: UISegmentedControl!
  
    @IBOutlet weak var commercialPilot: UISegmentedControl!
    
    @IBOutlet weak var smoking: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
     
        
        print(self.calculateBMI(6.0, heightInches: 0, weight: 56.9).description)
        

        data2.append(height.text!)
        data2.append(heightInches.text!)
        data2.append(bpd.text!)
        data2.append(bps.text!)
   
        
        
        
        
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
   

    
    func calculateBMI(height:Float,heightInches:Int,weight:Float)->Float
    {
    
        
    var result:Float
        
        var  denominator :Float = ((height - (height % 1)) * 12) + (height % 1)
            result = (weight * 703)/(denominator * denominator)
        return result
        
    }
    

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
       
        if segue.identifier=="riskclass"{
        
        let reviewScene=segue.destinationViewController as! 
                ResultViewController
           

            
            for each in data2
            {print(each)}
            for each in data1
            {print(each)}
                
          
            reviewScene.data1 = data1
            reviewScene.data2=data2
            }
            
        
        
        }
        
    
 

}
