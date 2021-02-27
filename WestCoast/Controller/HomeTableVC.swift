//
//  CategoryTableVC.swift
//  WestCoast
//
//  Created by Atlal Basha on 2021-02-23.
//

import UIKit

class HomeTableVC: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 3
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 1
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CourseCell", for: indexPath)
        
       

        // Configure the cell...
        if indexPath.section == 0 {
            let imageView = UIImageView(frame: CGRect(x: 10, y: 10, width: cell.frame.width - 10, height: cell.frame.height - 10))
            let image = UIImage(named: "booksImage0")
            imageView.image = image
            cell.backgroundView = imageView
            cell.selectionStyle = .none
        }else if indexPath.section == 1 {
            cell.textLabel?.text = "WestCoast Education"
            cell.textLabel?.textAlignment = .center
            cell.selectionStyle = .none
            cell.textLabel?.textColor = UIColor(named: "WestTextColor")
            cell.textLabel?.font = UIFont.boldSystemFont(ofSize: 22.0)
        }else if indexPath.section == 2 {
            cell.textLabel?.text = """
                WestCoast Education is an education company located on the west coast just north of Gothenburg. We have been in the education industry for almost 40 years. Our business goal is and has been to provide technical training in the IT area. We have been very successful all these years. We specialise primarily in system development training in web and mobile solutions.
                """
            cell.textLabel?.textAlignment = .center
            cell.selectionStyle = .none
            cell.textLabel?.textColor = UIColor(named: "WestTextColor")
            cell.textLabel?.font = UIFont.boldSystemFont(ofSize: 16.0)
            cell.textLabel?.numberOfLines = 0
        }
        return cell
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
               return 260
           }else {
               return UITableView.automaticDimension
           }
       }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       tableView.deselectRow(at: indexPath, animated: true)
    }
  
}

