import SwiftUI

struct FrameworkGridView: View {

    // MARK: - Variables

    @StateObject var viewModel = FrameworkGridViewModel()

    let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]

    // MARK: - Body

    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(MockData.frameworks) { framework in
                        FremeworkTitleView(framework: framework)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                            }
                    }
                }
            }
            .navigationTitle("🍎 Frameworks")
            .sheet(isPresented: $viewModel.isShowingDetailView) {
                FremeworkDetailsView(framework: viewModel.selectedFramework ?? MockData.sampleFramework,
                                     isShowingDetailView: $viewModel.isShowingDetailView)
            }
        }
    }
}

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
            .preferredColorScheme(.dark)
    }
}
