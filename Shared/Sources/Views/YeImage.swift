import SwiftUI

struct YeImage: View {
    var body: some View {
        Image("ye")
            
            .resizable()
            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .shadow(radius: 2)
            .animation(.easeInOut(duration: 0.2))
            
    }
}

struct YeImage_Previews: PreviewProvider {
    static var previews: some View {
        YeImage()
    }
}
