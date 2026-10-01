import SwiftUI

@main struct MyApp: App {
    var body: some Scene {
        WindowGroup {
            
            //DI
            let repository = ContentRepositoryImpl()
            let viewModel = ContentViewModel(contentRepository: repository)
            
            ContentView(viewModel: viewModel)
        }
    }
}
