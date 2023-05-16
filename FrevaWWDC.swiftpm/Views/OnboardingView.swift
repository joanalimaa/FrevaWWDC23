//
//  OnboardingView.swift
//  FrevaWWDC
//
//  Created by Joana Lima on 19/04/23.
//

import SwiftUI

struct OnboardingView: View {
    
    @Environment(\.presentationMode) var presentation
    
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                Image("onboarding")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .ignoresSafeArea()
                
                    Text("Please note:")
                        .font(.system(size: 60, weight: .bold, design: .rounded))
                        .foregroundColor(.black)
                        .multilineTextAlignment(.center)
                        .frame(width: geometry.size.width * 0.8, height: geometry.size.width * 0.4)
                        .position(x:(geometry.size.width) * 0.5, y: (geometry.size.height) * 0.5 - 436)
                    
                    
                    Text("This app is meant to be viewd on portrait mode.")
                        .font(.system(size: 36, weight: .semibold, design: .rounded))
                        .foregroundColor(.black)
                        .multilineTextAlignment(.center)
                        .frame(width: geometry.size.width * 0.6, height: geometry.size.width * 0.4)
                        .position(x:(geometry.size.width) * 0.5, y: (geometry.size.height) * 0.5 - 280)
                    
                    Image("portrait")
                        .resizable()
                        .scaledToFit()
                        .padding(25)
                        .frame(width: geometry.size.width * 0.16, height: geometry.size.width * 1.4)
                        .position(x:(geometry.size.width) * 0.5, y: (geometry.size.height) * 0.5 - 40)
                    
                    
                    Text("This experience can be enjoyed with headphones or the volume on for audio description.")
                        .font(.system(size: 36, weight: .semibold, design: .rounded))
                        .foregroundColor(.black)
                        .multilineTextAlignment(.center)
                        .frame(width: geometry.size.width * 0.7, height: geometry.size.width * 0.4)
                        .position(x:(geometry.size.width) * 0.5, y: (geometry.size.height) * 0.5 + 190)
                    
                    Image("sound")
                        .resizable()
                        .scaledToFit()
                        .padding(25)
                        .frame(width: geometry.size.width * 0.2, height: geometry.size.width * 1.4)
                        .position(x:(geometry.size.width) * 0.5, y: (geometry.size.height) * 0.5 + 390)
                
                
                HStack(spacing: 400){
                    
                    Button(action: {
                        presentation.wrappedValue.dismiss()
                        
                    }) {Image("backButton")
                            .resizable()
                            .scaledToFit()
                            .padding(25)
                            .frame(width: geometry.size.width * 0.15, height: geometry.size.width * 0.1)
                            .background(Color("myBeige"))
                            .cornerRadius(40)
                    }
                    
                    NavigationLink(destination: IntroductionView().navigationBarBackButtonHidden(true)) {
                        Image("nextButton")
                            .resizable()
                            .scaledToFit()
                            .padding(25)
                            .frame(width: geometry.size.width * 0.15, height: geometry.size.width * 0.1)
                            .background(Color("myBeige"))
                            .cornerRadius(40)
                    }
                }
                .position(x:(geometry.size.width) * 0.5, y: (geometry.size.height) * 0.5 + 450)
                
            }
            
        }.onAppear{
            playAudio(audio: "Page0")}
        
        
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
