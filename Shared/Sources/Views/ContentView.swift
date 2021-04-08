import SwiftUI
import Combine

struct ContentView: View {
    
    @ObservedObject var viewModel = ViewModel()

    var body: some View {
        NavigationView {
            LazyVStack {
                HStack {
                    Spacer(minLength: 10)
                    if let quote = viewModel.result?.textContent{
                        SpeechBubbleView(text: quote)
                    }
                    Button(action: {self.viewModel.getResult()}) {
                        YeImage()
                    }.yeButtonStyle()
                    
                    Spacer(minLength: 2)
                }
                Spacer(minLength: 50)
                Button(action: {self.viewModel.getResult()}) {
                    HStack {
                        Image(systemName: "hand.point.right.fill")
                            .imageScale(.large)
                        Text("Find out")
                            .font(Font.body.bold())
                    }
                    .padding()
                    .foregroundColor(Color.primary)
                    .colorInvert()
                    
                }
                .myButtonStyle()
            Spacer(minLength: 300)
            }
            
            .navigationBarTitle(Text("What would ye say?"))
        }
        //.onAppear(perform: {loadData()})
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .previewDevice("iPhone 11 Pro")
                
        }
    }
}
