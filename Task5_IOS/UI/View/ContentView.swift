import SwiftUI
import Playgrounds

struct ContentView: View {
    //@State var number: Int = 0
    @State private var viewModel: ContentViewModel
    
    init(viewModel: ContentViewModel){
        _viewModel = State(initialValue: viewModel)
    }
    
    var body: some View {
        
        NavigationStack{
            VStack(alignment: .leading, spacing: 32){
                Text("\(viewModel.number)")
                    .foregroundColor(BaseColors.TextSecondary)
                
                Spacer()
                
                Button("Press it"){
                    viewModel.getRandNumToUI()
                    //number = Int.random(in: 1...10000)
                }
                .buttonStyle(.bordered)
                
                Spacer()
                
                NavigationLink{
                    SearchDoctorView()
                } label: {
                    Text("Перейти")
                }
                .buttonStyle(.bordered)
            }
            .padding(24)
            Spacer()
        }
        
    }
}
