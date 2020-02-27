//
//  PeopleDetailView.swift
//  PeopleSwiftUI
//
//  Created by Mickael Mas on 27/02/2020.
//  Copyright © 2020 APPIWEDIA. All rights reserved.
//

import SwiftUI

struct PeopleDetailView: View {
    
    var people: People
    
    var body: some View {
        VStack(spacing: 20) {
            Image(people.imageName)
                .resizable()
                .clipShape(Circle())
                .frame(width: 250, height: 250)
            Text(people.name)
                .font(.largeTitle)
            Text("\(people.age) ans")
                .font(.subheadline)
                .foregroundColor(.red)
                
        }.navigationBarTitle("\(people.name)", displayMode: .inline)
    }
}

struct PeopleDetailView_Previews: PreviewProvider {
    static var previews: some View {
        
        NavigationView {
            PeopleDetailView(people: People(imageName: "people0", name: "Olivier", age: 30))
                .navigationBarTitle("Olivier", displayMode: .inline)
        }
    }
}
