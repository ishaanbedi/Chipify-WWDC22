import SwiftUI

extension View {
    func m1Shadow() -> some View {
        ZStack {
            ForEach(0..<2) { i in
                Rectangle()
                    .fill(
                    AngularGradient(
                        gradient: Gradient(colors: [.red, .purple, .red, .yellow, .cyan, .red]),
                        center: .center)
                )

                    .frame(width: 400, height: 300)
                    .mask(self.blur(radius: 15))
                    .overlay(self.blur(radius: 5 - CGFloat(i * 5)))
            }
        }
    }
}

struct M1View: View {


    @State private var goBack = false
    @State private var renderTime: Double = 0
    var body: some View {
        return Group {

            if goBack {
                MSeriesView()
            } else {

                ScrollView {
                    VStack {

                        Text("Apple M1")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                        Text("2020")
                            .font(.headline)
                            .fontWeight(.semibold)
                            .foregroundColor(.secondary)

                        Group {
                            Text("M1")
                                .font(.title)
                                .fontWeight(.bold)

                                .foregroundStyle(

                                LinearGradient(
                                    colors: [.gray, .white],
                                    startPoint: .topLeading,
                                    endPoint: .bottomTrailing
                                )
                            )
                        }
                            .frame(width: 100, height: 100)
                            .fixedSize(horizontal: false, vertical: true)
                            .cornerRadius(10)
                            .padding()
                            .background(.black)
                            .m1Shadow()

                        Text(
                            "With industry-leading performance, powerful features, and incredible efficiency, M1 is Apple’s first chip designed specifically for the Mac"
                        )
                            .fontWeight(.semibold)
//                            .padding(.horizontal, 5)

                        HStack {
                            VStack {
                                Text("8 Core CPU")
                                    .font(.title)
                                    .fontWeight(.semibold)
                                    .foregroundStyle(
                                    LinearGradient(
                                        colors: [.orange, .red],
                                        startPoint: .topLeading,
                                        endPoint: .bottomTrailing
                                    )
                                )
                                Divider()
                                    .frame(width: 100)

                                VStack {
                                    Text("Upto")
                                        .font(.caption)
                                    Text("3.5x")
                                        .font(.title)
                                        .fontWeight(.semibold)
                                        .foregroundStyle(
                                        LinearGradient(
                                            colors: [.orange, .red],
                                            startPoint: .topLeading,
                                            endPoint: .bottomTrailing
                                        )
                                    )

                                    Text("Faster Performance")
                                        .font(.caption)
                                }
                            }
                                .padding(.horizontal, 50)

                            VStack(alignment: .trailing) {

                                VStack(alignment: .leading) {
                                    Text("Matches peak PC performance using")
                                        .font(.caption2)
                                    Text("25%")
                                        .font(.title)
                                        .fontWeight(.semibold)
                                        .foregroundStyle(
                                        LinearGradient(
                                            colors: [.pink, .red],
                                            startPoint: .topLeading,
                                            endPoint: .bottomTrailing
                                        )
                                    )

                                    Text("of the power.")
                                        .font(.caption2)
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
                            Text("Macbook Air")
                                .font(.subheadline)
                                .fontWeight(.bold)
                            Text("Macbook Pro")
                                .font(.subheadline)
                                .fontWeight(.bold)
                            Text("Mac Mini")
                                .font(.subheadline)
                                .fontWeight(.bold)
                            Text("iMac 2021")
                                .font(.subheadline)
                                .fontWeight(.bold)
                            Text("iPad Pro 2021")
                                .font(.subheadline)
                                .fontWeight(.bold)
                            Text("iPad Air 2022")
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
                                        Text("Apple M1")
                                            .padding(.horizontal, 25)
                                        Capsule()
                                            .fill(Color.red)
                                            .frame(width: 100, height: 10)
                                            .padding(.horizontal, 25)

                                    }
                                    HStack {
                                        Text("i7 10750h")
                                            .padding(.horizontal, 25)
                                        Capsule()
                                            .fill(Color.cyan)
                                            .frame(width: 75, height: 10)
                                            .padding(.horizontal, 24)

                                    }
                                    HStack {
                                        Text("i7 9750h")
                                            .padding(.horizontal, 25)
                                        Capsule()
                                            .fill(Color.green)
                                            .frame(width: 60, height: 10)
                                            .padding(.horizontal, 32)

                                    }
                                    HStack {
                                        Text("i7 8750h")
                                            .padding(.horizontal, 25)
                                        Capsule()
                                            .fill(Color.gray)
                                            .frame(width: 50, height: 10)
                                            .padding(.horizontal, 32)

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
                                        Text("Apple M1")
                                            .padding(.horizontal, 25)
                                        Capsule()
                                            .fill(Color.red)
                                            .frame(width: 100, height: 10)
                                            .padding(.horizontal, 26)

                                    }
                                    HStack {
                                        Text("i7 10750h")
                                            .padding(.horizontal, 25)
                                        Capsule()
                                            .fill(Color.cyan)
                                            .frame(width: 60, height: 10)
                                            .padding(.horizontal, 25)

                                    }
                                    HStack {
                                        Text("i7 9750h")
                                            .padding(.horizontal, 25)
                                        Capsule()
                                            .fill(Color.green)
                                            .frame(width: 50, height: 10)
                                            .padding(.horizontal, 35)

                                    }
                                    HStack {
                                        Text("i7 8750h")
                                            .padding(.horizontal, 25)
                                        Capsule()
                                            .fill(Color.gray)
                                            .frame(width: 45, height: 10)
                                            .padding(.horizontal, 34)

                                    }
                                }

                            }
                            Text("Clearly, M1 beats all the charts")
                                .font(.title3)
                                .fontWeight(.bold)
                                .padding()
                            VStack {
                                Text("Visualizing CPU Performance vs Power Consumption")
                                    .font(.title3)
                                    .fontWeight(.bold)
                                    .padding(.top, 5)
                                Text("Of the M1 Chip and competing laptops. ")
                                    .font(.headline)
                                    .fontWeight(.semibold)
                                    .foregroundColor(.secondary)
                                    .padding()
                                Image("M1Chart")
                                    .resizable()
                                    .frame(width: 750, height: 500)
                                    .padding(50)
                            }
                            VStack {
                                Text("Visualize 4K video rendering time with M1 Chip")
                                    .font(.title)
                                    .fontWeight(.bold)
                                Group {


                                    Slider(value: $renderTime, in: 0...59)
                                    Text("\(renderTime, specifier: "%.1f") minutes 4K video will take around \(renderTime / 3.1, specifier: "%.1f") minutes to render.")
                                        .font(.title3)
                                }
                                    .padding(.horizontal, 100)
                                    .padding(.vertical, 10)

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
}
