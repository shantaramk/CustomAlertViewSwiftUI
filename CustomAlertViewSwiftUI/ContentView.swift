//
//  ContentView.swift
//  CustomAlertViewSwiftUI
//
//  Created by Shantaram K on 19/11/19.
//  Copyright © 2019 Shantaram K. All rights reserved.
//

import SwiftUI

func showAlerView() {
    
}

struct ContentView: View {
    
    @State public var showAlert = false
    
    var body: some View {
        VStack {
            Button(action: {
                self.showAlert.toggle()
            }) {
                Text("Show Alert")
            }
            .showAlert(isPresented: $showAlert)
        }
            
            /*
        .alert(isPresented: $showAlert) {
            Alert(title: Text("Important message"), message: Text("Wear sunscreen"), dismissButton: .default(Text("Got it!")))
        }
        */
        
        //.showAlert(isPresented: showAlert)
        
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


extension View {
    
    func showAlert(isPresented: Binding<Bool>) -> some View {
        
        self.modifier(AKA(show: isPresented))
        
    }
    
    func alert(isPresented: Binding<Bool>, content: @escaping () -> AlertView) -> some View {
        content()
    }
}

struct AKA: ViewModifier {
    @Binding var show: Bool
    
    func body(content: Content) -> some View {
        
        ZStack {
            content
            if show {
                AlertView(show: $show, title: "Error", message: "A closure is said to escape a function when the closure is passed as an argument to ?", positiveButtonClicked: {
                    print("Postive")
                }, negativeButtonClicked: {
                    print("negative")
                    
                })
            }
        }
        
    }
    
}
