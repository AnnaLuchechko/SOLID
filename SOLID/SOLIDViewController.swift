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
        Iprinciple()
        Dprinciple()
        
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
        print(team.programming())

        let web = WebDeveloper()

        let coolTeam = CoolTeam(team: [ios1, iosCool1, web])
        print(coolTeam.programming())
    }
    
    private func Lprinciple() {
        let eagle = Eagle(name: "Eagle", flySpeed: 25)
        print(eagle)
        //let penguin = Penguin(name: "Penguin", flySpeed: "can't fly", swimSpeed: 10)
    }
    
    private func Iprinciple() {
        let ios = CvIos(swift: true, objectC: true, html: false, css: false, ruby: false, php: false)
        print(ios)
        let front = CvWebFrontEnd(swift: false, objectC: false, html: true, css: true, ruby: false, php: false)
        print(front)
        let back = CvWebBackEnd(swift: false, objectC: false, html: false, css: false, ruby: true, php: true)
        print(back)
    }
    
    private func Dprinciple() {
        let normal = NormalMan(wife: SecondWife())
        print(normal.food)
        normal.wife = FirstWife()
        print(normal.food)
        
        let happy = HappyMan(foodProvider: Mother())
        print(happy.food)
    }

}

