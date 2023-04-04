import 'package:bloc_pattern/store/bloc/store_event.dart';
import 'package:bloc_pattern/store/repository/store_repository.dart';
import 'package:bloc_pattern/store/store.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StoreBloc extends Bloc<StoreEvent, StoreState> {
  StoreBloc() : super(StoreState()) {
    on<StoreProductRequested>(_handleStoreProductRequested);
    on<StoreProductAddedToCart>(_handleStoreProductAddedToCart);
    on<StoreProductRemovedFromCart>(_handleStoreRemoveFromCart);
  }

  final StoreRepository api = StoreRepository();

  Future<void> _handleStoreProductRequested(StoreProductRequested event,
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

  Future<void> _handleStoreProductAddedToCart(StoreProductAddedToCart event,
      Emitter<StoreState> emit) async {
    emit(state.copyWith(cartIds: {...state.cartIds, event.cartId}));
  }
  Future<void> _handleStoreRemoveFromCart(StoreProductRemovedFromCart event,
      Emitter<StoreState> emit) async {
    emit(state.copyWith(cartIds: {...state.cartIds, event.cartId}));
  }
}

