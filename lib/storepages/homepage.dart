import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kudo_sim/storepages/Widgets/dashboard-card.dart';
import 'package:kudo_sim/storepages/globalpackagepage.dart';
import 'package:kudo_sim/tabs/AccountInformation.dart';
import 'package:kudo_sim/tabs/ActivePlan.dart';
import 'package:kudo_sim/tabs/AlertPage.dart';
import 'package:kudo_sim/tabs/InactivePlan.dart';
import 'package:kudo_sim/tabs/Settings.dart';
import 'package:kudo_sim/tabs/homeTab.dart';

List<BottomNavigationBarItem> bottomNavItems = const <BottomNavigationBarItem>[
  BottomNavigationBarItem(
    icon: Icon(Icons.home),
    label: ' ',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.person),
    label: ' ',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.settings),
    label: ' ',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.notifications),
    label: ' ',
  ),
];

List<Widget> bottomNavScreen = <Widget>[
  HomeTab(),
  AccountInformation(),
  Settings(),
  AlertPage()
];

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // return BlocConsumer<LandingPageBloc, LandingPageState>(
    listener:
    (context, state) {};
    builder:
    (context, state) {
      return Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Container(
                height: 250,
                color: Colors.transparent,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Welcome Back",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Color(0xFF778AA6),
                                fontSize: 20),
                          ),
                          Material(
                            elevation: 5,
                            borderRadius: BorderRadius.circular(12),
                            child: Container(
                              width: 40,
                              height: 50,
                              child: Image.asset(
                                'assets/images/Pro.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Text(
                      "Demokrat Lajqi",
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Colors.black,
                          fontSize: 28,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 20),
                    const Row(
                      children: [
                        Text(
                          "My Kudo",
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.black,
                              fontSize: 22,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "  eSIM",
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.black,
                              fontSize: 22,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 0),
                child: ListView(
                  children: [
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ActivePlan()));
                        },
                        child: DashboardCard(
                          cityName: 'Europe',
                          path: 'assets/images/european union (1).png',
                        )),
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => InactivePlan(
                                        cityName: 'France',
                                      )));
                        },
                        child: DashboardCard(
                          cityName: 'France',
                          path: 'assets/images/france 1 (1).png',
                        )), // Add more DashboardCard widgets as needed
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      InactivePlan(cityName: "Germany")));
                        },
                        child: DashboardCard(
                          cityName: 'Germany',
                          path: 'assets/images/germany(1) 1.png',
                        )),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    };
    return BlocConsumer<LandingPageBloc, LandingPageState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          body: Center(child: bottomNavScreen.elementAt(state.tabIndex)),
          bottomNavigationBar: /*Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              width: MediaQuery.of(context).size.width / 0.7,
              decoration: BoxDecoration(
                color: Colors.lime,
                borderRadius: BorderRadius.circular(21),
              ),
              child: BottomNavigationBar(
                backgroundColor: Colors.deepPurple,
                items: bottomNavItems,
                currentIndex: state.tabIndex,
                selectedItemColor: Theme.of(context).colorScheme.primary,
                unselectedItemColor: Colors.grey,
                onTap: (index) {
                  BlocProvider.of<LandingPageBloc>(context)
                      .add(TabChange(tabIndex: index));
                },
                elevation: 5,
              ),
            ),
          ),*/Padding(
            padding: const EdgeInsets.all(20.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(24),
              child: BottomNavigationBar(
                type: BottomNavigationBarType.fixed, // Set type to fixed
                items: bottomNavItems,
                currentIndex: state.tabIndex,
                selectedItemColor: Colors.grey, // Change selected item color
                unselectedItemColor: Colors.white, // Change unselected item color
                onTap: (index) {
                  BlocProvider.of<LandingPageBloc>(context)
                      .add(TabChange(tabIndex: index));
                },
                elevation: 5,
                backgroundColor: Colors.deepPurple, // Set the background color to deep purple
              ),
            ),
          ),
        );
      },
    );
  }
}

abstract class LandingPageState {
  final int tabIndex;

  const LandingPageState({required this.tabIndex});
}

class LandingPageInitial extends LandingPageState {
  const LandingPageInitial({required super.tabIndex});
}

abstract class LandingPageEvent {}

class TabChange extends LandingPageEvent {
  final int tabIndex;

  TabChange({required this.tabIndex});
}

class LandingPageBloc extends Bloc<LandingPageEvent, LandingPageState> {
  LandingPageBloc() : super(const LandingPageInitial(tabIndex: 0)) {
    on<LandingPageEvent>((event, emit) {
      if (event is TabChange) {
        print(event.tabIndex);
        emit(LandingPageInitial(tabIndex: event.tabIndex));
      }
    });
  }
}
