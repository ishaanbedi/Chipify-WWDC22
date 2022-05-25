import SwiftUI

extension View {
    func m1UltraShadow() -> some View {
        ZStack {
            ForEach(0..<2) { i in
                Rectangle()
                    .fill(
                    AngularGradient(
                        gradient: Gradient(colors: [.purple, .cyan, .purple, .purple,.purple, .yellow, .red, .pink, .purple]),
                        center: .center)
                )
                    .frame(width: 400, height: 300)
                    .mask(self.blur(radius: 15))
                    .overlay(self.blur(radius: 5 - CGFloat(i * 5)))
            }
        }
    }
}

struct M1UltraView: View {
    @State private var goBack = false
    @State private var goToStudio = false
    var body: some View {
        return Group {

            if goBack {
                MSeriesView()

            }
            else if goToStudio {
                MacStudioView()
            }
            else {

                ScrollView {
                    VStack {

                        Text("Apple M1 Ultra")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                        Group {
                            VStack(alignment: .center) {
                                Text("M1")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundColor(.gray)

                                Text("ULTRA")
                                    .font(.subheadline)
                                    .foregroundStyle(
                                    LinearGradient(
                                        colors: [.white, .purple, .cyan],
                                        startPoint: .topLeading,
                                        endPoint: .bottomTrailing
                                    )

                                )

                            }
                        }
                            .frame(width: 100, height: 100)
                            .fixedSize(horizontal: false, vertical: true)
                            .cornerRadius(10)
                            .padding()
                            .background(.black)
                            .m1UltraShadow()


                        Text(
                            "Built from two M1 Max chips, M1 Ultra lets you power through workflows on an unprecedented scale"
                        )
                            .fontWeight(.semibold)
                            .padding(.all)

                        HStack {
                            VStack {
                                Text("Another Leap Forward in the Transition to Apple Silicon.")
                                    .font(.title2)
                                    .fontWeight(.semibold)
                                    .foregroundStyle(
                                    LinearGradient(
                                        colors: [.purple, .blue],
                                        startPoint: .topLeading,
                                        endPoint: .bottomTrailing
                                    )
                                )
                                    .padding(.top)
                                Divider()
                                    .frame(width: 100)
                                    .padding()
                                HStack {
                                    VStack(alignment: .leading) {
                                        Text("Upto")
                                            .font(.caption)
                                        Text("3.8x")
                                            .font(.title)
                                            .fontWeight(.semibold)
                                            .foregroundStyle(
                                            LinearGradient(
                                                colors: [.blue, .purple],
                                                startPoint: .topLeading,
                                                endPoint: .bottomTrailing
                                            )
                                        )

                                        Text("faster CPU performance")
                                            .font(.caption)
                                    }

                                        .padding(.horizontal)
                                    VStack(alignment: .leading) {
                                        Text("Upto")
                                            .font(.caption)
                                        Text("4.5x")
                                            .font(.title)
                                            .fontWeight(.semibold)
                                            .foregroundStyle(
                                            LinearGradient(
                                                colors: [.blue, .purple],
                                                startPoint: .topLeading,
                                                endPoint: .bottomTrailing
                                            )
                                        )

                                        Text("faster GPU performance")
                                            .font(.caption)
                                    }
                                        .padding(.horizontal)
                                    VStack(alignment: .leading) {
                                        Text("Upto")
                                            .font(.caption)
                                        Text("3.0x")
                                            .font(.title)
                                            .fontWeight(.semibold)
                                            .foregroundStyle(
                                            LinearGradient(
                                                colors: [.blue, .purple],
                                                startPoint: .topLeading,
                                                endPoint: .bottomTrailing
                                            )
                                        )

                                        Text("faster machine learning")
                                            .font(.caption)
                                    }

                                }
                            }
                                .padding(.horizontal, 50)


                        }
                            .padding()
                        Text("Devices powered by Apple M1")
                            .font(.title2)
                            .fontWeight(.bold)
                            .padding(.top)
                        HStack {
                            Text("The all new Mac Studio.")
                                .font(.subheadline)
                                .fontWeight(.bold)
                            Group {
                                Text("Know more about Mac Studio")
                                    .font(.subheadline)
                                    .fontWeight(.bold)
                                    .foregroundColor(.blue)
                            }

                                .onTapGesture {
                                withAnimation(.easeInOut(duration: 1)) {
                                    goToStudio = true
                                }
                            }

                        }
                            .padding()
                        Divider()
                            .padding()
                        VStack {
                            Text("Visualizing CPU Mark Relative to Apple M1 Chip")
                                .font(.title2)
                                .fontWeight(.bold)
                            VStack(alignment: .leading) {
                                HStack(alignment: .center) {
                                    Text("Processor")
                                        .fontWeight(.bold)
                                        .font(.headline)
                                        .padding()

                                    Text("Average CPU Mark")
                                        .fontWeight(.bold)
                                        .font(.headline)
                                        .padding()

                                }
                                Group {

                                    HStack {
                                        Text("Apple M1 Ultra")
                                            .padding(.horizontal, 25)
                                        Capsule()
                                            .fill(Color.red)
                                            .frame(width: 100, height: 10)
                                            .padding(.horizontal, 0)

                                    }
                                    HStack {
                                        Text("Apple M1 Max")
                                            .padding(.horizontal, 20)
                                        Capsule()
                                            .fill(Color.cyan)
                                            .frame(width: 75, height: 10)
                                            .padding(.horizontal, 18)

                                    }
                                    HStack {
                                        Text("Apple M1 Pro")
                                            .padding(.horizontal, 25)
                                        Capsule()
                                            .fill(Color.green)
                                            .frame(width: 65, height: 10)
                                            .padding(.horizontal, 15)

                                    }
                                    HStack {
                                        Text("Apple M1")
                                            .padding(.horizontal, 25)
                                        Capsule()
                                            .fill(Color.gray)
                                            .frame(width: 50, height: 10)
                                            .padding(.horizontal, 45)

                                    }
                                }

                            }

                        }

                            .padding()
                        VStack {
                            Text("Visualizing CPU Mark as per single thread rating")
                                .font(.title2)
                                .fontWeight(.bold)
                            VStack(alignment: .leading) {
                                HStack(alignment: .center) {
                                    Text("Processor")
                                        .fontWeight(.bold)
                                        .font(.headline)
                                        .padding()

                                    Text("Average thread rating")
                                        .fontWeight(.bold)
                                        .font(.headline)
                                        .padding()

                                }
                                Group {

                                    HStack {
                                        Text("Apple M1 Ultra")
                                            .padding(.horizontal, 20)
                                        Capsule()
                                            .fill(Color.red)
                                            .frame(width: 100, height: 10)
                                            .padding(.horizontal, 28)

                                    }
                                    HStack {
                                        Text("Apple M1 Max")
                                            .padding(.horizontal, 25)
                                        Capsule()
                                            .fill(Color.cyan)
                                            .frame(width: 85, height: 10)
                                            .padding(.horizontal, 25)

                                    }
                                    HStack {
                                        Text("Apple M1 Pro")
                                            .padding(.horizontal, 25)
                                        Capsule()
                                            .fill(Color.green)
                                            .frame(width: 60, height: 10)
                                            .padding(.horizontal, 30)

                                    }
                                    HStack {
                                        Text("Apple M1")
                                            .padding(.horizontal, 25)
                                        Capsule()
                                            .fill(Color.gray)
                                            .frame(width: 50, height: 10)
                                            .padding(.horizontal, 60)

                                    }
                                }

                            }
                            Text("No need to say, there is no competition")
                                .font(.title3)
                                .fontWeight(.bold)
                                .padding()
                            VStack {
                                Text("Visualizing CPU Performance vs Power Consumption")
                                    .font(.title3)
                                    .fontWeight(.bold)
                                    .padding(.top, 5)
                                Text("Of the M1 Ultra Chip and Highest-end discrete GPU. ")
                                    .font(.headline)
                                    .fontWeight(.semibold)
                                    .foregroundColor(.secondary)
                                Image("M1UltraChart")
                                    .resizable()
                                    .frame(width: 750, height: 500)
                                    .padding(50)
                            }
                            VStack {
                                Text("Visualize real power of M1 Ultra with the all new Mac Studio!")
                                    .font(.title)
                                    .fontWeight(.bold)
                                Text("Click Here")
                                    .font(.title3)
                                    .fontWeight(.bold)
                                    .foregroundColor(.blue)
                                    .onTapGesture {
                                    withAnimation(.easeInOut(duration: 0.5)) {
                                        goToStudio = true

                                    }
                                }
                                    .padding(.all)

                            }
                            Group {
                                Text("Go Back")

                                    .padding()
                                    .padding(.horizontal, 100)
                                    .foregroundColor(.white)
                                    .background(.blue)
                                    .cornerRadius(100)
                            }
                                .onTapGesture {
                                withAnimation(.easeInOut(duration: 0.5)) {
                                    goBack = true

                                }
                            }
                                .padding(.top, 2)
                            Group {
                                Text(" ")
                            }
                                .padding(.all)
                        }
                    }
                }
            }
        }
    }
}
