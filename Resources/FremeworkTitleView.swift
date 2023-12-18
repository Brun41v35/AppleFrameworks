import SwiftUI

struct FremeworkTitleView: View {
    
    // MARK: - Variables

    let framework: Framework
    
    // MARK: - Body
    
    var body: some View {
        VStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
                .tint(Color(.label))
        }
        .padding()
    }
}

struct FremeworkTitleView_Previews: PreviewProvider {
    static var previews: some View {
        FremeworkTitleView(framework: MockData.sampleFramework)
    }
}
