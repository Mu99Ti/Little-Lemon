//
//  ContentView.swift
//  Little-Lemon
//
//  Created by Muhamad Talebi on 6/22/23.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var model = Model()
    @State var tabSelection = 0
    
    var body: some View {
        TabView (selection: $model.tabViewSelectedIndex){
            LocationsView() //4
                .tag(0)
                .tabItem {
                    if !model.displayingReservationForm {
                        Label("Locations", systemImage: "fork.knife")
                    }
                }
            
            ReservationView()
                .tag(1)
                .tabItem {
                    if !model.displayingReservationForm {
                        Label("Reservation", systemImage: "square.and.pencil")
                    }
                }
        }
        .environmentObject(model)

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

