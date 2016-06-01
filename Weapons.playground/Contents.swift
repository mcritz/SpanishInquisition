// Nobody expects the Spanish Inquisition!

import Foundation

enum Weapon :Int {
    
    case Fear, Surprise, Efficiency, Devotion
    
    func weaponDescription() -> String {
        switch self {
        case .Fear:
            return "fear"
        case .Efficiency :
            return "ruthless efficiency"
        case .Surprise :
            return "surprise"
        case .Devotion :
            return "an almost fanatical devoltion to the Pope"
        }
    }
}

func describeWeapons(atIndex :Int) -> String {
    var someIndex = atIndex
    let allWeapons = [Weapon.Fear, Weapon.Surprise, Weapon.Efficiency, Weapon.Devotion]
    
    var weaponsDescription = "Our \(atIndex) weapons are "
    
    while someIndex >= 0 {
        allWeapons.forEach { (Weapon) in
            let isLast = someIndex > 0 ? false : true
            if Weapon.rawValue == someIndex {
                if isLast {
                    weaponsDescription.appendContentsOf("and ")
                }
                weaponsDescription.appendContentsOf(Weapon.weaponDescription())
                let punctuation = isLast ? "!" : ", "
                weaponsDescription.appendContentsOf(punctuation)
            }
        }
        someIndex -= 1
    }
    return weaponsDescription
}

describeWeapons(2)
