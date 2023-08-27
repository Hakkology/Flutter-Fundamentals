/*

Dart/Flutter Notes

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


*/