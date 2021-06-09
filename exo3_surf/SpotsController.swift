//
//  SpotsController.swift
//  exo3_surf
//
//  Created by AUCHART Alexandre on 16/05/2021.
//

import UIKit

class SpotsController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableUsers.delegate = self
        tableUsers.dataSource = self
            fetchUsers()
            setupTable()
    }
    

    
    
    var usrTabName = [User](){
    didSet {
        //tableUsers.reloadData()
           }
        }
    
    func fetchUsers(){
        let urlString = "https://jsonplaceholder.typicode.com/users"
        guard let url = URL(string: urlString) else {return}
        
        URLSession.shared.dataTask(with: url) {(data, res,error) in
            //print(data!)
            //print(res)
            do{
                let users =  try JSONDecoder().decode( [User].self , from: data!)
                //print(users)
                DispatchQueue.main.async {
                    //print(users[0])
                    print(users.count)
                   
                    for user in users {
                        let u = user.name + user.email
                        print(u)
                        self.usrTabName.append(user)
                        
                    }
                    
                    self.tableUsers.reloadData()
                }
                
            } catch{
                print(error)
            }
            
            
            
        }.resume()
        
            
       // tableUsers.reloadData()
    }
    
    @IBOutlet weak var tableUsers: UITableView!
       
    func setupTable(){
        
    }
    
    
}

extension SpotsController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("you tapped me")
    }
}
extension SpotsController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath as IndexPath)
        let u = usrTabName[indexPath.row]
        cell.textLabel?.text = u.username
        cell.detailTextLabel?.text = u.name
         return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return usrTabName.count
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
}
