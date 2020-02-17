import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_uikit/ui/page/dashboard/dashboard_one.page.dart';
import 'package:flutter_uikit/ui/page/dashboard/dashboard_two_page.dart';
import 'package:flutter_uikit/ui/page/dashboard/food_home_page.dart';
import 'package:flutter_uikit/ui/page/dashboard/hotel_home_page.dart';
import 'package:flutter_uikit/ui/page/home_page.dart';
import 'package:flutter_uikit/ui/page/login/login_page.dart';
import 'package:flutter_uikit/ui/page/login/login_two_page.dart';
import 'package:flutter_uikit/ui/page/login/signup_page.dart';
import 'package:flutter_uikit/ui/page/login/signup_page_two.dart';
import 'package:flutter_uikit/ui/page/notfound/notfound_page.dart';
import 'package:flutter_uikit/ui/page/payment/credit_card_page.dart';
import 'package:flutter_uikit/ui/page/payment/payment_success_page.dart';
import 'package:flutter_uikit/ui/page/profile/profile_four_page.dart';
import 'package:flutter_uikit/ui/page/profile/profile_one_page.dart';
import 'package:flutter_uikit/ui/page/profile/profile_three_page.dart';
import 'package:flutter_uikit/ui/page/profile/profile_two_page.dart';
import 'package:flutter_uikit/ui/page/settings/settings_one_page.dart';
import 'package:flutter_uikit/ui/page/shopping/product_detail_page.dart';
import 'package:flutter_uikit/ui/page/shopping/shopping_details_page.dart';
import 'package:flutter_uikit/ui/page/shopping/shopping_four_page.dart';
import 'package:flutter_uikit/ui/page/shopping/shopping_one_page.dart';
import 'package:flutter_uikit/ui/page/timeline/timeline_one_page.dart';
import 'package:flutter_uikit/ui/page/timeline/timeline_three_page.dart';
import 'package:flutter_uikit/ui/page/timeline/timeline_two_page.dart';
import 'package:flutter_uikit/utils/translations.dart';
import 'package:flutter_uikit/utils/uidata.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_uikit/ui/page/timeline/timeline_four_page';

class MyApp extends StatelessWidget {
  final materialApp = MaterialApp(
      title: UIData.appName,
      theme: ThemeData(
          primaryColor: Colors.black,
          fontFamily: UIData.quickFont,
          primarySwatch: Colors.amber),
      debugShowCheckedModeBanner: false,
      showPerformanceOverlay: false,
      home: HomePage(),
      localizationsDelegates: [
        const TranslationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale("en", "US"),
        const Locale("hi", "UR"),
      ],
      // initialRoute: UIData.notFoundRoute,

      //routes
      routes: <String, WidgetBuilder>{
        UIData.homeRoute: (BuildContext context) => HomePage(),

        //Profile
        UIData.profileOneRoute: (BuildContext context) => ProfileOnePage(),
        UIData.profileTwoRoute: (BuildContext context) => ProfileTwoPage(),
        UIData.profileThreeRoute: (BuildContext context) => ProfilePage(),
        UIData.profileFourRoute: (BuildContext context) => ProfileScreen4(),

        //Timeline
        UIData.timelineOneRoute: (BuildContext context) => TimelineOnePage(),
        UIData.timelineTwoRoute: (BuildContext context) => TimelineTwoPage(),
        UIData.timelineThreeRoute: (BuildContext context) =>  ArticleOnePage(),
        UIData.timelineFourRoute: (BuildContext context) =>  BlogHomeOnePage(),
        //Search Result
        UIData.notFoundRoute: (BuildContext context) => NotFoundPage(),
        //Setting
        UIData.settingsOneRoute: (BuildContext context) => SettingsOnePage(),
        //Shopping
        UIData.shoppingOneRoute: (BuildContext context) => ShoppingOnePage(),
        UIData.shoppingTwoRoute: (BuildContext context) => ShoppingDetailsPage(),
        UIData.shoppingThreeRoute: (BuildContext context) => ProductDetailPage(),
        UIData.shoppingFourRoute: (BuildContext context) => EcommercePage4(),
        //Login
        UIData.loginOneRoute: (BuildContext context) => LoginPage(),
        UIData.loginTwoRoute: (BuildContext context) => LoginTwoPage(),
        UIData.signUpRoute: (BuildContext context) => SignUp1(),
        UIData.signUpTwoRoute: (BuildContext context) => SignupTwoPage(),

        //Payment
        UIData.paymentOneRoute: (BuildContext context) => CreditCardPage(),
        UIData.paymentTwoRoute: (BuildContext context) => PaymentSuccessPage(),

        //Dashboard
        UIData.dashboardOneRoute: (BuildContext context) => DashboardOnePage(),
        UIData.dashboardTwoRoute: (BuildContext context) => DashboardTwoPage(),
        UIData.dashboardThreeRoute: (BuildContext context) => HotelHomePage(),
        UIData.dashboardFourRoute: (BuildContext context) => FoodDeliveryHomePage(),
      },
      onUnknownRoute: (RouteSettings rs) => new MaterialPageRoute(
          builder: (context) => new NotFoundPage(
                appTitle: UIData.coming_soon,
                icon: FontAwesomeIcons.solidSmile,
                title: UIData.coming_soon,
                message: "Under Development",
                iconColor: Colors.green,
              )));

  @override
  Widget build(BuildContext context) {
    return materialApp;
  }
}
