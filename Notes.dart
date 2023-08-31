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

Designs could be for more devices such as phones, tablets, clocks, tvs, 
computers or automobile interfaces.
- Responsiveness - not fixed units for measurement and lengths.
- Adaptive - stateful designs to fit the widget drawings onto a rotating screen.

A design language is necessary for such adaptive conditions. The language
used in Flutter is "Material Design (3.0 currently)".
These design principles show us the best possible idea to create the feature
that is the most convenient for the end user with best accessibility.

- Widgets are whether stateless or with state, which determines if a value
within widget is subject to change by any means.

- Widgets are not shown but drawn on the application. 
- Assume a variable is there. Once drawn, variables do not change.
- SetState shows that variables also change on widgets.

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
page to another. 
-push adds a page on top 
-pop removes that page.
-canpop checks if there is any other screen on the back side.

Stateless widgets cannot have states.
Stateful widgets have states which are added through states and this state
extends the actual widget. Any variable or property which needs to be updated
for a widget remains under SetState function for stateful widgets. If stateless,
such changes appear not possible - recheck this.

Widgets get buildcontext as dependency injection inside them which allows us
to manipulate widget properties. Widgets return other specific widgets such as
MaterialApp, scaffold or cards in order to determine their type.

Stateful widgets hold keys as reference to its widget tree. Any widget under
a stateful widget needs to have its keys as reference for any change for the 
widget.

Within the code, it is possible to call if-conditional operations with
<bool> ? condition1 : condition2.
string result ?? "N/A". (if result is not null.)

Textfields require a controller which is added by TextEditingController widget.
This widget controls the input received from the User.

Get&Set operations can be achieved through "=>" operator.
-required tag appears mandatory for specific classes and properties
Future operations include async - await operations and is required when a
specific delay or multithreading operations are necessary.

Image.asset for loading images on file. Image.network for loading images from
internet.
Images can be put inside a container for further arrangements. Any issue can 
be put inside a padding to give specific distances on inset values.

We may also change themes to dark and light and change specific properties.
We may also choose material 2 and material 3 through a boolean under theme.

debugShowCheckedModeBanner: false,
removes the debug banner.

flutter pub add get
this adds the get library to flutter and comes with various changes and easy 
state management. Whether a variable is a string, int or an object, it can be 
made observable. When a property is observable, observing widgets can set its 
state without a statefulwidget. Defs:

obs is observable,
obx is observing widget.

In this sense, values no longer need properties such as int or string.
They are converted to Rxint or Rxstrings, which are observable properties for 
obx widgets. Although it should be noted that, if there is no dynamic variable 
inside the widget, it will throw an error. So obx should be used cautiously.

Once this is configured, we no longer have to set stateful widgets but only
observe specific variables which do change. Normally we would have to set this
with setstate();

Get.to(page) => moves to another page similar to navigation push.
Get.back() => helps us to return to the previous page similar to navigation 
pull.
Get.snackbar => pops a snackbar.

Get.CLI is configured through 
flutter pub global activate get_cli
Following command may be required.
export PATH="$PATH":"$HOME/.pub-cache/bin
Write "get" on terminal to check if the tool is functioning properly.
get init is used to initiate get tool. Choose getx pattern and overwrite app.
This deletes current state of application.

we can also create new pages and routes by using:
get create page:<pagename>

get generate model with "assets/user.json"
Takes a json file and generates a specific model for this.
get generate model with assets/login.json --skipProvider
Similar but skips the Provider model for this case.

If a project is created with Getx, you have routes and pages which are governed
by the routes folder. This is where we navigate and pass from one page to 
another.

Get.OffNamed
Allows us to switch from routes.
Get.lazyPut<UserProvider>(() => UserProvider());
lazyPut is used when only a specific information needs to be obtained to load
that page, in order words, manages our dependencies.

*/