//
//  ContentView.swift
//  IceCube
//
//  Created by Manish Khanal on 10/27/25.
//

import SwiftUI

struct ContentView: View {
    @State private var tapCount=0
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            
            Text("This is my first app!")
            Text("Yo have tapped \(tapCount) times")
                .padding()
            Button("Click Me!") {
                tapCount+=1 //
                // This is the "action"
                // Nothing happens yet!
            }
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
