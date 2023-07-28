import 'package:flutter/material.dart';
import 'package:mqd_v1/presentation/splash_screen/splash_screen.dart';
import 'package:mqd_v1/presentation/sign_up_with_phone_number_screen/sign_up_with_phone_number_screen.dart';
import 'package:mqd_v1/presentation/loading_screen/loading_screen.dart';
import 'package:mqd_v1/presentation/intro_screen/intro_screen.dart';
import 'package:mqd_v1/presentation/login_screen/login_screen.dart';
import 'package:mqd_v1/presentation/verify_number_screen/verify_number_screen.dart';
import 'package:mqd_v1/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:mqd_v1/presentation/personal_details_screen/personal_details_screen.dart';
import 'package:mqd_v1/presentation/likes_interests_screen/likes_interests_screen.dart';
import 'package:mqd_v1/presentation/upload_id_screen/upload_id_screen.dart';
import 'package:mqd_v1/presentation/location_screen/location_screen.dart';
import 'package:mqd_v1/presentation/home_swipe_screen/home_swipe_screen.dart';
import 'package:mqd_v1/presentation/profile_one_screen/profile_one_screen.dart';
import 'package:mqd_v1/presentation/users_container_screen/users_container_screen.dart';
import 'package:mqd_v1/presentation/user_details_tab_container_screen/user_details_tab_container_screen.dart';
import 'package:mqd_v1/presentation/match_screen/match_screen.dart';
import 'package:mqd_v1/presentation/unmatch_screen/unmatch_screen.dart';
import 'package:mqd_v1/presentation/messages_screen/messages_screen.dart';
import 'package:mqd_v1/presentation/messages_thread_details_screen/messages_thread_details_screen.dart';
import 'package:mqd_v1/presentation/message_menu_popup_screen/message_menu_popup_screen.dart';
import 'package:mqd_v1/presentation/subscription_screen/subscription_screen.dart';
import 'package:mqd_v1/presentation/payment_screen/payment_screen.dart';
import 'package:mqd_v1/presentation/vdeo_call_screen/vdeo_call_screen.dart';
import 'package:mqd_v1/presentation/notification_screen/notification_screen.dart';
import 'package:mqd_v1/presentation/settings_screen/settings_screen.dart';
import 'package:mqd_v1/presentation/dating_matches_tab_container_screen/dating_matches_tab_container_screen.dart';
import 'package:mqd_v1/presentation/filter_screen/filter_screen.dart';
import 'package:mqd_v1/presentation/user_details_menu_screen/user_details_menu_screen.dart';
import 'package:mqd_v1/presentation/subscription_opting_message_screen/subscription_opting_message_screen.dart';
import 'package:mqd_v1/presentation/nearby_dating_events_tab_container_screen/nearby_dating_events_tab_container_screen.dart';
import 'package:mqd_v1/presentation/event_details_screen/event_details_screen.dart';
import 'package:mqd_v1/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String signUpWithPhoneNumberScreen =
      '/sign_up_with_phone_number_screen';

  static const String loadingScreen = '/loading_screen';

  static const String introScreen = '/intro_screen';

  static const String loginScreen = '/login_screen';

  static const String verifyNumberScreen = '/verify_number_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String personalDetailsScreen = '/personal_details_screen';

  static const String likesInterestsScreen = '/likes_interests_screen';

  static const String uploadIdScreen = '/upload_id_screen';

  static const String locationScreen = '/location_screen';

  static const String homeSwipeScreen = '/home_swipe_screen';

  static const String profileOneScreen = '/profile_one_screen';

  static const String usersPage = '/users_page';

  static const String usersTabContainerPage = '/users_tab_container_page';

  static const String usersContainerScreen = '/users_container_screen';

  static const String userDetailsPage = '/user_details_page';

  static const String userDetailsTabContainerScreen =
      '/user_details_tab_container_screen';

  static const String matchScreen = '/match_screen';

  static const String unmatchScreen = '/unmatch_screen';

  static const String messagesScreen = '/messages_screen';

  static const String profileAlternativePage = '/profile_alternative_page';

  static const String messagesThreadDetailsScreen =
      '/messages_thread_details_screen';

  static const String messageMenuPopupScreen = '/message_menu_popup_screen';

  static const String profilePage = '/profile_page';

  static const String profileTabContainerPage = '/profile_tab_container_page';

  static const String subscriptionScreen = '/subscription_screen';

  static const String paymentScreen = '/payment_screen';

  static const String vdeoCallScreen = '/vdeo_call_screen';

  static const String notificationScreen = '/notification_screen';

  static const String settingsScreen = '/settings_screen';

  static const String datingMatchesPage = '/dating_matches_page';

  static const String datingMatchesTabContainerScreen =
      '/dating_matches_tab_container_screen';

  static const String filterScreen = '/filter_screen';

  static const String userDetailsMenuScreen = '/user_details_menu_screen';

  static const String subscriptionOptingMessageScreen =
      '/subscription_opting_message_screen';

  static const String nearbyDatingEventsPage = '/nearby_dating_events_page';

  static const String nearbyDatingEventsTabContainerScreen =
      '/nearby_dating_events_tab_container_screen';

  static const String eventDetailsScreen = '/event_details_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        splashScreen: SplashScreen.builder,
        signUpWithPhoneNumberScreen: SignUpWithPhoneNumberScreen.builder,
        loadingScreen: LoadingScreen.builder,
        introScreen: IntroScreen.builder,
        loginScreen: LoginScreen.builder,
        verifyNumberScreen: VerifyNumberScreen.builder,
        signUpScreen: SignUpScreen.builder,
        personalDetailsScreen: PersonalDetailsScreen.builder,
        likesInterestsScreen: LikesInterestsScreen.builder,
        uploadIdScreen: UploadIdScreen.builder,
        locationScreen: LocationScreen.builder,
        homeSwipeScreen: HomeSwipeScreen.builder,
        profileOneScreen: ProfileOneScreen.builder,
        usersContainerScreen: UsersContainerScreen.builder,
        userDetailsTabContainerScreen: UserDetailsTabContainerScreen.builder,
        matchScreen: MatchScreen.builder,
        unmatchScreen: UnmatchScreen.builder,
        messagesScreen: MessagesScreen.builder,
        messagesThreadDetailsScreen: MessagesThreadDetailsScreen.builder,
        messageMenuPopupScreen: MessageMenuPopupScreen.builder,
        subscriptionScreen: SubscriptionScreen.builder,
        paymentScreen: PaymentScreen.builder,
        vdeoCallScreen: VdeoCallScreen.builder,
        notificationScreen: NotificationScreen.builder,
        settingsScreen: SettingsScreen.builder,
        datingMatchesTabContainerScreen:
            DatingMatchesTabContainerScreen.builder,
        filterScreen: FilterScreen.builder,
        userDetailsMenuScreen: UserDetailsMenuScreen.builder,
        subscriptionOptingMessageScreen:
            SubscriptionOptingMessageScreen.builder,
        nearbyDatingEventsTabContainerScreen:
            NearbyDatingEventsTabContainerScreen.builder,
        eventDetailsScreen: EventDetailsScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: SplashScreen.builder
      };
}
