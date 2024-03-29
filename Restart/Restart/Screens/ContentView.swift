import SwiftUI

struct ContentView: View {
    
    
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
    // @AppStorage( [user defaults key] )
    
    var body: some View {
        ZStack {
            if isOnboardingViewActive {
                OnboardingView()
            } else {
                HomeView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
