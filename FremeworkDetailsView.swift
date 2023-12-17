import SwiftUI

struct FremeworkDetailsView: View {

    // MARK: - Variable

    let framework: Framework
    @Binding var isShowingDetailView: Bool
    @State private var isShowingSarariView = false

    // MARK: - Body

    var body: some View {
        VStack {
            HStack {
                Spacer()

                Button {
                    isShowingDetailView = false
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
                isShowingSarariView = true
            } label: {
                AFButton(textTitle: "Learn More")
            }
        }
        .sheet(isPresented: $isShowingSarariView, content: {
            SafariView(url: URL(string: framework.urlString)!)
        })
    }
}

struct FremeworkDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        FremeworkDetailsView(framework: MockData.sampleFramework,
                             isShowingDetailView: .constant(false))
            .preferredColorScheme(.dark)
    }
}
