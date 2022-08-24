

import Foundation
import UIKit

struct InfoSetting {
    var image: UIImage?
    var name: String?
    
 static func moveAlbom() -> [InfoSetting] {
    let person = InfoSetting(image: UIImage(named: "user")!,
                             name: "Имя Фамилия")
    let first = InfoSetting(image: UIImage(named: "airplane-mode-off")!,
                        name: "Авиарежим")
    let second = InfoSetting(image: UIImage(named: "wi-fi-good")!,
                        name: "WI-FI")
    let third = InfoSetting(image: UIImage(named: "bluetooth")!,
                        name: "Bluetooth")
    let fouth = InfoSetting(image: UIImage(named: "cellular-network")!,
                        name: "Сотовая связь")
    let five = InfoSetting(image: UIImage(named: "modem")!,
                          name: "Режим модема")
    let six = InfoSetting(image: UIImage(named: "call")!,
                         name: "Уведомления")
    let eight = InfoSetting(image: UIImage(named: "sound")!,
                            name: "Звуки, тактильные сигналы")
     
    return [person, first, second, third, fouth, five, six, eight]
    }
}

