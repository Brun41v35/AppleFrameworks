import SwiftUI

struct AFButton: View {

    // MARK: - Variables

    var textTitle: String

    // MARK: - Body

    var body: some View {
        Text(textTitle)
            .frame(width: 280,
                   height: 50)
            .background(.red)
            .foregroundColor(.white)
            .font(.title2)
            .fontWeight(.semibold)
            .clipShape(.buttonBorder)
    }
}

struct AFButton_Previews: PreviewProvider {
    static var previews: some View {
        AFButton(textTitle: "Learn More")
            .preferredColorScheme(.dark)
    }
}
