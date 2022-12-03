//
//  ViewController.swift
//  MVVM
//
//  Created by Muhammadqodir on 29/09/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var tableView: UITableView!
    
    var data = [
      Person(name: "Jahongir", firstName: "Aliqulov", age: 20, height: 180),
      Person(name: "Mirjalol", firstName: "Haydaraliyev", age: 20, height: 175),
      Person(name: "Do'stMuhammad", firstName: "Falonchiyev", age: 22, height: 160)
      
    
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(CustomTableViewCell.nib(), forCellReuseIdentifier: CustomTableViewCell.cellIdentifier)
        tableView.delegate = self
        tableView.dataSource = self
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return  data.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.cellIdentifier, for: indexPath) as! CustomTableViewCell
        let model = data[indexPath.row]
        cell.configure(with: CellViewModel(name: model.name, firstName: model.firstName))
        
       
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true )
    }

}

struct Person {
    var name: String
    var firstName: String
    var age: Int
    var height: Double
    
}
struct CellViewModel {
    var name: String
    var firstName: String
    
    
}
