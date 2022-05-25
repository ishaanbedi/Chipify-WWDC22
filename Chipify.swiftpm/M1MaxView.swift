import SwiftUI

extension View {
    func m1MaxShadow() -> some View {
        ZStack {
            ForEach(0..<2) { i in
                Rectangle()
                    .fill(
                    AngularGradient(
                        gradient: Gradient(colors: [.purple]),
                        center: .center)
                )
                    .frame(width: 400, height: 300)
                    .mask(self.blur(radius: 15))
                    .overlay(self.blur(radius: 5 - CGFloat(i * 5)))
            }
        }
    }
}

struct M1MaxView: View {
    @State private var renderTime: Double = 0

    @State private var goBack = false
    var body: some View {
        return Group {

            if goBack {
                MSeriesView()
            } else {

                ScrollView {
                    VStack {

                        Text("Apple M1 Max")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                        Group {
                            VStack(alignment: .center) {
                                Text("M1")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundColor(.gray)

                                Text("MAX")
                                    .font(.subheadline)
                                    .foregroundStyle(
                                    LinearGradient(
                                        colors: [.white, .purple],
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
                            .m1MaxShadow()


                        Text(
                            "M1 Max is the most powerful chip ever created for a pro notebook"
                        )
                            .fontWeight(.semibold)
                            .padding(.all)

                        HStack {
                            VStack {
                                Text("Thinking this is fast? This is scary faster.")
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

                                        Text("10-core CPU")
                                            .font(.title)
                                            .fontWeight(.semibold)
                                            .foregroundStyle(
                                            LinearGradient(
                                                colors: [.purple, .blue],
                                                startPoint: .topLeading,
                                                endPoint: .bottomTrailing
                                            )
                                        )

                                            .padding(.horizontal, 10)

                                    }

                                    VStack(alignment: .trailing) {
                                        Text("Upto")
                                            .font(.caption)
                                        Text("32-core")
                                            .font(.title)
                                            .fontWeight(.semibold)
                                            .foregroundStyle(
                                            LinearGradient(
                                                colors: [.blue, .purple],
                                                startPoint: .topLeading,
                                                endPoint: .bottomTrailing
                                            )
                                        )

                                        Text("GPU")
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
                            Text("MacBook Pro 14”")
                                .font(.subheadline)
                                .fontWeight(.bold)
                            Text("MacBook Pro 16”")
                                .font(.subheadline)
                                .fontWeight(.bold)
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
                                        Text("Apple M1 Max")
                                            .padding(.horizontal, 25)
                                        Capsule()
                                            .fill(Color.red)
                                            .frame(width: 100, height: 10)
                                            .padding(.horizontal, 0)

                                    }
                                    HStack {
                                        Text("i9 9900K")
                                            .padding(.horizontal, 25)
                                        Capsule()
                                            .fill(Color.cyan)
                                            .frame(width: 60, height: 10)
                                            .padding(.horizontal, 35)

                                    }
                                    HStack {
                                        Text("Apple M1")
                                            .padding(.horizontal, 25)
                                        Capsule()
                                            .fill(Color.green)
                                            .frame(width: 55, height: 10)
                                            .padding(.horizontal, 35)

                                    }
                                    HStack {
                                        Text("i7 9700K")
                                            .padding(.horizontal, 25)
                                        Capsule()
                                            .fill(Color.gray)
                                            .frame(width: 45, height: 10)
                                            .padding(.horizontal, 38)

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
                                        Text("Apple M1 Max")
                                            .padding(.horizontal, 20)
                                        Capsule()
                                            .fill(Color.red)
                                            .frame(width: 100, height: 10)
                                            .padding(.horizontal, 24)

                                    }
                                    HStack {
                                        Text("Apple M1")
                                            .padding(.horizontal, 25)
                                        Capsule()
                                            .fill(Color.cyan)
                                            .frame(width: 85, height: 10)
                                            .padding(.horizontal, 50)

                                    }
                                    HStack {
                                        Text("i9 9900K")
                                            .padding(.horizontal, 25)
                                        Capsule()
                                            .fill(Color.green)
                                            .frame(width: 60, height: 10)
                                            .padding(.horizontal, 50)

                                    }
                                    HStack {
                                        Text("i9 9700K")
                                            .padding(.horizontal, 25)
                                        Capsule()
                                            .fill(Color.gray)
                                            .frame(width: 50, height: 10)
                                            .padding(.horizontal, 52)

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
                                Text("Of the M1 Max Chip and competing laptops. ")
                                    .font(.headline)
                                    .fontWeight(.semibold)
                                    .foregroundColor(.secondary)
//                  .padding()
                                Image("M1MaxChart")
                                    .resizable()
                                    .frame(width: 750, height: 500)
                                    .padding(50)
                            }
                            VStack {
                                Text("Visualize 4K video rendering time with M1 Max Chip")
                                    .font(.title)
                                    .fontWeight(.bold)
                                Group {


                                    Slider(value: $renderTime, in: 0...59)
                                    Text("\(renderTime, specifier: "%.1f") minutes 4K video will take around \(renderTime / 7.4, specifier: "%.1f") minutes to render.")
                                }
                                    .padding(.horizontal, 100)
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
