import SwiftUI

struct FremeworkDetailsView: View {

    // MARK: - Variable

    let framework: Framework
    @State private var isShowingSarariView = false

    // MARK: - Body

    var body: some View {
        VStack {
            FremeworkTitleView(framework:  framework)
            Text(framework.description)
                .font(.body)
                .padding()

            Spacer()

            Button {
                isShowingSarariView = true
            } label: {
                Label("Learn More", systemImage: "book.fill")
            }
            .buttonStyle(.bordered)
            .controlSize(.large)
            .tint(.red)
        }
        .sheet(isPresented: $isShowingSarariView, content: {
            SafariView(url: URL(string: framework.urlString)!)
        })
    }
}

struct FremeworkDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        FremeworkDetailsView(framework: MockData.sampleFramework)
            .preferredColorScheme(.dark)
    }
}
