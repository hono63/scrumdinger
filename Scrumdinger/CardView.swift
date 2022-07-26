//
//  CardView.swift
//  Scrumdinger
//

import SwiftUI

struct CardView: View {
    let scrum: DailyScrum
    var body: some View {
        VStack(alignment: .leading) {
            Text(scrum.title)
                .font(.headline)
            Spacer()
            HStack{
                Label("\(scrum.attendees.count)", systemImage: "person.3")
                Spacer()
                Label("\(scrum.lengthInMinutes) min", systemImage: "clock")
                    .labelStyle(.trailingIcon)
            }
            .font(.caption)
        }
        .padding()
        .foregroundColor(scrum.theme.accentColor)
    }
}

struct CardView_Preview: PreviewProvider {
    static var sample = DailyScrum.sampleData[0]
    static var previews: some View {
        CardView(scrum: sample)
            //.background(Color("yellow"))
            .background(sample.theme.mainColor)
            .previewLayout(.fixed(width:400, height:60))
    }
}
