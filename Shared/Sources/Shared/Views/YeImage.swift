import SwiftUI

public struct YeImage: View {
    
    public enum Size: Int {
        case small = 50
        case large = 100
    }
    
    public init(_ size: Size){
        self.size = size
    }
    
    var size: Size
    
    public var body: some View {
        Image("ye")
            .resizable()
            .frame(width: CGFloat(size.rawValue),
                   height: CGFloat(size.rawValue),
                   alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .shadow(radius: 2)
            .animation(.easeInOut(duration: 0.2))
            
    }
}

struct YeImage_Previews: PreviewProvider {
    static var previews: some View {
        YeImage(.large)
    }
}
