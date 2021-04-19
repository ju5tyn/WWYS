//
//  Widget.swift
//  Widget
//
//  Created by Justyn Henman on 09/04/2021.
//

import WidgetKit
import SwiftUI
import Shared

struct Provider: TimelineProvider {
    
    public init(viewModel: QuoteViewModel) {
        self.viewModel = viewModel
    }
    
    @ObservedObject var viewModel: QuoteViewModel
    
    func placeholder(in context: Context) -> QuoteEntry {
        
        QuoteEntry(date: Date(), quote: "Hey")
        
    }

    func getSnapshot(in context: Context, completion: @escaping (QuoteEntry) -> ()) {
        let entry = QuoteEntry(date: Date(), quote: "Hey")
        completion(entry)
    }
    

    func getTimeline(in context: Context, completion: @escaping (Timeline<Entry>) -> ()) {
        
        self.viewModel.getResult()
        
        if let quote = viewModel.result?.quote{
            let entry = QuoteEntry(date: Date(), quote: quote)
            
            let expiryDate = Calendar
                        .current.date(byAdding: .minute, value: 2,
                                      to: Date()) ?? Date()
            
            let timeline = Timeline(entries: [entry], policy: .after(expiryDate))
            
            completion(timeline)
        }
        
    }
}



struct QuoteEntry: TimelineEntry {
    let date: Date
    let quote: String
}

struct WidgetEntryView : View {
    var entry: Provider.Entry
    
    var body: some View {
        
        HStack{
            VStack{
                SpeechBubbleView(entry.quote)
            }
            Spacer()
            VStack{
                YeImage(.large)
            }
        }.padding()
        
    }
}

@main
struct YeWidget: Widget {
    let kind: String = "Widget"
    let viewModel = QuoteViewModel(quoteStore: nil)

    var body: some WidgetConfiguration {
        StaticConfiguration(kind: kind, provider: Provider(viewModel: viewModel)) { entry in
            WidgetEntryView(entry: entry)
        }
        .configurationDisplayName("Ye Widget")
        .description("Periodically displays quotes")
    }
}

struct Widget_Previews: PreviewProvider {
    static var previews: some View {
        WidgetEntryView(entry: QuoteEntry(date: Date(), quote: "Hey"))
            .previewContext(WidgetPreviewContext(family: .systemMedium))
    }
}
