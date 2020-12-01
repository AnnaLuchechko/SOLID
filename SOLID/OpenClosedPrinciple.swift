//
//  OpenClosedPrinciple.swift
//  SOLID
//
//  Created by Anna Luchechko on 01.12.2020.

//2. The Open Closed Principle - Принцип окрытости/закрытости
import UIKit

protocol CanWriteCode {
    func programming() -> String
}

class IosDeveloperCool: CanWriteCode {
    func programming() -> String {
        return "Swift"
    }
}

class IosDeveloper: CanWriteCode {
    func programming() -> String {
        return "Object-C"
    }
}

class WebDeveloper: CanWriteCode {
    func programming() -> String {
        return "Ruby"
    }
}

class Team {
    let ios: [IosDeveloper]
    let iosCool: [IosDeveloperCool]

    init(ios: [IosDeveloper], iosCool: [IosDeveloperCool]) {
        self.ios = ios
        self.iosCool = iosCool
    }

    func programming() -> [String] {
        return ios.map { $0.programming() } + iosCool.map { $0.programming() }
    }
}

class CoolTeam {
    let team: [CanWriteCode]

    init(team: [CanWriteCode]) {
        self.team = team
    }

    func programming() -> [String] {
        return team.map { $0.programming() }
    }
}
