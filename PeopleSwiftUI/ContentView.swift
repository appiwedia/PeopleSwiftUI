//ContentView.swift
//  PeopleSwiftUI
//
//  Created by Mickael Mas on 30/01/2020.
//  Copyright © 2020 APPIWEDIA. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        TabView {
            
            PeopleListView()
                .tabItem { VStack {
                    Image(systemName: "person.3")
                    Text("Mes potes")
                    }
            }
            
            Text("Favoris")
                .tabItem { VStack {
                    Image(systemName: "star")
                    Text("Favoris")
                    }
            }
            
            Text("Recherche")
                .tabItem { VStack {
                    Image(systemName: "magnifyingglass")
                    Text("Recherche")
                    }
            }
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

struct PeopleListView: View {
    var body: some View {
        NavigationView {
            List(People.default) { people in
                
                NavigationLink(destination: PeopleDetailView(people: people)) {
                    PeopleView(people: people)
                }
            }.navigationBarTitle("Mes potes", displayMode: .large)
        }
    }
}
