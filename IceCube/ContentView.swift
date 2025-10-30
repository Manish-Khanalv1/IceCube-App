import SwiftUI

struct ContentView: View {
    @State private var tapCount = 0
    
    var body: some View {
        VStack {
            
            // --- LOGO SECTION ---
            HStack {
                Link(destination: URL(string: "https://icecube.wisc.edu/")!) {
                    Image("icecube_logo")
                        .resizable()
                        .scaledToFit()
                }
                Link(destination: URL(string: "https://www.physics.utah.edu/")!) {
                    Image("uofu_physics")
                        .resizable()
                        .scaledToFit()
                }
            }
            .frame(height: 60)
            .padding(.bottom)
            
            
            // --- 1. FANCY TAP COUNTER ---
            VStack { // We put the two texts in their own V-Stack
                Text("You have tapped")
                    .font(.headline)
                    .foregroundStyle(.secondary) // Makes it a light gray
                
                Text("\(tapCount) times")
                    .font(.system(size: 50, weight: .bold)) // Big & Bold
                    .foregroundStyle(.blue) // Give it a color
            }
            .padding() // Adds space inside the box
            .background(Color.gray.opacity(0.15)) // Subtle gray background
            .cornerRadius(30) // Rounded corners for the box
            .padding(.bottom, 30) // Space below the counter
            
            
            // --- 2. FANCY "CLICK ME" BUTTON ---
            // We build a custom button by styling its "label"
            Button(action: { tapCount += 1 }) {
                Text("Click Me!")
                    .fontWeight(.bold)
                    .font(.title2)
                    .padding() // Internal spacing
                    .frame(maxWidth: .infinity) // Make it stretch edge-to-edge
                    .foregroundStyle(.white) // White text
                    .background(
                        // A beautiful gradient for the background
                        LinearGradient(
                            colors: [.blue, .purple],
                            startPoint: .leading,
                            endPoint: .trailing
                        )
                    )
                    .clipShape(Capsule()) // This makes it a "pill" shape
                    .shadow(radius: 5) // A subtle drop shadow
            }
            // Add padding so the button doesn't hit the screen edges
            .padding(.horizontal)


            
            // --- 3. FANCY "RESET" BUTTON ---
            Button("Reset Count") {
                tapCount = 0
            }
            .buttonStyle(.bordered)
            .tint(.red)
            .fontWeight(.bold) // Make the text bold
            .padding(.top, 10) // A little space from the button above

            
            Spacer() // Pushes everything to the top
            
        } // End of main VStack
        .padding()
    }
}

#Preview {
    ContentView()
}
