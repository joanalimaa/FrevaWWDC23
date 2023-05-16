import SwiftUI

struct ContentView: View {
    var body: some View {
        
        GeometryReader{ geometry in
        ZStack {
            Image("background")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
            
                VStack{
                    Image("logo2")
                        .resizable()
                        .scaledToFit()
                        .padding(25)
                        .frame(width: geometry.size.width * 0.74, height: geometry.size.width * 0.6)
                        .position(x:(geometry.size.width) * 0.5, y: (geometry.size.height) * 0.5 - 290)
                    
                    NavigationLink(destination: OnboardingView().navigationBarBackButtonHidden(true)) {
                        Image("start")
                            .resizable()
                            .scaledToFit()
                            .padding(25)
                            .frame(width: geometry.size.width * 0.30, height: geometry.size.width * 0.1)
                            .background(Color("myBeige"))
                            .cornerRadius(40)
                            .position(x:(geometry.size.width) * 0.5, y: (geometry.size.height) * 0.5 - 200)
                    }
                    
                }
            }
        }
    }
}
