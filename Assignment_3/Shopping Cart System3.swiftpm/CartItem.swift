import SwiftUI
struct CartItem{
    var product: Product
    var quantity: Int
    
    var subTotal: Double{
        return Double(quantity * Int(product.price))
    }
    
    mutating func updateQuantity(_ newQuantity: Int){
        if newQuantity >= 0{
            quantity = newQuantity
        }
        else{
            print("Quantity must be non-negative")
        }
    }
    mutating func increaseQuantity(by amount: Int){
        quantity = quantity + amount
    }
}
