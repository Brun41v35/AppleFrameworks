import SwiftUI

struct FremeworkTitleView: View {
    
    // MARK: - Variables

    let framework: Framework
    
    // MARK: - Body
    
    var body: some View {
        HStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 70, height: 70)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
                .padding()
        }
    }
}

struct FremeworkTitleView_Previews: PreviewProvider {
    static var previews: some View {
        FremeworkTitleView(framework: MockData.sampleFramework)
    }
}
