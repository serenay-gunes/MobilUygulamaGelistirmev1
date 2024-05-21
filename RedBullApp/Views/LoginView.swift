import SwiftUI

struct LoginView: View {
    @State private var username = ""
    @State private var password = ""
    @State private var isAuthenticated = false
    @State private var showingRegisterScreen = false

    var body: some View {
        NavigationView {
            ZStack {
                Color.blue
                    .ignoresSafeArea()
                
                VStack(spacing: 20) {
                    Text("Login")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(.white)
                    
                    TextField("Username", text: $username)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.white.opacity(0.8))
                        .cornerRadius(10)
                        .foregroundColor(.black)
                    
                    SecureField("Password", text: $password)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.white.opacity(0.8))
                        .cornerRadius(10)
                        .foregroundColor(.black)
                    
                    Button("Login") {
                        // Burada kullanıcı kimlik doğrulama işlemi yapılabilir
                        authenticateUser()
                    }
                    .frame(width: 200, height: 50)
                    .background(Color.white)
                    .foregroundColor(.blue)
                    .cornerRadius(10)
                    
                    Button("Register") {
                        showingRegisterScreen = true
                    }
                    .frame(width: 200, height: 50)
                    .background(Color.white)
                    .foregroundColor(.blue)
                    .cornerRadius(10)
                }
                .padding()
                .onAppear {
                    // Burada oturum kontrolü yapılabilir, eğer kullanıcı daha önce giriş yaptıysa ana ekrana yönlendirilebilir
                    // isAuthenticated = true
                }
                .fullScreenCover(isPresented: $isAuthenticated, content: {
                    MainView()
                })
                .sheet(isPresented: $showingRegisterScreen, content: {
                    RegisterView()
                })
            }
            .navigationBarHidden(true)
        }
    }

    func authenticateUser() {
        // Kullanıcı kimlik doğrulama işlemi burada gerçekleştirilebilir
        // Örnek bir doğrulama işlemi
        if username.lowercased() == "mario2021" && password == "abc123" {
            isAuthenticated = true
        } else {
            // Kimlik doğrulama başarısız
            print("Authentication failed")
        }
    }
}


struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
