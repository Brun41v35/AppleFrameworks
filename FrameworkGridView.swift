import SwiftUI

struct FrameworkGridView: View {

    // MARK: - Variables

    let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]

    // MARK: - Body

    var body: some View {
        LazyVGrid(columns: columns) {
            FremeworkTitleView(imageName: "app-clip",
                               nameApp: "App Clips")
            FremeworkTitleView(imageName: "app-clip",
                               nameApp: "App Clips")
            FremeworkTitleView(imageName: "app-clip",
                               nameApp: "App Clips")
        }
    }
}

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
    }
}
