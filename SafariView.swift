import SwiftUI
import SafariServices

struct SafariView: UIViewControllerRepresentable {

    // MARK: - Constant

    let url: URL

    // MARK: - Methods

    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) -> SFSafariViewController {
        SFSafariViewController(url: url)
    }

    func updateUIViewController(_ uiViewController: SFSafariViewController,
                                context: UIViewControllerRepresentableContext<SafariView>) {}
}
