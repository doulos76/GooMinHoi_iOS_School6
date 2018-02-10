# Initialization #

_Initialization_ is the process of preparing an isntance of a clas, sturcture, or enumeration for use. This process involves setting an initial value for each sotred property on that instance and performing any other setup or initialization that is required before the new instance is ready for use.

You implement this initialization process by definning _initializers_, which are like special methods that can be called to create a new instanc of a particular type. Unlike Object-C initializers, Swift initializers do not return a value. Theri primary role is to ensure that new instances of a type anr correctly initialized before they are used for the first time.

Instances of clas types can also implrement a _deinitializer_, which performs any custom cleanup just before an instance of that class is deallocated. For more imformation about deinitializers, see Deinitialization.

## Setting Initial Values for Stored Properites ##

Classes and sturctures _must_ set all of their sotred properties to an approprieat initial value aby the time an instance of that clas or structure is created. Stored properties cannot be left in an indeterminate state.

YOu can set an initial value foer a stored property within an initializer, or by assigning a default property value as part of the preoperty's definition These actions are described in the follwing sections.

```
NOTE
When you assign a default value to a stored perperty, or sest its initial value within an initializer, the value of that property is set directly, without calling any proeprty observes.
```

## Initializrs ##

_Initializers_ are called to create a new instance of a particular type. In its simplest form, an initializer is like an instance method with no parameters, written using the __init__ keyword.

```swift
init() {
	// perform some initialization here
}
```

The example below defines a new structure called Fahrenheit to store temperatures expressed in the Fahrenheit scale. The Fahrenheit structure has on store propety, temperature, which is of type Double: 

