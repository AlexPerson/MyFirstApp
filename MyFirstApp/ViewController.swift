//
//  ViewController.swift
//  MyFirstApp
//
//  Created by Alexander Person on 04/12/15.
//  Copyright © 2015 Alexander Person. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
   
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var toDoTextField: UITextField!
    
    var toDoArray : [String] = ["Eat", "Sleep", "Code"]

    @IBAction func saveButtonTapped(sender: AnyObject) {
        let toDoText = toDoTextField.text
        addStringToArray(toDoText!)
        tableView.reloadData()
        print(toDoArray)
    }
    
    func addStringToArray(toDoString: String) {
        toDoArray.append(toDoString)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.delegate = self; tableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: TableView DataSource and Delegate
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int { return 1 }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int { return toDoArray.count }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell { let cellIdentifier = "ToDoTableViewCell"; let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! ToDoTableViewCell; cell.toDoCellLabel.text = toDoArray[indexPath.row]; return cell }

}

