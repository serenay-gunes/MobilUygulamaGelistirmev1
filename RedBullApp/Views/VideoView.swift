import SwiftUI

struct VideoView: View {

    var body: some View{
        NavigationView{
            ScrollView{
                VStack{
                    Divider()
                    Text("reklam 1")
                        .font(.title3)
                        .fontWeight(.bold)
                        .padding(.trailing, 100)
                    
                    YTView(ID: "E2CQRCn3dHo")
                    Text("reklam 2")
                        .font(.title3)
                        .fontWeight(.bold)
                        .padding(.trailing, 100)
                    
                    YTView(ID: "VZ_-N-ou7bg")
                    Text("reklam 3")
                        .font(.title3)
                        .fontWeight(.bold)
                        .padding(.trailing, 100)
                    
                    YTView(ID: "Xa22kF6hHYk")
                }
            }
        }
    }
}

struct VideoView_Previews: PreviewProvider{
    static var previews: some View{
        VideoView()
        
    }
}


