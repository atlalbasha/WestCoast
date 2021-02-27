//
//  ProfileTableVC.swift
//  WestCoast
//
//  Created by Atlal Basha on 2021-02-25.
//

import UIKit

class ProfileTableVC: UITableViewController, UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // register custom cell
        tableView.register(TextFieldTableViewCell.nib(), forCellReuseIdentifier: TextFieldTableViewCell.identifier)
        
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        navigationController?.isNavigationBarHidden = true
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        navigationController?.isNavigationBarHidden = false
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
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProfileCell", for: indexPath)
        
        // prepare cell to reuse
        cell.textLabel?.text = nil
        cell.imageView?.image = nil
        cell.textLabel?.textColor = nil
        cell.textLabel?.font = nil
        
        // Configure the cell...
        if indexPath.section == 0 {
            let imageView = UIImageView(frame: CGRect(x: 10, y: 10, width: cell.frame.width - 10, height: cell.frame.height - 10))
            let image = UIImage(named: "booksImage")
            imageView.image = image
            cell.backgroundView = imageView
            cell.selectionStyle = .none
            
            
            
        } else if indexPath.section == 1 {
           
           
           
        }else if indexPath.section == 2{
            cell.textLabel?.text = "Sign Up"
            cell.textLabel?.textAlignment = .center
            cell.textLabel?.font = UIFont.boldSystemFont(ofSize: 18.0)
            cell.textLabel?.textColor = UIColor(named: "WestTextColor")
            cell.backgroundColor = UIColor(named: "WestBackGroundColor")
            
        }else {
            cell.textLabel?.text = "Login"
            cell.textLabel?.textAlignment = .center
            cell.textLabel?.font = UIFont.boldSystemFont(ofSize: 18.0)
            cell.textLabel?.textColor = UIColor(named: "WestTextColor")
            cell.backgroundColor = UIColor(named: "WestBackGroundColor")
        }

        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return 260
        }else if indexPath.section == 1{
            return 200
        }else{
               return UITableView.automaticDimension
           }
       }
    
 
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        if indexPath.section == 2 {
            performSegue(withIdentifier: "SingSegue", sender: self)
        }else if indexPath.section == 3 {
            performSegue(withIdentifier: "LoginSegue", sender: self)
        }
        
    }
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "SingSegue"{
//            let VC = segue.destination as! SingUpTableVC
//        }else if segue.identifier == "LoginSegue"{
//            let VC = segue.destination as! LoginTableVC
//        }
//    }
//    
  

}

