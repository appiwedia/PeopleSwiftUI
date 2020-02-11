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
    
    static let `default` = [
    People(imageName: "people0", name: "Olivier"),
    People(imageName: "people1", name: "Sarah"),
    People(imageName: "people2", name: "Fadela"),
    People(imageName: "people3", name: "Zohra")]
}
