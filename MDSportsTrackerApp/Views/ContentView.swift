import SwiftUI

struct LoginView: View {
    var body: some View {
        VStack {
            Text("Sports Tracker MD")
                .font(.largeTitle)
                        .padding()

            TextField("Kullanıcı Adı", text: .constant(""))
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())

            SecureField("Şifre", text: .constant(""))
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            HStack {
            Button(action: {
                // Burada login işlemlerini gerçekleştirebilirsiniz.
                // Örneğin, kullanıcı adı ve şifreyi kontrol edebilir veya bir API çağrısı yapabilirsiniz.
                print("Kayit ol tiklandi")
            }) {
                Text(" Kayıt Ol ")
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(8)
            }
            .padding()
            
            Button(action: {
                // Burada login işlemlerini gerçekleştirebilirsiniz.
                // Örneğin, kullanıcı adı ve şifreyi kontrol edebilir veya bir API çağrısı yapabilirsiniz.
                print("Giriş Yapildi")
            }) {
                Text("Giriş Yap")
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(8)
            }
            .padding()
            
        }
        
            Spacer()
        }
        .padding()
        .background(Color.white)
    }
}

struct ContentView: View {
    var body: some View {
        LoginView() // LoginView'i ContentView içinde kullanıyoruz.
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
