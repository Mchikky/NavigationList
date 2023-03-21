//
//  ContentView.swift
//  NavigationList
//
//  Created by Chikaodili Deng on 20/03/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List(listAnimals) { animals in
                NavigationLink {
                    AnimalDetail()
                } label: {
                    HStack {
                        Image(animals.image)
                            .resizable()
                            .frame(width: 50, height: 50)
                            .clipShape(Circle())
                        Text(animals.name)
                    }
                }
                .navigationTitle("Animal")
                    }
                }
            }
          
        }
    

var listAnimals = [
    Animal(name:"Deer", image:"Deer",country: "England" ),
    Animal(name: "Bear", image:"Bear", country:"Scotland"),
    Animal(name:"Bull", image:"Bull", country: "Mexico"),
    Animal(name: "Duck", image: "Duck", country: "France"),
    Animal(name: "Eagle", image: "Eagle", country: "United States"),
    Animal(name: "Fox", image: "Fox", country: "Antarctica"),
    Animal(name: "Horse",image: "Horse", country: "Brazil"),
    Animal(name: "Monkey", image:"Monkey", country: "Indonesia")
]


struct Animal: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var country: String
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
