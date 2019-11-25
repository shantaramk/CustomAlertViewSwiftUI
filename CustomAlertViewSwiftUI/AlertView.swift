
//
//  AlertView.swift
//  CustomAlertViewSwiftUI
//
//  Created by Shantaram K on 19/11/19.
//  Copyright © 2019 Shantaram K. All rights reserved.
//

import SwiftUI

protocol AlertViewProtocol {
    var title: String { get set }
    var message: String { get set }
    var positiveButtonTitle: String { get set }
    var negativeButtonTitle: String { get set }
    var show: Bool {get set }
}

struct AlertView: View, AlertViewProtocol {
    var positiveButtonTitle = "Okay"
    var negativeButtonTitle = "Cancel"
    
    @State var show = true
    var title: String
    var message: String
    var positiveButtonClicked: () -> Void
    var negativeButtonClicked: () -> Void
    
    
    
    var body: some View {
        ZStack {
            
            GeometryReader { backgroundView in
                
                VStack {
                    
                    Text(self.title)
                        .frame(width: backgroundView.size.width * 0.76, height: 45)
                        .background(Color.red)
                    
                    Text(self.message)
                        .frame(width: backgroundView.size.width * 0.76)
                        .background(Color.blue)
                    
                    HStack {
                        Button(self.positiveButtonTitle) {
                            self.show.toggle()
                            self.positiveButtonClicked()
                        }
                        .frame(width: backgroundView.size.width * 0.76/2, height: 40)
                        .background(Color.red)
                        
                        Button(self.negativeButtonTitle) {
                            self.show.toggle()
                            self.negativeButtonClicked()
                        }
                        .frame(width: backgroundView.size.width * 0.76/2, height: 40)
                        .background(Color.yellow)
                    }
                }
                .background(Color.green)
            }
            
        }
            
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.black)
        .opacity(0.3)
        .edgesIgnoringSafeArea(.all)
        
    }
}

struct AlertView_Previews: PreviewProvider {
    static var previews: some View {
        AlertView(title: "Error", message: "Something went wrong", positiveButtonClicked: {
            print("Postive")
        }, negativeButtonClicked: {
            print("negative")
            
        })
    }
}
