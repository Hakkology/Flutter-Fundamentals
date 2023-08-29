/*

Dart Notes

Flutter is a framework which is frequently updated and renewed.

Important factors:

1) Type Safety
2) Null Safety

1 - 
myvar = 1;
myvar = a;
myvar:str = "a";

Type should be clarified in dart.

2-
Null returns require safety.
To decide whether a variable should be null or not.

int sayi; -> cannot be null.
int? sayi; -> nullable integer.
sayi! -> not nullable where it is defined and declared.

---------------------------

Packages e-pub.

Dynamic takes all kinds of data and is upgradable within context. 
Class not available.

var defines the types at start and uses this type. 
Later not available for repeated change.

const and final.
const must be defined immediately and given at compile time.
final must be defined at a later date during runtime but cannot be changed afterwards.

Enum are data types.
Switch case -> self explanatory.

If curly brackets are involved,
  - define each parameter seperately.
  - otherwise parameters should be defined in order.

If required keyword is available
  - parameter should be given.
  - without the required keyword, parameter should be set as nullable.
    -> which requires an actual null check ?!?

Flutter Notes

- Widgets are not shown but drawn on the application. 
- Assume a variable is there. Once drawn, variables do not change.
- Set State shows that variables also change on widgets.

- Widgets are whether stateless or with state, which determines if a value
within widget is subject to change by any means.

- Vector and bmp images differ from each other in terms of pixel presentation.
Bmp images increase the size of pixels on zoom, vectors do not do that.
- SVG is a world standard for vector representation. -> Research this.

- Google has created icons and gave these free license for our use. 
There are many icons that can be used for development. Link is below:
https://fonts.google.com/icons

- late means that initilization is not complete.
if the parameter is not going to be null or will be available later, add late.
Do not make it nullable.

https://www.xdguru.com/wisefood-free-ui-kit-xd/
- made of drawer, text, icon, appbar on top,
- made of textfield, image, text on upper side,
- made of card and list on below side for widget listing.

- Scaffold also covers the appbar.

void main() {
  runApp(const StateApp());
}

class StateApp extends StatelessWidget {
  const StateApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}

to run a single app on widget builder as main function;
void main() {
  runApp(const <AppName>());
}

Add a widget as stateapp and extend it;
home screen example given.


Navigation functionality allows you to swap from one widget or from one
page to another. -push adds a page on top and -pop removes that page.
-canpop checks if there is any other screen on the back side.

Stateless widgets cannot have states.
Stateful widgets have states which are added through states and this state
extends the actual widget.

Image.asset for loading images.

*/