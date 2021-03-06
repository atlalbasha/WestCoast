//
//  LoginTableVC.swift
//  WestCoast
//
//  Created by Atlal Basha on 2021-02-23.
//

import UIKit

class LoginTableVC: UITableViewController, UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // register custom cell
        tableView.register(TextFieldTableViewCell.nib(), forCellReuseIdentifier: TextFieldTableViewCell.identifier)
        
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        navigationController?.isNavigationBarHidden = false
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        navigationController?.isNavigationBarHidden = true
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
        let cell = tableView.dequeueReusableCell(withIdentifier: "LoginCell", for: indexPath)
        
        // Configure the cell...
        if indexPath.section == 0 {
            let imageView = UIImageView(frame: CGRect(x: 10, y: 10, width: cell.frame.width - 10, height: cell.frame.height - 10))
            let image = UIImage(named: "userPic")
            imageView.image = image
            cell.backgroundView = imageView
            cell.selectionStyle = .none
            
            
            
        } else if indexPath.section == 1 {
            let fieldCell = tableView.dequeueReusableCell(withIdentifier: TextFieldTableViewCell.identifier, for: indexPath) as! TextFieldTableViewCell
           // set custom cell as delegate
            fieldCell.textField.delegate = self
            fieldCell.textField.placeholder = "Type your Email.."
            fieldCell.textField.textAlignment = .center
            fieldCell.selectionStyle = .none
            fieldCell.textField.keyboardType = .emailAddress
            fieldCell.textField.returnKeyType = .done
            return fieldCell
           
        }else if indexPath.section == 2{
            let fieldCell = tableView.dequeueReusableCell(withIdentifier: TextFieldTableViewCell.identifier, for: indexPath) as! TextFieldTableViewCell
           // set custom cell as delegate
            fieldCell.textField.delegate = self
            fieldCell.textField.placeholder = "Type password.."
            fieldCell.textField.textAlignment = .center
            fieldCell.selectionStyle = .none
            fieldCell.textField.isSecureTextEntry = true
            fieldCell.textField.returnKeyType = .done
            return fieldCell
            
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
           }else {
               return UITableView.automaticDimension
           }
       }
    
 
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        if indexPath.section == 3 {
            performSegue(withIdentifier: "ShowProfileSegue", sender: self)
        }
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowProfileSegue"{
            let VC = segue.destination as! ShowProfileTableVC
        }
    }
    
   
   
    
    // text field end and return
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print(textField.text)
        textField.resignFirstResponder()
        return true
    }
    func textFieldDidEndEditing(_ textField: UITextField, reason: UITextField.DidEndEditingReason) {
        print(textField.text)
    }
   

    
   

}

