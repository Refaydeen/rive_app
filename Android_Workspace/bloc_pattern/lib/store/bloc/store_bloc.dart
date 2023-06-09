import 'package:bloc_pattern/store/store.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StoreBloc extends Bloc<StoreEvent, StoreState> {
  StoreBloc() : super(StoreState()) {
    on<StoreProductsRequested>(_handleStoreProductRequested);
    on<StoreProductsAddedToCart>(_handleStoreProductAddedToCart);
    on<StoreProductsRemovedFromCart>(_handleStoreRemovedFromCart);
  }

  final StoreRepository api = StoreRepository();

  Future<void> _handleStoreProductRequested(StoreProductsRequested event,
      Emitter<StoreState> emit) async {
    try {
      emit(state.copyWith(productsStatus: StoreRequest.requestInProgress));
      final response = await api.getProducts();

      emit(state.copyWith(
          productsStatus: StoreRequest.requestSuccess,
          products: response
      ));
    } catch (e) {
      emit(state.copyWith(
        productsStatus: StoreRequest.requestFailure,
      ));
    }
  }

  Future<void> _handleStoreProductAddedToCart(StoreProductsAddedToCart event,
      Emitter<StoreState> emit) async {
    emit(state.copyWith(cartIds: {...state.cartIds, event.cartId}));
  }
  Future<void> _handleStoreRemovedFromCart(StoreProductsRemovedFromCart event,
      Emitter<StoreState> emit) async {
    emit(state.copyWith(cartIds: {...state.cartIds, event.cartId}));
  }
}

