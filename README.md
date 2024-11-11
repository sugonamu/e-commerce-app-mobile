# E commerce

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Assignment 1

 Explain what are stateless widgets and stateful widgets, and explain the difference between them. <br>
 - Statless widgets are used for static parts of the  UI that dont change over time whereas stateful widgets reflects the changes of the UI during the widget's cycle. Stateless widgets cannot  be changed after being built whereas stateful can.

 Mention the widgets that you have used for this project and its uses. <br>
- Scaffold: Provides a basic structure with an AppBar and body section.
- AppBar: Displays the title of the app at the top.
- Text: Used to display text (e.g., messages and headings).
- Column and Row: These widgets help organize the layout vertically (Column) and horizontally (Row).
- GridView.count: Creates a grid layout that displays the items in multiple rows and columns.
- Icon: Used for displaying icons in ItemCard.
- Card: Displays information such as messages inside a styled card component.
- Material and InkWell: Material gives a material design style to components, and InkWell is used to detect tap gestures.
- Padding and SizedBox: Adds space between components to achieve a clean layout.

 What is the use-case for setState()? Explain the variable that can be affected by setState(). <br>
 -  It notifies whenever there are changes in stateful widgets e.g message1 would be affected when changes are made

 Explain the difference between const and final keyword. <br>
- const must be initialized over time whereas final can only bet set once and cannot be modified afterwards




### Step-by-Step Implementation

1. Created the MyApp class in main.dart as the entry point for the application. This class extends StatelessWidget.
2. Set up the MaterialApp widget with the title "Flutter Demo" and customized the theme. 
3.  Designed MyHomePage in menu.dart to display a welcome message and three main buttons: "View Product," "Add Product," and "Logout." Each button has a unique color and icon.
4. Added each button to a list of ItemHomepage objects, setting the name, icon, and color for each. 
5. Organized the UI with a centered welcome message in an InfoCard widget and arranged the buttons in a 3-column grid (GridView.count).
6. In ItemCard, each button is wrapped in an InkWell widget that listens for taps. When a button is pressed, a SnackBar appears with a custom message based on the button's name.

## Assignment 2


**Purpose of `const` in Flutter**  
In Flutter, `const` is used to define compile-time constants. It tells the compiler that the value will never change, allowing Flutter to optimize by reusing the widget tree elements where `const` is used. This improves performance, as Flutter can avoid unnecessary rebuilds and redraws.

**Advantages of Using `const`**  
Using `const` reduces memory usage and improves efficiency, especially in complex UI trees, by ensuring that specific parts of the widget tree don’t rebuild unless absolutely necessary.

**When to Use and Avoid `const`**  
- **Use `const`** when you have a widget or value that doesn’t need to change across rebuilds.
- **Avoid `const`** when the widget's properties or content might need to change, as making it `const` would prevent Flutter from updating it dynamically.


**Column vs. Row**  
Both `Column` and `Row` are layout widgets in Flutter used to arrange widgets in a vertical or horizontal direction, respectively.

- **Column** arranges its children vertically from top to bottom.
- **Row** arranges its children horizontally from left to right.

**Examples**

```dart
// Example of a Column
Column(
  children: [
    Text("Item 1"),
    Text("Item 2"),
    Text("Item 3"),
  ],
)

// Example of a Row
Row(
  children: [
    Icon(Icons.star),
    Text("Row Example"),
  ],
)
```

Both widgets also have properties like `mainAxisAlignment` and `crossAxisAlignment` to control the alignment of their children within the layout.


**Input Elements Used**  
For this assignment's form page, I used:
1. **TextFormField** for `name` (text input)
2. **TextFormField** for `amount` (numeric input)
3. **TextFormField** for `description` (multiline text input)

**Other Input Elements in Flutter**  
Other common Flutter input elements include:
- **Checkbox**: Allows users to select true/false options.
- **Switch**: Useful for toggling settings or features on and off.
- **Slider**: Lets users select from a range of values.
- **DropdownButton**: Enables selection from a list of options.


**Setting a Theme for Consistency**  
A theme in Flutter is set using the `ThemeData` class, which allows us to define colors, font styles, and sizes for the entire application. By setting a theme in the `MaterialApp` widget, you can ensure that all elements in the app follow a consistent look and feel.

```dart
MaterialApp(
  theme: ThemeData(
    primarySwatch: Colors.blue,
    textTheme: TextTheme(
      bodyText1: TextStyle(fontSize: 16.0),
    ),
  ),
)
```

I implemented a theme in the application to ensure consistent colors for primary elements, such as the app bar and buttons.


**Managing Navigation**  
In Flutter, navigation between pages is managed using `Navigator`. By pushing and popping routes (pages), you can move between different screens.

- **`Navigator.push`** is used to navigate to a new page.
- **`Navigator.pop`** is used to return to the previous page.

For example, in the current app, the user can navigate from the main page to the form page using the following code:

```dart
Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => AddItemFormPage()),
);
```

Using navigation effectively creates a seamless multi-page experience within the application. 
