import SwiftUI

struct WelcomeView: View {
    @Bindable var viewModel: LoginViewModel
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        VStack(spacing: 25) {
            // Header
            VStack(spacing: 15) {
                Image(systemName: "checkmark.circle.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 80, height: 80)
                    .foregroundColor(.green)
                
                Text("Welcome!")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                Text("You have successfully logged in")
                    .font(.title3)
                    .foregroundColor(.secondary)
            }
            .padding(.top, 50)
            
            // User Info
            VStack(spacing: 15) {
                HStack {
                    Image(systemName: "person.fill")
                        .foregroundColor(.blue)
                    Text(viewModel.username)
                        .font(.headline)
                }
                
                Text("Last login: \(Date().formatted(.dateTime))")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            .padding()
            .background(Color(.systemBackground))
            .cornerRadius(10)
            .shadow(radius: 2)
            
            Spacer()
            
            // Logout Button
            Button(action: {
                withAnimation {
                    viewModel.logout()
                    dismiss()
                }
            }) {
                HStack {
                    Image(systemName: "rectangle.portrait.and.arrow.right")
                    Text("Sign Out")
                        .fontWeight(.semibold)
                }
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.red)
                .foregroundColor(.white)
                .cornerRadius(10)
            }
            .padding(.horizontal)
        }
        .padding()
    }
}

#Preview {
    WelcomeView(viewModel: LoginViewModel())
} 