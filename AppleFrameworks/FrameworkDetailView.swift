import SwiftUI

struct FrameworkDetailView: View {

    let framework: Framework

    var body: some View {

        VStack {

            HStack {
                Spacer()
                Button {

                } label: {
                    Image(systemName: "xmark")
                        .foregroundStyle(Color(.label))
                        .imageScale(.large)
                        .frame(width: 50, height: 50)
                }
            }
            .padding()

            Spacer()

            FrameworkTitleView(framework: framework)

            Text(framework.description)
                .font(.body)
                .padding()

            Spacer()

            Button {
                print("Go to Web")
            } label: {
                AFButton(title: "Learn More")
            }
        }
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework)
}
