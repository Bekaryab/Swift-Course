import SwiftUI


struct Order{
    let orderId: String
    let items: [CartItem]
    let subtotal: Double
    let discountAmount: Double
    let timestamp: Date
    let shippingAddress: Address
    
    init(from cart: ShoppingCart, shippingAddress: Address, discountAmount: Double, timestamp: Date = Date(), orderId: Int){
        self.items = cart.items
        self.subtotal = cart.total
        self.orderId = UUID().uuidString
        self.timestamp = Date()
        self.shippingAddress = shippingAddress
        self.discountAmount = discountAmount
    }
    
    var itemCount: Int{
        items.reduce(0) { $0 + $1.quantity }
    }
}
