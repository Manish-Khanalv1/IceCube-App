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
            
            // --- New Logos (Side by side) ---
            // Horizontal Stack
            HStack {
                Image("icecube_logo") // <-- Change this to your logo's name
                .resizable()         // Makes the image resizeable
                .scaledToFit()       // Fits it to the available space
//                .frame(height: 80)   // Sets a fixed height (optional)
//                .padding()
                            
                // 2. Add the second image (icecube logo)
                Image("uofu_physics") // <-- Change this to your logo's name
                    .resizable()
                    .scaledToFit()
                    .frame(height: 60)
                
            }
            .frame(height:80)
            .padding(.bottom)

            // ------------------------

            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            
            Text("This is my first app!")
            Text("You are have tapped \(tapCount) times")
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
 
