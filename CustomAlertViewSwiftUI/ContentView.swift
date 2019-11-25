//
//  ContentView.swift
//  CustomAlertViewSwiftUI
//
//  Created by Shantaram K on 19/11/19.
//  Copyright © 2019 Shantaram K. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State public var showAlert = false
    var body: some View {
        
        
        VStack {
            Button("Show alert") {
                self.showAlert.toggle()
            }
            
            if showAlert {
                AlertView(show: showAlert, title: "Error", message: "A closure is said to escape a function when the closure is passed as an argument to the function, but is called after the function returns. When you declare a function that takes a closure as one of its parameters, you can write @escaping before the parameter's type to indicate that the closure is allowed to escape.", positiveButtonClicked: {
                    print("Postive")
                }, negativeButtonClicked: {
                    print("negative")
                    
                })
            }
            
            
        }
        
        
        
        /*
   
        ZStack {
            GeometryReader { g in
                VStack {
                    
                    VStack {
                        Text("Hello")
                            .frame(width:  g.size.width, height: g.size.height*0.5)
                            .background(Color.red)
                        Text("Shantam")
                            .frame(width: g.size.width, height: g.size.height*0.1)
                            .background(Color.blue)
                    }
                    VStack {
                        Image("delivery")
                            .frame(width: g.size.width, height: g.size.height*0.4)
                    }
                }
            }
            
        } .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
            .background(Color.green)
            .edgesIgnoringSafeArea(.all)
        
        */
            
        
       
        /*
        Form {
        HStack (alignment: .center) {
            Text("I am iOS Developer")
                .background(Color.red)
            
            Text("I am iOS Developer")
                .background(Color.yellow)
                .alignmentGuide(VerticalAlignment.center) { _ in -30 }
            
            Text("I am iOS Developer, owever, that doesn’t happen. Instead, we get a small red text view in the center of the screen, and a sea of white beyond it. I am in House??? ----- I am iOS Developer, owever, that doesn’t happen. Instead, we get a small red text view in the center of the screen, and a sea of white beyond it. I am in House???-->>+")
                .multilineTextAlignment(TextAlignment.center)
            .lineLimit(nil)
                .background(Color.white)
                .alignmentGuide(VerticalAlignment.center) { (ViewDimensions) -> CGFloat in
                    print("-----------")
                    return -30
            }
        }.background(Color.black)
            .frame(alignment: .top)
        } */
        /*
        VStack(alignment: .leading) {
            Text("I am iOS Developer")
                .background(Color.red)
               .alignmentGuide(HorizontalAlignment.leading) { _ in 30  }
            
            Text("I am iOS Developer")
                .background(Color.yellow)
                .alignmentGuide(HorizontalAlignment.leading) { _ in 90 }
            
            Text("I am iOS Developer")
                .background(Color.blue)
            
        } .background(Color.black)
            .frame(width: 400, height: 500, alignment: .center)
        */
        
        /*
         Text("""
         However, that doesn’t happen. Instead, we get a small red text view in the center of the screen, and a sea of white beyond it.

        This confuses people, and usually leads to the question – “how do I make what’s behind the view turn red?”

        Let me say this as clearly as I can: for SwiftUI developers, there is nothing behind our view. You shouldn’t try to make that white space turn red with weird hacks or workarounds, and you certainly shouldn’t try to reach outside of SwiftUI to do it.

        Now, right now at least there is something behind our content view called a UIHostingController: it is the bridge between UIKit (Apple’s original iOS UI framework) and SwiftUI. However, if you start trying to modify that you’ll find that your code no longer works on Apple’s other platforms, and in fact might stop working entirely on iOS at some point in the future.

        Instead, you should try to get into the mindset that there is nothing behind our view – that what you see is all we have.

        Once you’re in that mindset, the correct solution is to make the text view take up more space; to allow it to fill the screen rather than being sized precisely around its content. We can do that by using the frame() modifier, passing in .infinity for both its maximum width and maximum height.However, that doesn’t happen. Instead, we get a small red text view in the center of the screen, and a sea of white beyond it.

        This confuses people, and usually leads to the question – “how do I make what’s behind the view turn red?”

        Let me say this as clearly as I can: for SwiftUI developers, there is nothing behind our view. You shouldn’t try to make that white space turn red with weird hacks or workarounds, and you certainly shouldn’t try to reach outside of SwiftUI to do it.

        Now, right now at least there is something behind our content view called a UIHostingController: it is the bridge between UIKit (Apple’s original iOS UI framework) and SwiftUI. However, if you start trying to modify that you’ll find that your code no longer works on Apple’s other platforms, and in fact might stop working entirely on iOS at some point in the future.

        Instead, you should try to get into the mindset that there is nothing behind our view – that what you see is all we have.

        Once you’re in that mindset, the correct solution is to make the text view take up more space; to allow it to fill the screen rather than being sized precisely around its content. We can do that by using the frame() modifier, passing in .infinity for both its maximum width and maximum height.
""")
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.red)
        .edgesIgnoringSafeArea(.all) */
        
      /*  NavigationView {
            Form {
                Button("clik") {
                    AlertPView().animation(Animation.easeIn(duration: 5))
                }
            }
            .navigationBarTitle("Signup")
            
        } */
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct AlertPView: View {
    var body: some View {
        ZStack {
            Color.yellow
            GeometryReader { geometry in
                 VStack(spacing: 10) {
                     Text("Title")
                     
                 }.frame(width: 100, height: 100, alignment: .center)
                     .background(Color.red)
                    .padding(.all, 30)
            }
            
        }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
        
    }
}

