//
//  ContentView.swift
//  Shared
//
//  Created by Andrei Kamarou on 27.11.21.
//

import SwiftUI
import CoreData

struct ContentView: View {
    
    var body: some View {
        OnBoardingPage()
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
