//
//  LickovSubstitutionPrinciple.swift
//  SOLID
//
//  Created by Anna Luchechko on 01.12.2020.

//3. Liskov substitution principle - Принцип подстановки Барбары Лисков

/* Функции, которые используют бозовый тип, должны иметь возможность
 использовать подтипы базового типа, не зная об этом. */

import UIKit

class Bird {
    var name: String
    var flySpeed: Double

    init(name: String, flySpeed: Double) {
        self.name = name
        self.flySpeed = flySpeed
    }
}

class Eagle: Bird {
}

class Penguin: Bird {
    var swimSpeed: Double

    init(name: String, flySpeed: Double, swimSpeed: Double) {
        self.swimSpeed = swimSpeed
        super.init(name: name, flySpeed: flySpeed)
    }
}

protocol CanFly {
    var flySpeed: Double {get set}
}

protocol CanSwim {
    var swimSpeed: Double {get set}
}

class GeneralBirds {
    var name: String
    init(name: String) {
        self.name = name
    }
}

class GoodEagle: GeneralBirds, CanFly {
    var flySpeed: Double
    init(flySpeed: Double, name: String) {
        self.flySpeed = flySpeed
        super.init(name: name)
    }
}

class GoodPenguin: GeneralBirds, CanSwim {
    var swimSpeed: Double

    init(name: String, swimSpeed: Double) {
        self.swimSpeed = swimSpeed
        super.init(name: name)
    }
}
