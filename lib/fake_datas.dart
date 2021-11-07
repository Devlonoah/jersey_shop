var carouselList = [
  'assets/images/carousel_img0.png',
  'assets/images/carousel_img1.png'
];

const trendingList = ['assets/images/jersey_lady.png'];

class Category {
  final String imagePath;
  final double price;
  final String? productName;
  String? productDetails;

  Category(
      {required this.imagePath,
      required this.price,
      required this.productName,
      this.productDetails}) {
    productDetails =
        'The Nike F.C. Shirt blends 2 summer favourites: festivals and football. Soft, sweat-wicking fabric and a mesh racerback help you stay comfortable on the pitch or in the crowd.';
  }
}

var categoryList = [
  Category(
      imagePath: 'assets/images/jersey_lady.png',
      price: 67.86,
      productName: 'Chelsea F.C 2020/21\nStadium Home'),
  Category(
      imagePath: 'assets/category/imagecayegory.png',
      price: 55.25,
      productName: 'Nike F.C Tie Dye\nFootball Shirt'),
  Category(
      imagePath: 'assets/category/imagecayegory-2.png',
      price: 55.25,
      productName: 'Athletico Madrid 2020/21\nStadium Home'),
  Category(
      imagePath: 'assets/category/imagecayegory-1.png',
      price: 69.95,
      productName: 'Portland Thorns F.C. 2020\nStadium away'),
  Category(
    imagePath: 'assets/category/imagecayegory-4.png',
    price: 40.95,
    productName: 'Paris Saint-Germain\n2019/20 Stadium Home',
  ),
  Category(
    imagePath: 'assets/category/imagecayegory-5.png',
    price: 40.95,
    productName: 'FC Barcelona 2019/20\nStadium Home',
  ),
];

final tabImages = [
  'assets/tab_icon/home.png',
  'assets/Shapesearch.png',
  'assets/tab_icon/cart.png',
  'assets/tab_icon/favourite.png',
  'assets/tab_icon/profile.png',
];
