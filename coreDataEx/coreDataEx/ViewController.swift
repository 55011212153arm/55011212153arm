//
//  ViewController.swift
//  coreDataEx
//
//  Created by Student on 10/31/14.
//  Copyright (c) 2014 Student. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var items = [NSManagedObject]()
    
    @IBAction func addItem(sender: AnyObject) {
        var alert = UIAlertController(title: "New Item", message: "Add a new Item", preferredStyle: .Alert)
        
        let saveAction = UIAlertAction(title: "Save", style: .Default) { (action: UIAlertAction!) -> Void in
            let textFiled = alert.textFields![0] as UITextField
            self.saveName(textFiled.text)
            self.tableView.reloadData()
        }
        
        let cancleAction = UIAlertAction(title: "Cancle", style: .Default) { (action: UIAlertAction!) -> Void in
            
        }
        
        alert.addTextFieldWithConfigurationHandler {
            (textField: UITextField!) -> Void in
        }
        
        alert.addAction(saveAction)
        alert.addAction(cancleAction)
        
        presentViewController(alert, animated: true, completion: nil)

    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell") as UITableViewCell
        
        let item = items[indexPath.row]
        cell.textLabel!.text = item.valueForKey("name") as String?
        
        return cell
    }
    func saveName(name:String){
        let appDelegate = UIApplication.sharedApplication().delegate as AppDelegate
        
        let managedContext = appDelegate.managedObjectContext!
        
        let entity = NSEntityDescription.entityForName("Item", inManagedObjectContext: managedContext)
        
        let item = NSManagedObject(entity: entity!, insertIntoManagedObjectContext: managedContext)
        
        item.setValue(name, forKey: "name")
        
        var error: NSError?
        if !managedContext.save(&error){
            println("Could not save \(error), \(error?.userInfo)")
        }
        items.append(item)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "\"Shopping List\""
        tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "Cell")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

