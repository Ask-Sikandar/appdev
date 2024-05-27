import '../Models/category1.dart';
import '../Models/category2.dart';
import '../Models/category3.dart';
import '../Models/product.dart';

class Category1Service {
  List<CategoryLevel1> getCategories() {


    List<CategoryLevel1> dummyProducts = [
    CategoryLevel1(
      name: 'Electronics',
      categories: [
      CategoryLevel2(
      name: 'Smartphones',
      categories: [
        CategoryLevel3(
          name: 'Apple',
          products: [
            Product(
              name: 'iPhone 14 Pro Max',
              imageUrl: 'https://example.com/iphone14promax.jpg',
              description: 'The latest and greatest iPhone with a powerful camera and stunning display.',
              price: 1099.99,
            ),
            Product(
              name: 'iPhone 13 Pro',
              imageUrl: 'https://example.com/iphone13pro.jpg',
              description: 'A powerful iPhone with a great camera and long battery life.',
              price: 899.99,
            ),
            Product(
              name: 'iPhone SE',
              imageUrl: 'https://example.com/iphonese.jpg',
              description: 'An affordable iPhone with essential features and compact design.',
              price: 399.99,
            ),
            Product(
              name: 'iPhone 12',
              imageUrl: 'https://example.com/iphone12.jpg',
              description: 'A previous-generation iPhone with great performance and camera quality.',
              price: 699.99,
            ),
            Product(
              name: 'iPhone 11',
              imageUrl: 'https://example.com/iphone11.jpg',
              description: 'A popular iPhone model with reliable performance and battery life.',
              price: 599.99,
            ),
          ],
        ),
        CategoryLevel3(
          name: 'Samsung',
          products: [
            Product(
              name: 'Galaxy S23 Ultra',
              imageUrl: 'https://example.com/galaxys23ultra.jpg',
              description: 'A premium Android phone with a stunning display and powerful camera.',
              price: 1199.99,
            ),
            Product(
              name: 'Galaxy Z Fold4',
              imageUrl: 'https://example.com/galaxyzfold4.jpg',
              description: 'A foldable phone with a unique design and innovative features.',
              price: 1799.99,
            ),
            Product(
              name: 'Galaxy A52',
              imageUrl: 'https://example.com/galaxya52.jpg',
              description: 'An affordable smartphone with great features and a sleek design.',
              price: 499.99,
            ),
            Product(
              name: 'Galaxy Note20',
              imageUrl: 'https://example.com/galaxynote20.jpg',
              description: 'A powerful phone with a large screen and S Pen functionality.',
              price: 999.99,
            ),
            Product(
              name: 'Galaxy S21',
              imageUrl: 'https://example.com/galaxys21.jpg',
              description: 'A high-end phone with excellent camera performance and battery life.',
              price: 799.99,
            ),
          ],
        ),
        CategoryLevel3(
          name: 'Google',
          products: [
            Product(
              name: 'Pixel 7',
              imageUrl: 'https://example.com/pixel7.jpg',
              description: 'A top-of-the-line smartphone with a stunning display and advanced features.',
              price: 899.99,
            ),
            Product(
              name: 'Pixel 6',
              imageUrl: 'https://example.com/pixel6.jpg',
              description: 'A powerful smartphone with a great camera and smooth performance.',
              price: 699.99,
            ),
            Product(
              name: 'Pixel 5a',
              imageUrl: 'https://example.com/pixel5a.jpg',
              description: 'An affordable smartphone with reliable performance and camera quality.',
              price: 499.99,
            ),
            Product(
              name: 'Pixel 4a',
              imageUrl: 'https://example.com/pixel4a.jpg',
              description: 'A budget-friendly smartphone with great features and performance.',
              price: 349.99,
            ),
            Product(
              name: 'Pixel 3a',
              imageUrl: 'https://example.com/pixel3a.jpg',
              description: 'An older generation Pixel phone with essential features and performance.',
              price: 299.99,
            ),
          ],
        ),
        CategoryLevel3(
          name: 'OnePlus',
          products: [
            Product(
              name: 'OnePlus 10 Pro',
              imageUrl: 'https://example.com/oneplus10pro.jpg',
              description: 'A flagship smartphone with top-tier performance and design.',
              price: 999.99,
            ),
            Product(
              name: 'OnePlus 9',
              imageUrl: 'https://example.com/oneplus9.jpg',
              description: 'A high-performance smartphone with a great camera and display.',
              price: 799.99,
            ),
            Product(
              name: 'OnePlus 8T',
              imageUrl: 'https://example.com/oneplus8t.jpg',
              description: 'A powerful and stylish smartphone with fast charging capabilities.',
              price: 649.99,
            ),
            Product(
              name: 'OnePlus Nord',
              imageUrl: 'https://example.com/oneplusnord.jpg',
              description: 'An affordable smartphone with great features and performance.',
              price: 399.99,
            ),
            Product(
              name: 'OnePlus 7 Pro',
              imageUrl: 'https://example.com/oneplus7pro.jpg',
              description: 'A previous-generation flagship with excellent performance and design.',
              price: 499.99,
            ),
          ],
        ),
        CategoryLevel3(
          name: 'Xiaomi',
          products: [
            Product(
              name: 'Mi 11 Ultra',
              imageUrl: 'https://example.com/mi11ultra.jpg',
              description: 'A premium smartphone with a stunning display and powerful camera.',
              price: 799.99,
            ),
            Product(
              name: 'Redmi Note 10',
              imageUrl: 'https://example.com/redminote10.jpg',
              description: 'An affordable smartphone with great features and performance.',
              price: 199.99,
            ),
            Product(
              name: 'Mi 10',
              imageUrl: 'https://example.com/mi10.jpg',
              description: 'A high-end smartphone with excellent performance and design.',
              price: 699.99,
            ),
            Product(
              name: 'Poco X3 Pro',
              imageUrl: 'https://example.com/pocox3pro.jpg',
              description: 'A budget-friendly smartphone with powerful features and performance.',
              price: 249.99,
            ),
            Product(
              name: 'Redmi 9',
              imageUrl: 'https://example.com/redmi9.jpg',
              description: 'An entry-level smartphone with essential features and good performance.',
              price: 149.99,
            ),
          ],
        ),
      ],
    ),
    CategoryLevel2(
    name: 'Laptops',
    categories: [
    CategoryLevel3(
    name: 'Apple',
    products: [
    Product(
    name: 'MacBook Pro 16"',
    imageUrl: 'https://example.com/macbookpro16.jpg',
    description: 'A powerful laptop with a stunning Retina display and long battery life.',
    price: 2499.99,
    ),
    Product(
    name: 'MacBook Air 13"',
    imageUrl: 'https://example.com/macbookair13.jpg',
    description: 'A lightweight and portable laptop with a great battery life.',
    price: 999.99,
    ),
    Product(
    name: 'MacBook Pro 13"',
    imageUrl: 'https://example.com/macbookpro13.jpg',
    description: 'A smaller version of the MacBook Pro with excellent performance.',
    price: 1299.99,
    ),
    Product(
    name: 'MacBook',
    imageUrl: 'https://example.com/macbook.jpg',
    description: 'An ultra-lightweight laptop with efficient performance.',
    price: 899.99,
    ),
    Product(
    name: 'MacBook Pro 14"',
    imageUrl: 'https://example.com/macbookpro14.jpg',
    description: 'A mid-size MacBook Pro with a powerful processor and Retina display.',
    price: 1999.99,
    ),
    ],
    ),
    CategoryLevel3(
    name: 'Dell',
    products: [
    Product(
    name: 'XPS 13',
    imageUrl: 'https://example.com/dellxps13.jpg',
    description: 'A premium laptop with a beautiful design and powerful performance.',
    price: 1299.99,
    ),
    Product(
    name: 'Inspiron 15',
    imageUrl: 'https://example.com/dellinspiron15.jpg',
    description: 'An affordable laptop with a large screen and long battery life.',
    price: 599.99,
    ),
    Product(
    name: 'XPS 15',
    imageUrl: 'https://example.com/dellxps15.jpg',
    description: 'A larger version of the XPS with enhanced performance and display.',
    price: 1599.99,
    ),
    Product(
    name: 'Latitude 14',
    imageUrl: 'https://example.com/delllatitude14.jpg',
    description: 'A business laptop with robust security features and reliable performance.',
    price: 899.99,
    ),
    Product(
    name: 'G5 15',
    imageUrl: 'https://example.com/dellg515.jpg',
    description: 'A gaming laptop with powerful hardware and a high-refresh-rate screen.',
    price: 999.99,
    ),
    ],
    ),
    CategoryLevel3(
    name: 'HP',
    products: [
    Product(
    name: 'Spectre x360',
    imageUrl: 'https://example.com/spectrex360.jpg',
    description: 'A high-end convertible laptop with great performance and design.',
    price: 1499.99,
    ),
    Product(
    name: 'Pavilion 15',
    imageUrl: 'https://example.com/pavilion15.jpg',
    description: 'An affordable and reliable laptop for everyday use.',
    price: 749.99,
    ),
    Product(
    name: 'Omen 15',
    imageUrl: 'https://example.com/omen15.jpg',
    description: 'A powerful gaming laptop with high-end specs and performance.',
    price: 1699.99,
    ),
    Product(
    name: 'Envy 13',
    imageUrl: 'https://example.com/envy13.jpg',
    description: 'A stylish and powerful laptop for work and entertainment.',
    price: 999.99,
    ),
    Product(
    name: 'EliteBook 840',
    imageUrl: 'https://example.com/elitebook840.jpg',
    description: 'A business laptop with advanced security features and great performance.',
    price: 1399.99,
    ),
    ],
    ),
    CategoryLevel3(
    name: 'Lenovo',
    products: [
    Product(
    name: 'ThinkPad X1 Carbon',
    imageUrl: 'https://example.com/thinkpadx1carbon.jpg',
    description: 'A lightweight and durable business laptop with excellent performance.',
    price: 1599.99,
    ),
    Product(
    name: 'Yoga C940',
    imageUrl: 'https://example.com/yogac940.jpg',
    description: 'A versatile convertible laptop with great features and performance.',
    price: 1399.99,
    ),
    Product(
    name: 'Legion 5',
    imageUrl: 'https://example.com/legion5.jpg',
    description: 'A powerful gaming laptop with high-end specs and performance.',
    price: 1199.99,
    ),
    Product(
    name: 'IdeaPad 3',
    imageUrl: 'https://example.com/ideapad3.jpg',
    description: 'An affordable and reliable laptop for everyday use.',
    price: 549.99,
    ),
    Product(
    name: 'ThinkBook 14',
    imageUrl: 'https://example.com/thinkbook14.jpg',
    description: 'A stylish and powerful laptop for work and entertainment.',
    price: 899.99,
    ),
    ],
    ),
    CategoryLevel3(
    name: 'Asus',
    products: [
    Product(
    name: 'ZenBook 13',
    imageUrl: 'https://example.com/zenbook13.jpg',
    description: 'A sleek and powerful laptop with excellent performance and battery life.',
    price: 1099.99,
    ),
    Product(
    name: 'ROG Strix G15',
    imageUrl: 'https://example.com/rogstrixg15.jpg',
    description: 'A high-performance gaming laptop with advanced features.',
    price: 1499.99,
    ),
    Product(
    name: 'VivoBook S14',
    imageUrl: 'https://example.com/vivobooks14.jpg',
    description: 'A stylish and affordable laptop with great features and performance.',
    price: 799.99,
    ),
    Product(
    name: 'TUF Gaming A15',
    imageUrl: 'https://example.com/tufgaminga15.jpg',
    description: 'A durable and powerful gaming laptop with high-end specs.',
    price: 999.99,
    ),
    Product(
    name: 'ExpertBook B9',
    imageUrl: 'https://example.com/expertbookb9.jpg',
    description: 'A lightweight and durable business laptop with excellent performance.',
    price: 1299.99,
    ),
    ],
    ),
    ],
    ),
    CategoryLevel2(
    name: 'Tablets',
    categories: [
    CategoryLevel3(
    name: 'Apple',
    products: [
    Product(
    name: 'iPad Pro 12.9"',
    imageUrl: 'https://example.com/ipadpro129.jpg',
    description: 'A powerful tablet with a stunning Retina display and long battery life.',
    price: 1099.99,
    ),
    Product(
    name: 'iPad Air',
    imageUrl: 'https://example.com/ipadair.jpg',
    description: 'A lightweight and portable tablet with great performance.',
    price: 599.99,
    ),
    Product(
    name: 'iPad Mini',
    imageUrl: 'https://example.com/ipadmini.jpg',
    description: 'A compact and powerful tablet with a great display.',
    price: 399.99,
    ),
    Product(
    name: 'iPad',
    imageUrl: 'https://example.com/ipad.jpg',
    description: 'A versatile and affordable tablet with excellent features.',
    price: 329.99,
    ),
    Product(
    name: 'iPad Pro 11"',
    imageUrl: 'https://example.com/ipadpro11.jpg',
    description: 'A smaller version of the iPad Pro with great performance and design.',
    price: 899.99,
    ),
    ],
    ),
    CategoryLevel3(
    name: 'Samsung',
    products: [
    Product(
    name: 'Galaxy Tab S8',
    imageUrl: 'https://example.com/galaxytabs8.jpg',
    description: 'A high-end tablet with a stunning display and powerful performance.',
    price: 799.99,
    ),
    Product(
    name: 'Galaxy Tab A7',
    imageUrl: 'https://example.com/galaxytaba7.jpg',
    description: 'An affordable tablet with great features and performance.',
    price: 249.99,
    ),
    Product(
    name: 'Galaxy Tab S7',
    imageUrl: 'https://example.com/galaxytabs7.jpg',
    description: 'A powerful tablet with a beautiful display and long battery life.',
    price: 649.99,
    ),
    Product(
    name: 'Galaxy Tab Active3',
    imageUrl: 'https://example.com/galaxytabactive3.jpg',
    description: 'A rugged tablet designed for tough environments and outdoor use.',
    price: 499.99,
    ),
    Product(
    name: 'Galaxy Tab S6 Lite',
    imageUrl: 'https://example.com/galaxytabs6lite.jpg',
    description: 'A versatile and affordable tablet with great features and performance.',
    price: 349.99,
    ),
    ],
    ),
    CategoryLevel3(
    name: 'Microsoft',
    products: [
    Product(
    name: 'Surface Pro 7',
    imageUrl: 'https://example.com/surfacepro7.jpg',
    description: 'A versatile and powerful tablet with a detachable keyboard.',
    price: 899.99,
    ),
    Product(
    name: 'Surface Go 2',
    imageUrl: 'https://example.com/surfacego2.jpg',
    description: 'A compact and affordable tablet with great features.',
    price: 399.99,
    ),
    Product(
    name: 'Surface Pro X',
    imageUrl: 'https://example.com/surfaceprox.jpg',
    description: 'A sleek and powerful tablet with a stunning display and long battery life.',
    price: 999.99,
    ),
    Product(
    name: 'Surface Laptop Go',
    imageUrl: 'https://example.com/surfacelaptopgo.jpg',
    description: 'A lightweight and portable tablet with excellent performance.',
    price: 699.99,
    ),
    Product(
    name: 'Surface Book 3',
    imageUrl: 'https://example.com/surfacebook3.jpg',
    description: 'A high-end tablet with great performance and a detachable screen.',
    price: 1299.99,
    ),
    ],
    ),
    CategoryLevel3(
    name: 'Lenovo',
    products: [
    Product(
    name: 'Tab P11 Pro',
    imageUrl: 'https://example.com/tabp11pro.jpg',
    description: 'A premium tablet with a stunning display and powerful performance.',
    price: 499.99,
    ),
    Product(
    name: 'Yoga Smart Tab',
    imageUrl: 'https://example.com/yogasmarttab.jpg',
    description: 'A versatile and affordable tablet with great features and design.',
    price: 299.99,
    ),
    Product(
    name: 'Tab M10',
    imageUrl: 'https://example.com/tabm10.jpg',
    description: 'A budget-friendly tablet with essential features and performance.',
    price: 199.99,
    ),
    Product(
    name: 'ThinkPad X1 Tablet',
    imageUrl: 'https://example.com/thinkpadx1tablet.jpg',
    description: 'A high-end tablet with powerful performance and a detachable keyboard.',
    price: 999.99,
    ),
    Product(
    name: 'Tab P10',
    imageUrl: 'https://example.com/tabp10.jpg',
    description: 'A stylish and powerful tablet with great features and performance.',
    price: 399.99,
    ),
    ],
    ),
    CategoryLevel3(
    name: 'Asus',
    products: [
    Product(
    name: 'ZenPad 3S 10',
    imageUrl: 'https://example.com/zenpad3s10.jpg',
    description: 'A high-end tablet with a stunning display and powerful performance.',
    price: 499.99,
    ),
    Product(
    name: 'ROG Phone 5',
    imageUrl: 'https://example.com/rogphone5.jpg',
    description: 'A powerful gaming phone with high-end specs and performance.',
    price: 999.99,
    ),
    Product(
    name: 'Transformer Mini',
    imageUrl: 'https://example.com/transformermini.jpg',
    description: 'A versatile and affordable tablet with a detachable keyboard.',
    price: 349.99,
    ),
    Product(
    name: 'ZenPad Z8',
    imageUrl: 'https://example.com/zenpadz8.jpg',
    description: 'A compact and powerful tablet with great features and performance.',
    price: 299.99,
    ),
    Product(
    name: 'VivoTab 8',
    imageUrl: 'https://example.com/vivotab8.jpg',
    description: 'A budget-friendly tablet with essential features and good performance.',
    price: 199.99,
    ),
    ],
    ),
    ],
    ),
    CategoryLevel2(
    name: 'Wearables',
    categories: [
    CategoryLevel3(
    name: 'Smartwatches',
    products: [
    Product(
    name: 'Apple Watch Series 7',
    imageUrl: 'https://example.com/applewatchseries7.jpg',
    description: 'A powerful smartwatch with advanced features and a sleek design.',
    price: 399.99,
    ),
    Product(
    name: 'Samsung Galaxy Watch 4',
    imageUrl: 'https://example.com/galaxywatch4.jpg',
    description: 'A high-end smartwatch with great features and performance.',
    price: 349.99,
    ),
    Product(
    name: 'Fitbit Versa 3',
    imageUrl: 'https://example.com/fitbitversa3.jpg',
    description: 'A versatile and affordable smartwatch with excellent fitness tracking.',
    price: 229.99,
    ),
    Product(
    name: 'Garmin Fenix 6',
    imageUrl: 'https://example.com/garminfenix6.jpg',
    description: 'A rugged and powerful smartwatch with advanced features.',
    price: 599.99,
    ),
    Product(
    name: 'Huawei Watch GT 2',
    imageUrl: 'https://example.com/huaweiwatchgt2.jpg',
    description: 'A stylish and powerful smartwatch with great battery life.',
    price: 199.99,
    ),
    ],
    ),
    CategoryLevel3(
    name: 'Fitness Trackers',
    products: [
    Product(
    name: 'Fitbit Charge 5',
    imageUrl: 'https://example.com/fitbitcharge5.jpg',
    description: 'A powerful fitness tracker with advanced health tracking features.',
    price: 149.99,
    ),
    Product(
    name: 'Garmin Vivosmart 4',
    imageUrl: 'https://example.com/garminvivosmart4.jpg',
    description: 'A sleek and affordable fitness tracker with great features.',
    price: 129.99,
    ),
    Product(
    name: 'Xiaomi Mi Band 6',
    imageUrl: 'https://example.com/miband6.jpg',
    description: 'A budget-friendly fitness tracker with essential features and performance.',
    price: 49.99,
    ),
    Product(
    name: 'Samsung Galaxy Fit 2',
    imageUrl: 'https://example.com/galaxyfit2.jpg',
    description: 'A versatile and affordable fitness tracker with great features.',
    price: 99.99,
    ),
    Product(
    name: 'Amazfit Bip U Pro',
    imageUrl: 'https://example.com/amazfitbipupro.jpg',
    description: 'A stylish and powerful fitness tracker with excellent battery life.',
    price: 69.99,
    ),
    ],
    ),
    CategoryLevel3(
    name: 'VR Headsets',
    products: [
    Product(
    name: 'Oculus Quest 2',
    imageUrl: 'https://example.com/oculusquest2.jpg',
    description: 'A powerful and versatile VR headset with excellent performance.',
    price: 299.99,
    ),
    Product(
    name: 'PlayStation VR',
    imageUrl: 'https://example.com/playstationvr.jpg',
    description: 'A high-quality VR headset for PlayStation gaming.',
    price: 399.99,
    ),
    Product(
    name: 'HTC Vive Cosmos',
    imageUrl: 'https://example.com/htcvivecosmos.jpg',
    description: 'A premium VR headset with advanced features and performance.',
    price: 699.99,
    ),
    Product(
    name: 'Valve Index',
    imageUrl: 'https://example.com/valveindex.jpg',
    description: 'A high-end VR headset with excellent performance and design.',
    price: 999.99,
    ),
    Product(
    name: 'Samsung Odyssey+',
    imageUrl: 'https://example.com/samsungodysseyplus.jpg',
    description: 'A powerful and versatile VR headset with great features.',
    price: 499.99,
    ),
    ],
    ),
    CategoryLevel3(
    name: 'Smart Glasses',
    products: [
    Product(
    name: 'Google Glass',
    imageUrl: 'https://example.com/googleglass.jpg',
    description: 'A high-tech smart glasses with advanced features and performance.',
    price: 999.99,
    ),
    Product(
    name: 'Snap Spectacles 3',
    imageUrl: 'https://example.com/snapspectacles3.jpg',
    description: 'A stylish and versatile smart glasses with excellent features.',
    price: 379.99,
    ),
    Product(
    name: 'Vuzix Blade',
    imageUrl: 'https://example.com/vuzixblade.jpg',
    description: 'A powerful and versatile smart glasses with great performance.',
    price: 799.99,
    ),
    Product(
    name: 'North Focals',
    imageUrl: 'https://example.com/northfocals.jpg',
    description: 'A stylish and innovative smart glasses with excellent features.',
    price: 599.99,
    ),
    Product(
    name: 'Bose Frames',
    imageUrl: 'https://example.com/boseframes.jpg',
    description: 'A stylish and powerful smart glasses with built-in speakers.',
    price: 199.99,
    ),
    ],
    ),
    CategoryLevel3(
    name: 'Smart Rings',
    products: [
    Product(
    name: 'Oura Ring',
    imageUrl: 'https://example.com/ouraring.jpg',
    description: 'A powerful and versatile smart ring with advanced health tracking.',
    price: 299.99,
    ),
    Product(
    name: 'Motiv Ring',
    imageUrl: 'https://example.com/motivring.jpg',
    description: 'A stylish and versatile smart ring with great features.',
    price: 199.99,
    ),
    Product(
    name: 'Circular Ring',
    imageUrl: 'https://example.com/circularring.jpg',
    description: 'A powerful and innovative smart ring with advanced features.',
    price: 299.0,
    ),]
    ),]
    ),]
    )
    ];
    return dummyProducts;
  }

}
