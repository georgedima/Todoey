//
//  ViewController.swift
//  Todoey
//
//  Created by Dima George on 22/01/2019.
//  Copyright © 2019 Dima George. All rights reserved.
//

import UIKit

class ToDoListViewController: UITableViewController {

     var itemArray = ["Make exercices every day","Run 5 mile every morning ","Read a book every month"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        
    }

   
  //MARK - Tableview Datasource Methods
    
  
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        
        cell.textLabel?.text = itemArray[indexPath.row]
        
        return cell
    }
    
  //MARK - Tableview Delegate Methods
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
           tableView.cellForRow(at: indexPath)?.accessoryType = .none
        } else {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
        
       tableView.deselectRow(at: indexPath, animated: true)
        
    }
   
}

