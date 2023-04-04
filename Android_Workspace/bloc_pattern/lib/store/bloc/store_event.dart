abstract class StoreEvent {}

class StoreProductRequested extends StoreEvent{

}
class StoreProductAddedToCart extends StoreEvent{
  final int cartId;

  StoreProductAddedToCart(this.cartId);
}
class StoreProductRemovedFromCart extends StoreEvent{
  final int cartId;

  StoreProductRemovedFromCart(this.cartId);

}