class Preferences{
  static String user = 'user';
  static String theme = 'theme';
  static String darkOption = 'darkOption';
  static String language = 'lang';
  static String firstTime = 'firstTime';
  static String favorites = 'favorites';
  static String cartProducts = 'cart_products';
  static String cartOffers = 'cart_offers';


  ///Singleton factory
  static final Preferences _instance = Preferences._internal();

  factory Preferences() {
    return _instance;
  }

  Preferences._internal();
}