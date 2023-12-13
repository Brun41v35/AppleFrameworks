import SwiftUI

struct FremeworkDetailsView: View {

    // MARK: - Variable

    let framework: Framework

    // MARK: - Body

    var body: some View {
        VStack {
            HStack {
                Spacer()

                Button {
                    
                } label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label))
                        .imageScale(.medium)
                        .frame(width: 44, height: 44)
                }
            }
            .padding()

            Spacer()

            FremeworkTitleView(framework:  framework)
            Text(framework.description)
                .font(.body)
                .padding()

            Spacer()

            Button {

            } label: {
                AFButton(textTitle: "Learn More")
            }
        }
    }
}

struct FremeworkDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        FremeworkDetailsView(framework: MockData.sampleFramework)
            .preferredColorScheme(.dark)
    }
}
