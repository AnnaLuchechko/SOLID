//
//  SOLIDViewController.swift
//  SOLID
//
//  Created by Anna Luchechko on 01.12.2020.
//

import UIKit

class SOLIDViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        Sprinciple()
        
    }
    
    private func Sprinciple() {
        
        //1. Single responsibility principle - Принцип единственной обязанности
        
        let switcher = Switch()
        switcher.on()

        let switcherOn = SwitchOn(switcher: switcher)
        switcherOn.execute()
        switcher.on()

        let switcherOff = SwitchOff(switcher: switcher)
        switcherOff.execute()
        switcher.off()
    }

}

