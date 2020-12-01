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
        Oprinciple()
        Lprinciple()
        
    }
    
    private func Sprinciple() {
        let switcher = Switch()
        switcher.on()

        let switcherOn = SwitchOn(switcher: switcher)
        switcherOn.execute()
        switcher.on()

        let switcherOff = SwitchOff(switcher: switcher)
        switcherOff.execute()
        switcher.off()
    }
    
    private func Oprinciple() {
        let ios1 = IosDeveloper()
        let ios2 = IosDeveloper()

        let iosCool1 = IosDeveloperCool()

        let team = Team(ios: [ios1, ios2], iosCool: [iosCool1])
        team.programming()

        let web = WebDeveloper()

        let coolTeam = CoolTeam(team: [ios1, iosCool1, web])
        coolTeam.programming()
    }
    
    private func Lprinciple() {
        let eagle = Eagle(name: "Eagle", flySpeed: 25)
        //let penguin = Penguin(name: "Penguin", flySpeed: "can't fly", swimSpeed: 10)
    }
    
    private func Iprinciple() {
        
    }
    
    private func Dprinciple() {
        
    }

}

