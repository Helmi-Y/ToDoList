//
//  ToDoListViewViewModel.swift
//  Todo
//
//  Created by Helmi Yatim on 5/1/24.
//

import FirebaseFirestore
import Foundation

//View Model for list of itesm view
//Primary Tab

class ToDoListViewViewModel: ObservableObject{
    @Published var showingNewItemView = false
    
    private let userId: String
    
    init(userId: String) {
        self.userId = userId
    }
    
    
    /// Delete to do list item
    /// - Parameter id: Item id to delete
    func delete(id: String){
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(userId)
            .collection("todos")
            .document(id)
            .delete()
    }
}
