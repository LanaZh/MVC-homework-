

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    //Изображение элементов на view
    let tableView = UITableView()
    let data = InfoSetting.moveAlbom()
    let section = "cell"
    let switchButton = UISwitch()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Настройки"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        let searchController = UISearchController(searchResultsController: nil)
        navigationItem.searchController = searchController
        
        tableView.frame = CGRect(x: 10, y: 100, width: 390, height: 600)
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: section)
        tableView.delegate = self
        tableView.dataSource = self
        self.tableView.tableFooterView = UIView()
        self.view.addSubview(tableView)
    }
}

