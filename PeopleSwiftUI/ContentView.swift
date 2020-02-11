//ContentView.swift
//  PeopleSwiftUI
//
//  Created by Mickael Mas on 30/01/2020.
//  Copyright © 2020 APPIWEDIA. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        List(People.default) { people in
            PeopleView(people: people)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct PeopleView: View {
    var people: People
    
    var body: some View {
        HStack {
            Image(people.imageName)
                .clipShape(Circle())
            Text(people.name)
        }
    }
}
