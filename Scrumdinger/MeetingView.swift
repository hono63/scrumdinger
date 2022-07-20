//
//  ContentView.swift
//  Scrumdinger
//
//  Created by 程原教文 on 2022/07/20.
//

import SwiftUI

struct MeetingView: View {
    var body: some View {
        //Text("Hello Swift UI")
        VStack {
            ProgressView(value:30, total:100)
            HStack{
                VStack (alignment: .leading){
                    Text("秒経過")
                        .font(.caption)
                    Label("300", systemImage: "hourglass.bottomhalf.fill")
                }
                Spacer()
                VStack (alignment: .trailing) {
                    Text("残り")
                        .font(.caption)
                    Label("600" + "秒", systemImage: "hourglass.tophalf.fill")
                }
            }
            Circle()
                .strokeBorder(lineWidth:24)
            HStack {
                Text("Speaker 1 of 3")
                Spacer()
                Button(action:{}){
                    Image(systemName: "forward.fill")
                }
            }
        }
        .padding()
    }
}

struct MeetingView_Previews: PreviewProvider {
    static var previews: some View {
        MeetingView()
    }
}
