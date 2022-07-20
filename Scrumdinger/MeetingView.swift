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
        ProgressView(value:30, total:100)
    }
}

struct MeetingView_Previews: PreviewProvider {
    static var previews: some View {
        MeetingView()
    }
}
