import SwiftUI

struct ContentView: View {
    @State private var proceed = false
    var body: some View {
        return Group {
            if proceed == true {
                InfoView()
            } else {

                VStack {
                    Text("Chipify")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    Text("Visualizing powerful Apple M series Chips")
                        .font(.title2)
                        .foregroundColor(.secondary)
                        .padding(.bottom, 30)
                        .padding(.top, 5)
                    Group {
                        Text("Let's Go")
                            .padding()
                            .padding(.horizontal, 100)
                            .foregroundColor(.white)
                            .background(.blue)
                            .cornerRadius(100)

                    }

                        .onTapGesture {
                        withAnimation(.easeOut(duration: 0.75)) {
                            proceed = true

                        }

                    }

                }
            }
        }
    }

}

