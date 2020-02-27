//
//  People.swift
//  PeopleSwiftUI
//
//  Created by Mickael Mas on 30/01/2020.
//  Copyright © 2020 APPIWEDIA. All rights reserved.
//

import Foundation

struct People: Identifiable {
    var id = UUID()
    var imageName: String
    var name: String
    var age: Int
    
    static let `default` = [
        People(imageName: "people0", name: "Olivier", age: 30),
        People(imageName: "people1", name: "Sarah", age: 22),
        People(imageName: "people2", name: "Fadela", age: 45),
        People(imageName: "people3", name: "Zohra", age: 23)]
}
