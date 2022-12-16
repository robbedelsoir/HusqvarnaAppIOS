
import SwiftUI
import Firebase

struct ContentView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var userIsLoggedIn = false
    
    var body: some View {
        if userIsLoggedIn {
            //MotorList()
            HomePage()
        } else {
            content
        }
        
        
    }
    
    var content: some View {
        ZStack{
            Color.gray
            
            VStack(spacing: 20){
                
                Image("husqvarna")
                    .resizable()
                    .frame(width: 99, height: 118, alignment: .center)
                    .offset(y: -100)
                
                TextField("Email", text: $email)
                    .foregroundColor(.white)
                    .textFieldStyle(.plain)
                    .placeholder(when: email.isEmpty) {
                        Text("Email")
                            .foregroundColor(.white)
                            .bold()
                    }
                Rectangle()
                    .frame(width: 350, height: 1)
                    .foregroundColor(.white)
                
                SecureField("Password", text: $password)
                    .foregroundColor(.white)
                    .textFieldStyle(.plain)
                    .placeholder(when: password.isEmpty) {
                        Text("Password")
                            .foregroundColor(.white)
                            .bold()
                    }
                
                Rectangle()
                    .frame(width: 350, height: 1)
                    .foregroundColor(.white)
                Button{
                    
                    login()
                } label: {
                    Text("LOGIN")
                        .bold()
                        .frame(width: 200, height: 40)
                        .background(
                            RoundedRectangle(cornerRadius: 10, style: .continuous).fill(Color(hex: 003985)))
                        .foregroundColor(.white)
                }
                Image("LineYellow")
                    .resizable()
                    .frame(width: 300, height: 2, alignment: .center)
                    
                
                Button{
                    register()
                } label: {
                    Text("Don't have an account? Sign up")
                        .bold()
                        .foregroundColor(Color(hex: 003686))
                }
                //.padding(.top)
                
                
               
                
            }
            .frame(width: 350)
            .background(
                    Image("wallpaperhusqvarna")
                        .resizable()
                        .edgesIgnoringSafeArea(.all)
                        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                )
        }
        .ignoresSafeArea()
    }
    
    func login(){
        Auth.auth().signIn(withEmail: email, password: password){ result, error in if error != nil{
            print(error!.localizedDescription)
        }
            else {userIsLoggedIn.toggle()}
        }
    }
    
    func register(){
        Auth.auth().createUser(withEmail: email, password: password) { result, error in if error != nil{
            print(error!.localizedDescription)
        } }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension View {
    func placeholder<Content: View>(
        when shouldShow: Bool,
        alignment: Alignment = .leading,
        @ViewBuilder placeholder: () -> Content) -> some View {

        ZStack(alignment: alignment) {
            placeholder().opacity(shouldShow ? 1 : 0)
            self
        }
    }
}
