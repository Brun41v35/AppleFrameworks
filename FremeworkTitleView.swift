import SwiftUI

struct FremeworkTitleView: View {
    
    // MARK: - Variables
    
    var imageName: String
    var nameApp: String
    
    // MARK: - Body
    
    var body: some View {
        VStack {
            Image(imageName)
                .resizable()
                .frame(width: 90, height: 90)
            Text(nameApp)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
    }
}

struct FremeworkTitleView_Previews: PreviewProvider {
    static var previews: some View {
        FremeworkTitleView(imageName: "app-clip",
                           nameApp: "App Clips")
    }
}
