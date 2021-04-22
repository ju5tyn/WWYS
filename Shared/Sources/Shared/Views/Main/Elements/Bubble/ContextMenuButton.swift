import SwiftUI

public struct ContextMenuButton: View {
    
    public init(_ quote: Quote, kind: Kind){
        self.quote = quote
        self.kind = kind
    }
    
    public enum Kind{
        case share, copy
    }
    
    public var quote: Quote
    public var kind: Kind
    
    public var body: some View{
        
        switch kind{
            case .share:
                    Button{ presentShareSheet(using: quote) }
                        label: {
                            VStack{
                                Image(systemName: "square.and.arrow.up.fill")
                                Text("share")
                            }
                        }
                    
            case .copy:
                Button { UIPasteboard.general.string = quote.quote }
                    label: {
                        VStack{
                            Image(systemName: "doc.on.clipboard.fill")
                            Text("copy")
                        }
                    }
        
        }
    }
    
    //Presents share sheet with a given quote
    public func presentShareSheet(using quote: Quote) {
        let data = quote.quote + " - Kanye"
        let av = UIActivityViewController(activityItems: [data], applicationActivities: nil)
        UIApplication.shared.windows.first?.rootViewController?.present(av, animated: true, completion: nil)
    }
    
    
}
