import SwiftUI

struct FrameworkGridView: View {

    // MARK: - Variables

    @StateObject var viewModel = FrameworkGridViewModel()

    // MARK: - Body

    var body: some View {
        NavigationStack {
            List {
                ForEach(MockData.frameworks) { framework in
                    NavigationLink(destination: FremeworkDetailsView(framework: framework,
                                                                     isShowingDetailView: $viewModel.isShowingDetailView)) {
                        FremeworkTitleView(framework: framework)
                    }
                }
            }
            .navigationTitle("🍎 Frameworks")
        }
        .tint(Color(.label))
    }
}

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
            .preferredColorScheme(.dark)
    }
}
