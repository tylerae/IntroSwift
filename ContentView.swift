//
//  ContentView.swift
//  IntroApp
//
//  Created by Tyler  Elms on 12/12/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

override func viewDidLoad() {
    super.viewDidLoad()
    // Swift block syntax (iOS 10+)
    let timer = Timer(timeInterval: 0.4, repeats: true) { _ in print("Done!") }
    // Swift >=3 selector syntax
    let timer = Timer.scheduledTimer(timeInterval: 0.4, target: self, selector: #selector(self.update), userInfo: nil, repeats: true)
    // Swift 2.2 selector syntax
    let timer = NSTimer.scheduledTimerWithTimeInterval(0.4, target: self, selector: #selector(MyClass.update), userInfo: nil, repeats: true)
    // Swift <2.2 selector syntax
    let timer = NSTimer.scheduledTimerWithTimeInterval(0.4, target: self, selector: "update", userInfo: nil, repeats: true)
}

// must be internal or public.
@objc func update() {
    // Something cool
}
