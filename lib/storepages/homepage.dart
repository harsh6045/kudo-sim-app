import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


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

const List<Widget> bottomNavScreen = <Widget>[
  Text('Index 0: Home'),
  Text('Index 1: Profile'),
  Text('Index 2: Setting'),
  Text('Index 3: Notifications'),
];

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LandingPageBloc, LandingPageState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          body: Center(child: bottomNavScreen.elementAt(state.tabIndex)),
          bottomNavigationBar: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
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