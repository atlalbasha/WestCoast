//
//  ShowCoreseTableVC.swift
//  WestCoast
//
//  Created by Atlal Basha on 2021-02-24.
//

import UIKit

class ShowCourseTableVC: UITableViewController {
    
    var selectedCourse: String = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 4
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 1
    }

   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ShowCourseCell", for: indexPath)

        // Configure the cell...
        if indexPath.section == 0 {
            cell.textLabel?.text = selectedCourse
            cell.textLabel?.textAlignment = .left
            cell.imageView?.image = UIImage(systemName: "books.vertical.fill")
            cell.selectionStyle = .none
            cell.textLabel?.textColor = UIColor(named: "WestTextColor")
            cell.textLabel?.font = UIFont.boldSystemFont(ofSize: 22.0)
        }else if indexPath.section == 1{
            cell.textLabel?.text = """
In 1980, physicist Tim Berners-Lee, a contractor at CERN, proposed and prototyped ENQUIRE, a system for CERN researchers to use and share documents. In 1989, Berners-Lee wrote a memo proposing an Internet-based hypertext system.[3] Berners-Lee specified HTML and wrote the browser and server software in late 1990. That year, Berners-Lee and CERN data systems engineer Robert Cailliau collaborated on a joint request for funding, but the project was not formally adopted by CERN. In his personal notes[4] from 1990 he listed[5] "some of the many areas in which hypertext is used" and put an encyclopedia first.
"""
            
            cell.textLabel?.textAlignment = .left
            cell.textLabel?.textColor = UIColor(named: "WestTextColor")
            cell.backgroundColor = UIColor(named: "WestBackGroundColor")
            cell.textLabel?.numberOfLines = 0
            cell.selectionStyle = .none
            
        }else if indexPath.section == 2 {
            cell.textLabel?.text = "Apply This Course"
            cell.textLabel?.textAlignment = .center
            cell.textLabel?.font = UIFont.boldSystemFont(ofSize: 18.0)
            cell.textLabel?.textColor = UIColor(named: "WestTextColor")
            cell.backgroundColor = UIColor(named: "WestBackGroundColor")
            
        }else if indexPath.section == 3 {
            cell.textLabel?.text = "Cancel"
            cell.textLabel?.textAlignment = .center
            cell.textLabel?.font = UIFont.boldSystemFont(ofSize: 18.0)
            cell.textLabel?.textColor = UIColor(named: "WestTextColor")
            cell.backgroundColor = UIColor(named: "WestBackGroundColor")
            
        }
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        if indexPath.section == 3 {
            dismiss(animated: true, completion: nil)
        }
    }

}
