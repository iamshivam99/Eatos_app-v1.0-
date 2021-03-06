int kTotalItemsInCart = 0;
int kThisItemInCart = 0;

int cartAddItem() {
  kThisItemInCart++;
  kTotalItemsInCart++;
  return (kTotalItemsInCart);
}

void cartRemoveItem() {
  if (kThisItemInCart > 0) {
    kThisItemInCart--;
    kTotalItemsInCart--;
  }
}
