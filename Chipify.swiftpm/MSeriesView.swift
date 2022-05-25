import SwiftUI

struct MSeriesView: View {
    @State private var goBack = false
    @State private var goToM1 = false
    @State private var goToM1Pro = false
    @State private var goToM1Max = false
    @State private var goToM1Ultra = false


    var body: some View {
        return Group {
            if goBack {
                InfoView()
            }
            else if goToM1 {
                M1View()
            }
            else if goToM1Pro {
                M1ProView()
            }
            else if goToM1Max {
                M1MaxView()
            }
            else if goToM1Ultra {
                M1UltraView()
            }
            else {
                VStack {
                    Text("Tap the M Series chip you want to know more about")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.primary)
                        .padding()
                    List {
                        Group {


                            ChipRows(title: "Apple M1", description: "2020", icon: "cpu")


                        }
                            .onTapGesture {
                            withAnimation(.easeInOut(duration: 0.5)) {
                                goToM1 = true
                            }
                        }

                            .padding()
                        Group {


                            ChipRows(title: "Apple M1 Pro", description: "2021", icon: "cpu")
                                .onTapGesture {
                                withAnimation(.easeInOut(duration: 0.5)) {
                                    goToM1Pro = true
                                }
                            }
                        }
                            .padding()
                        Group {


                            ChipRows(title: "Apple M1 Max", description: "2021", icon: "cpu")
                                .onTapGesture {
                                withAnimation(.easeInOut(duration: 0.5)) {
                                    goToM1Max = true
                                }
                            }
                        }
                            .padding()
                        Group {


                            ChipRows(title: "Apple M1 Ultra", description: "2022", icon: "cpu")
                                .onTapGesture {
                                withAnimation(.easeInOut(duration: 0.5)) {
                                    goToM1Ultra = true
                                }
                            }
                        }
                            .padding()

                    }

                    Group {
                        Button("Go Back") {
                            withAnimation(.easeInOut(duration: 0.5)) {
                                goBack = true
                            }
                        }
                            .padding()
                            .foregroundColor(.white)
                            .background(.blue)
                            .cornerRadius(100)
                    }
                        .padding(.vertical, 10)
                }
            }


        }

    }
}
