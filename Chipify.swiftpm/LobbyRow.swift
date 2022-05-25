import SwiftUI

struct LobbyRow: View {
    let title: String
    let description: String
    let icon: String

    var body: some View {
        HStack {
            Image(systemName: icon)
                .frame(width: 50)
                .font(.title)
                .foregroundColor(.accentColor)

            VStack(alignment: .leading) {
                Text(title)
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.bottom, 2)
                Text(description)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.secondary)
                    .fixedSize(horizontal: false, vertical: true)

            }


        }
            .padding()
    }
}

