//
//  FirstViewController.swift
//  ToDoApp
//
//  Created by Stephanie Santana on 10/29/18.
//  Copyright © 2018 Stephanie Santana. All rights reserved.
//

import UIKit

var list = ["Buy milk", "Run 5 miles", "Get Peter", "Plant my new plants"]

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var myTableView: UITableView!
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return(list.count)
        
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.default , reuseIdentifier: "cell")
        cell.textLabel?.text = list[indexPath.row]
        
        return(cell)
    }
    
    func tableView(_tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath)
    {
        if editingStyle == UITableViewCell.EditingStyle.delete
        {
            list.remove(at: indexPath.row)
            myTableView.reloadData()
        }
        
    }
    
    override func viewDidAppear(_ _animated: Bool)  {
        myTableView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

