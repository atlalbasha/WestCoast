//
//  ContactTableVC.swift
//  WestCoast
//
//  Created by Atlal Basha on 2021-02-23.
//

import UIKit

class ContactTableVC: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // register custom cell
        tableView.register(TextFieldTableViewCell.nib(), forCellReuseIdentifier: TextFieldTableViewCell.identifier)
        
        
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
        let cell = tableView.dequeueReusableCell(withIdentifier: "ContactCell", for: indexPath)
        
        // Configure the cell...
        if indexPath.section == 0 {
            let imageView = UIImageView(frame: CGRect(x: 10, y: 10, width: cell.frame.width - 10, height: cell.frame.height - 10))
            let image = UIImage(named: "booksImage1")
            imageView.image = image
            cell.backgroundView = imageView
            cell.selectionStyle = .none
            
            
            
        } else if indexPath.section == 1 {
            cell.textLabel?.text = "atlal.basha@gmail.com"
            cell.imageView?.image = UIImage(systemName: "paperplane")
            cell.textLabel?.textAlignment = .left
            cell.textLabel?.font = UIFont.boldSystemFont(ofSize: 18.0)
            cell.textLabel?.textColor = UIColor(named: "WestTextColor")
            cell.backgroundColor = #colorLiteral(red: 0.7655071616, green: 0.8862686753, blue: 0.8667374253, alpha: 1)
           
        }else if indexPath.section == 2{
            cell.textLabel?.text = "0046-722 759 577"
            cell.imageView?.image = UIImage(systemName: "phone")
            cell.textLabel?.textAlignment = .left
            cell.textLabel?.font = UIFont.boldSystemFont(ofSize: 18.0)
            cell.textLabel?.textColor = UIColor(named: "WestTextColor")
            cell.backgroundColor = #colorLiteral(red: 0.7655071616, green: 0.8862686753, blue: 0.8667374253, alpha: 1)
            
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

