//
//  DependencyInversionPrinciple.swift
//  SOLID
//
//  Created by Anna Luchechko on 01.12.2020.

//5. Dependency inversion principle - Принцип инверсии зависимостей

/* Высокоуровневые модули не должны зависеть от низкоуровневых.
 Оба вида модулей должны зависеть от абстракций. */

import UIKit

class UnhappyMan {
    let wife = FirstWife()
    var food: String {
        return wife.getFood()
    }
}

class FirstWife: Wife {
    func getFood() -> String {
        return "Vegeterian food"
    }
}

protocol Wife {
    func getFood() -> String
}

class NormalMan {
    var wife: Wife
    var food: String {
        return wife.getFood()
    }

    init(wife: Wife) {
        self.wife = wife
    }
}

class SecondWife: Wife {
    func getFood() -> String {
        return "Fast food"
    }
}

protocol GetFood {
    func getFood() -> String
}

class ThirdWife: GetFood {
    func getFood() -> String {
        return "Fast food"
    }
}

class Mother: GetFood {
    func getFood() -> String {
        return "Tasty Food"
    }
}

class Sister: GetFood {
    func getFood() -> String {
        return "Classik food"
    }
}

class HappyMan {
    var foodProvider: GetFood
    var food: String {
        return foodProvider.getFood()
    }

    init(foodProvider: GetFood) {
        self.foodProvider = foodProvider
    }
}
