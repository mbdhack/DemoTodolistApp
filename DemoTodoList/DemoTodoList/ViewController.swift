//
//  ViewController.swift
//  DemoTodoList
//
//  Created by apple on 3/3/16.
//  Copyright © 2016 appsec. All rights reserved.
//

import UIKit

class ViewController: UIViewController  ,UITableViewDelegate , UITableViewDataSource{

    @IBOutlet var inputField: UITextField!
    
    @IBOutlet var outputTableView: UITableView!
    
    
    @IBOutlet var buttonOutLet: UIButton!
    
    
    var Datareciever : [😱] = []
    
    var itemreceievr : 😱 = 😱(💩: "")
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
         data ()
        
    }
    
    
    
    
    
    func data (){
    
        Datareciever = [
            😱 (💩: "shit"),
            😱 (💩: "haha"),
            😱 (💩: "you know what it's")]
    
    
    
    }

    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBAction func buttonTapped(sender: UIButton) {
        if (self.inputField.text != ""){
        itemreceievr = 😱(💩: self.inputField.text!)
        
        Datareciever.append(itemreceievr)
        outputTableView.reloadData()
        }
        
    }
    
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Datareciever.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
       let tempCell = tableView.dequeueReusableCellWithIdentifier("cell")! as UITableViewCell
        
        let todoItem = Datareciever[indexPath.row]
        let Cell = tempCell.textLabel! as UILabel
        Cell.text = todoItem.💩

        
        
        
        
        if (todoItem.complete) {
            tempCell.accessoryType = UITableViewCellAccessoryType.Checkmark;
        } else {
            tempCell.accessoryType = UITableViewCellAccessoryType.None;
        }
        
        
        return tempCell
        
}
    

    
     func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: false)
        
        let tappedItem = Datareciever[indexPath.row] as 😱
        
        tappedItem.complete = !tappedItem.complete
        
        tableView.reloadRowsAtIndexPaths([indexPath], withRowAnimation: UITableViewRowAnimation.None)
        
        
        
    }


}

