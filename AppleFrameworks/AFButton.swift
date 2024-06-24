//
//  AFButton.swift
//  AppleFrameworks
//
//  Created by Bruno Silva on 24/06/24.
//

import SwiftUI

struct AFButton: View {

    var title: String

    var body: some View {
        Text(title)
            .font(.title2)
            .fontWeight(.semibold)
            .frame(width: 280, height: 50)
            .background(Color.red)
            .foregroundStyle(.background)
            .clipShape(.buttonBorder)
    }
}

#Preview {
    AFButton(title: "Learn More")
}
