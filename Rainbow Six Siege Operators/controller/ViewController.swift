//
//  ViewController.swift
//  Rainbow Six Siege Operators
//
//  Created by Cesa Anwar on 18/06/20.
//  Copyright © 2020 Cesa Anwar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var operatorTableView: UITableView!
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.titleView = UIImageView(image: UIImage(named: "r6-logo"))
        navigationController?.navigationBar.barStyle = .black
        operatorTableView.dataSource = self
        operatorTableView.delegate = self
        operatorTableView.register(UINib(nibName: "OperatorTableViewCell", bundle: nil), forCellReuseIdentifier: "OperatorCell")
    }

    @IBAction func goToProfile(_ sender: Any) {
        let profilePage = ProfileViewController(nibName: "ProfileViewController", bundle: nil)
        self.navigationController?.pushViewController(profilePage, animated: true)
    }
    
}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return operators.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "OperatorCell", for: indexPath) as! OperatorTableViewCell
        
        let ioperator = operators[indexPath.row]
        cell.picture.image = ioperator.icon
        cell.codename.text = ioperator.codename.uppercased()
        cell.role.text = ioperator.role
        
        return cell
    }
    
    
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detail = DetailViewController(nibName: "DetailViewController", bundle: nil)
        
        detail.ioperator = operators[indexPath.row]
        tableView.deselectRow(at: indexPath, animated: true)
        self.navigationController?.pushViewController(detail, animated: true)
    }
}

