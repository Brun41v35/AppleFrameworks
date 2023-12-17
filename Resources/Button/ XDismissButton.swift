//
//   XDismissButton.swift
//  AppleFrameworks
//
//  Created by Bruno Silva on 2023-12-17.
//

import SwiftUI

struct XDismissButton: View {

    // MARK: - Property Wrapper

    @Binding var isShowingDetailView: Bool

    // MARK: - Body

    var body: some View {
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
    }
}

#Preview {
    XDismissButton(isShowingDetailView: .constant(false))
}
