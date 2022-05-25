
import SwiftUI

struct MacStudioView: View {
    @State private var goBack = false
    @State private var goHome = false
    var body: some View {
        return Group {

            if goHome {
                ContentView()
            }
            else if goBack {
                M1UltraView()
            }
            else {

                ScrollView {
                    VStack {
                        Text("Mac Studio")
                            .font(.title2)
                            .fontWeight(.semibold)
                        Text("Empower Station")
                            .font(.title)
                            .fontWeight(.bold)
                        VStack {
                            Text("Packed with M1 Ultra")
                                .font(.largeTitle)
                                .fontWeight(.semibold)
                                .foregroundStyle(
                                LinearGradient(
                                    colors: [.purple, .blue],
                                    startPoint: .topLeading,
                                    endPoint: .bottomTrailing
                                )

                            )
                            Text("Built from two M1 Max chips, M1 Ultra lets you power through workflows on an unprecedented scale")
                                .font(.headline)
                            Text("""
Mac Studio is an entirely new Mac desktop. It packs outrageous performance, extensive connectivity, and new capabilities into an unbelievably compact form, putting everything you need within easy reach and transforming any space into a studio. And it all starts with your choice of the ferociously fast M1 Max or the all-new M1 Ultra — the most powerful chip ever in a personal computer.


""")
                            .font(.system(size: 25))
                            .fontWeight(.semibold)
                            .padding(.all)
                            .multilineTextAlignment(.leading)
                            
                            VStack(alignment: .leading) {
                                Group {
                                    HStack {

                                        VStack(alignment: .leading) {


                                            Text("Faster 8K render speed")
                                                .font(.title)
                                                .fontWeight(.bold)
                                            Capsule()
                                                .foregroundStyle(
                                                LinearGradient(
                                                    colors: [.purple, .blue],
                                                    startPoint: .topLeading,
                                                    endPoint: .bottomTrailing
                                                )
                                            )
                                                .frame(width: 500, height: 10)
                                                .padding(.horizontal, 0)
                                            Text("Mac Studio with M1 Ultra")
                                        }
                                        Text("5.0x")
                                            .font(.largeTitle)
                                            .fontWeight(.semibold)
                                            .foregroundStyle(
                                            LinearGradient(
                                                colors: [.purple, .blue],
                                                startPoint: .topLeading,
                                                endPoint: .bottomTrailing
                                            )
                                        )
                                    }
                                    HStack {

                                        VStack(alignment: .leading) {

                                            Capsule()
                                                .foregroundStyle(
                                                LinearGradient(
                                                    colors: [.pink, .purple],
                                                    startPoint: .topLeading,
                                                    endPoint: .bottomTrailing
                                                )
                                            )
                                                .frame(width: 350, height: 10)
                                                .padding(.horizontal, 0)
                                            Text("Mac Studio with M1 Max")
                                        }
                                        Text("3.5x")
                                            .font(.largeTitle)
                                            .fontWeight(.semibold)
                                            .foregroundStyle(
                                            LinearGradient(
                                                colors: [.pink, .purple],
                                                startPoint: .topLeading,
                                                endPoint: .bottomTrailing
                                            )
                                        )
                                    }
                                    HStack {

                                        VStack(alignment: .leading) {

                                            Capsule()
                                                .foregroundColor(.gray)
                                                .frame(width: 200, height: 10)
                                                .padding(.horizontal, 0)
                                            Text("Mac Pro with W5700X")
                                        }
                                        Text("1.4x")
                                            .foregroundColor(.gray)
                                            .font(.largeTitle)
                                            .fontWeight(.semibold)


                                    }
                                    HStack {

                                        VStack(alignment: .leading) {

                                            Capsule()
                                                .foregroundColor(.gray)
                                                .frame(width: 150, height: 10)
                                                .padding(.horizontal, 0)
                                            Text("27-inch iMac with 5700 XT")
                                        }


                                    }
                                }
                            }
                                .padding(.vertical)




                            VStack(alignment: .leading) {
                                Group {
                                    HStack {

                                        VStack(alignment: .leading) {


                                            Text("Faster computational fluid dynamics performance")
                                                .font(.title2)
                                                .fontWeight(.bold)
                                            Capsule()
                                                .foregroundStyle(
                                                LinearGradient(
                                                    colors: [.purple, .blue],
                                                    startPoint: .topLeading,
                                                    endPoint: .bottomTrailing
                                                )
                                            )
                                                .frame(width: 530, height: 10)
                                                .padding(.horizontal, 0)
                                            Text("Mac Studio with M1 Ultra")
                                        }
                                        Text("5.3x")
                                            .font(.largeTitle)
                                            .fontWeight(.semibold)
                                            .foregroundStyle(
                                            LinearGradient(
                                                colors: [.purple, .blue],
                                                startPoint: .topLeading,
                                                endPoint: .bottomTrailing
                                            )
                                        )
                                    }
                                    HStack {

                                        VStack(alignment: .leading) {

                                            Capsule()
                                                .foregroundStyle(
                                                LinearGradient(
                                                    colors: [.pink, .purple],
                                                    startPoint: .topLeading,
                                                    endPoint: .bottomTrailing
                                                )
                                            )
                                                .frame(width: 320, height: 10)
                                                .padding(.horizontal, 0)
                                            Text("Mac Studio with M1 Max")
                                        }
                                        Text("2.7x")
                                            .font(.largeTitle)
                                            .fontWeight(.semibold)
                                            .foregroundStyle(
                                            LinearGradient(
                                                colors: [.pink, .purple],
                                                startPoint: .topLeading,
                                                endPoint: .bottomTrailing
                                            )
                                        )
                                    }
                                    HStack {

                                        VStack(alignment: .leading) {

                                            Capsule()
                                                .foregroundColor(.gray)
                                                .frame(width: 200, height: 10)
                                                .padding(.horizontal, 0)
                                            Text("Mac Pro with 16-core chip")
                                        }
                                        Text("2.2x")
                                            .foregroundColor(.gray)
                                            .font(.largeTitle)
                                            .fontWeight(.semibold)


                                    }
                                    HStack {

                                        VStack(alignment: .leading) {

                                            Capsule()
                                                .foregroundColor(.gray)
                                                .frame(width: 150, height: 10)
                                                .padding(.horizontal, 0)
                                            Text("27-inch iMac 10‑core i9")
                                        }


                                    }
                                }
                            }
                                .padding(.vertical)
                            HStack {
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
                                Text("Go Home")

                                    .padding()
                                    .padding(.horizontal, 100)
                                    .foregroundColor(.white)
                                    .background(.blue)
                                    .cornerRadius(100)
                            }
                                .onTapGesture {
                                withAnimation(.easeInOut(duration: 0.5)) {
                                    goHome = true

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
