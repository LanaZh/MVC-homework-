
import Foundation
import UIKit

//высотая ячкейки
extension ViewController {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 && indexPath.section == 0 {
           return 80
        }
        return 45
    }
}

extension ViewController {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: section, for: indexPath)
        
        if indexPath.section == 1 && indexPath.row == 0 {
            cell.accessoryView = switchButton
        } else {
            cell.accessoryType = .disclosureIndicator
        }
        
        var content = cell.defaultContentConfiguration()
        content.text = data[indexPath.row].name
        
        content.image = data[indexPath.row].image
        if indexPath.row == 0 && indexPath.section == 0 {
            content.imageProperties.cornerRadius = 55
        }
        cell.contentConfiguration = content
        return cell
    }
}

