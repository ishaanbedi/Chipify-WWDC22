import SwiftUI

struct InfoView: View {
    @State private var proceed = false
    var body: some View {
        return Group {
            if proceed {
                MSeriesView()
            }
            else {



                ScrollView {


                    VStack {
                        Text("Introduction")
                            .font(.system(size: 60))
                            .fontWeight(.bold)
                        Group {


                            VStack(alignment: .leading) {
                                Text("""
        The M series chips are the modern ARM-based architecture chips in Apple's silicon series, which deliver promising performance and outstanding productivity.
    """)
                                    .font(.system(size: 25))
                                    .fontWeight(.semibold)
                                    .padding(.all)
                                    .multilineTextAlignment(.leading)
                                Text("""
        The introduction of these powerful chipsets remarks the transition of Apple devices to the silicon based in-house-designed chips for Macs, iPads and other devices towards a close 'Apple Ecosystem' for faster and boosted performance for the native system-optimized support.
    """)
                                    .font(.system(size: 25))
                                    .fontWeight(.semibold)
                                    .padding(.all)
                                    .multilineTextAlignment(.leading)
                                Text("""
        The M series chips power the MacBook Air, MacBook Pro, Mac Mini, iMac, Mac Pro, and iPads and promise a smooth functioning of the devices and help in ensuring the blazing-fast work-flow of the end user.
    """)
                                    .font(.system(size: 25))
                                    .fontWeight(.semibold)
                                    .padding(.all)
                                    .multilineTextAlignment(.leading)
                                Text("""

    Lately, the Apple fans around the world have witnessed four powerful members of the M-Series family:
    M1, M1 Pro, M1 Max & M1 Ultra

    """)
                                    .font(.system(size: 25))
                                    .fontWeight(.semibold)
                                    .padding(.all)
                                    .multilineTextAlignment(.leading)


                                Text("""
    In this playground, we will explore these chips and will visualize their capabilities, functioning, statistics & performance.

    """)
                                    .font(.system(size: 25))
                                    .fontWeight(.semibold)
                                    .padding(.all)
                                    .multilineTextAlignment(.leading)
                            }
                            Group {
                                Text("Let's Go")

                                    .padding()
                                    .padding(.horizontal, 100)
                                    .foregroundColor(.white)
                                    .background(.blue)
                                    .cornerRadius(100)
                            }
                                .onTapGesture {
                                withAnimation(.easeInOut(duration: 0.5)) {
                                    proceed = true

                                }
                            }
                                .padding(.vertical, 4)
                        }
                    }
                }
            }
        }
    }
}
