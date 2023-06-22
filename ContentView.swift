//
//  ContentView.swift
//  OnlineStore
//
//  Created by Dinith Hasaranga on 2023-06-22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
           HomeView()
        }
        .padding()
        .background(Color("BgColor"))

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
