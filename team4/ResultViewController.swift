//
//  ResultViewController.swift
//  team4
//
//  Created by Chandrima Ghosh on 10/13/16.
//  Copyright © 2016 Chandrima Ghosh. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    @IBOutlet weak var riskclass: UILabel!
    var data2:[String]=[]
    var data1:[String]=[]
    var infotitle:[String]=["Name","Phone","age"]
    @IBOutlet weak var rec: UITableView!
    @IBOutlet weak var detailsTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        detailsTableView.dataSource=self
        detailsTableView.delegate=self
    }

   
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

 
    
    
    extension ResultViewController: UITableViewDataSource,UITableViewDelegate
    {
       
        func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
            
            if tableView==detailsTableView
            {
            var cell:detailsTableViewCell=detailsTableView.dequeueReusableCellWithIdentifier("detailResult")as! detailsTableViewCell
                cell.infotitle.text=infotitle[indexPath.row]
                cell.infoDetail.text="value"
                
            
            
                return cell}
            else{
                
                
                var cell1=rec.dequeueReusableCellWithIdentifier("recCell")! as UITableViewCell
                cell1.detailTextLabel!.text="hi"
                cell1.textLabel?.text="value2"
                return cell1

            }
            
        }

        func numberOfSectionsInTableView(tableView: UITableView) -> Int {
            return 1
        }
        
        func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return 3
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


