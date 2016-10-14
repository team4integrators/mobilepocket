//
//  signUPViewController.swift
//  team4
//
//  Created by Chandrima Ghosh on 10/13/16.
//  Copyright © 2016 Chandrima Ghosh. All rights reserved.
//

import UIKit

class signUPViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        do{
            let filePath:NSString =  NSBundle.mainBundle().pathForResource("convertcsv.json", ofType: nil)!
            let data:NSData = NSData.init(contentsOfFile: filePath as String)!
            let dict:AnyObject = try  NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.AllowFragments)
            var actdict:[NSDictionary] = dict as! [NSDictionary]
            
            
            var resultTuple:[NSDictionary]=[]
            
            
            print ("count is")
            print (actdict.count)
            
            for each in actdict
            {
           
                
                var x=each.valueForKey("MaximumAge") as! NSNumber
            
                if (x==75)
                {
                print ("yes")
                    resultTuple.append(each)
                    
                    
                    
                }
            
            }
            
            print ("**************")
            print(resultTuple.count)
            
            
           // print(dict)
        }
        catch
        {
            print(error)
        }

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func toNextScreen(sender: AnyObject) {
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
       
    
    }
 

}
