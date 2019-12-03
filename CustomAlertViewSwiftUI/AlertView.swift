
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
    
    @Binding var show: Bool
    var title: String
    var message: String
    var positiveButtonClicked: () -> Void
    var negativeButtonClicked: () -> Void
    
    //MARK: - Animation
    @State private var topTobottomAnimation = false
    
    var body: some View {
        
        ZStack {
            
            ZStack {
                GeometryReader { backgroundView in
                    
                    VStack(alignment: .center) {
                        
                        Text(self.title)
                            .frame(width: backgroundView.size.width * 0.76, height: 45)
                            .background(Color.red)
                        
                        Text(self.message)
                            .frame(width: backgroundView.size.width * 0.76)
                            .background(Color.blue)
                        
                        HStack(spacing: 0.0) {
                            Button(self.positiveButtonTitle) {
                                self.show.toggle()
                                self.topTobottomAnimation.toggle()
                                self.positiveButtonClicked()
                            }
                            .frame(width: backgroundView.size.width * 0.76/2, height: 40)
                            .background(Color.red)
                            
                            Button(self.negativeButtonTitle) {
                                self.topTobottomAnimation.toggle()
                                // self.show.toggle()

                                self.negativeButtonClicked()
                            }
                            .frame(width: backgroundView.size.width * 0.76/2, height: 40)
                            .background(Color.yellow)
                        }
                    }
                    .padding(.all, 5)
                        
                    .onAppear(perform: {
                        withAnimation(.spring()) {
                            self.topTobottomAnimation = true
                        }
                    })
                        .background(Color.green)
                        .cornerRadius(6)
                        .shadow(color: .black, radius: 5, x: 2, y: 2)
                        .opacity(1.0)
                        .offset(y: self.topTobottomAnimation ? 0 : -200)
                        .animation(Animation.spring(response: 0.2, dampingFraction: 0.3, blendDuration: 2))
                    
                    
                }
            }
            
        }.onAppear(perform: {
        })
            .onDisappear(perform: {
                self.topTobottomAnimation = false
                
            })
            
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.black)
            .opacity(0.3)
            .edgesIgnoringSafeArea(.all)
        
    }
}

