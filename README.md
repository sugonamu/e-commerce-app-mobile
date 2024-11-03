# e_commerce

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
