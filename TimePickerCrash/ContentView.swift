//
//  ContentView.swift
//  TimePickerCrash
//
//  Created by Michael Harper on 3/31/25.
//

import Foundation
import SwiftUI
import UIKit

struct ContentView: View {
    @State private var startDate = Date()

    var body: some View {
        VStack {
            HStack {
                DatePicker("Start Date",
                           selection: $startDate,
                           displayedComponents: [.date, .hourAndMinute]
                )
                .datePickerStyle(.compact)
                .font(.system(size: 16, weight: .medium))
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
