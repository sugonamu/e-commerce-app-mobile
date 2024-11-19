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


Assignment 9
--


## **Why Do We Need a Model for JSON Data?**  

Models are necessary to properly map the structured data (like JSON) into meaningful objects that can be used in the application.  

### **Why?**  
1. **Data Validation**: Models ensure the data received/sent adheres to a predefined structure.  
2. **Ease of Use**: Models make it easier to access specific attributes without parsing raw JSON every time.  

### **What Happens Without a Model?**  
- The app can still work with raw JSON, but without a model:
  - Code becomes error-prone and harder to maintain.  
  - Accessing or modifying attributes requires manual parsing, increasing complexity and likelihood of errors.  

---

## **Function of the HTTP Library**  

The `http` library facilitates communication between the Flutter app and the Django backend. It provides methods for:  
1. **Sending Requests**: Enables the app to make GET, POST, PUT, DELETE, etc., requests to the backend.  
2. **Receiving Responses**: Captures and processes responses from the server, including headers and body content.  

For example, in the `fetchProduct` method, `http.get` retrieves the JSON data from the server.

---

## **Function of CookieRequest**  

`CookieRequest` is a custom library designed to handle authenticated HTTP requests in Flutter, particularly for applications using Django sessions.  

### **Why Use CookieRequest?**  
1. **Session Management**: Tracks user authentication using cookies, ensuring that protected endpoints can be accessed.  
2. **State Sharing**: By sharing a single `CookieRequest` instance across all app components, session states are consistent throughout the app.  

---

## **Mechanism of Data Transmission**  

1. **Input**:  
   - User actions trigger API calls (e.g., logging in, retrieving product data).  

2. **Backend Interaction**:  
   - The Flutter app sends a request (using `CookieRequest`) to the Django backend.  
   - The backend processes the request (e.g., queries the database) and returns a response.  

3. **Data Display**:  
   - JSON responses are parsed into model objects.  
   - The UI renders these objects for the user.  


### **Step-by-Step Workflow**  

1. **Registration**:  
   - User inputs registration data in Flutter.  
   - Data is sent to Django’s `register` endpoint using a POST request.  
   - Django validates the data, creates a user, and responds with success/failure.  

2. **Login**:  
   - User submits login credentials in Flutter.  
   - Data is sent to Django’s `login` endpoint.  
   - On success, Django creates a session and returns session cookies.  
   - Cookies are stored in the `CookieRequest` instance for subsequent requests.  

3. **Logout**:  
   - A logout button triggers a request to Django’s `logout` endpoint.  
   - Django destroys the session, invalidating the cookies.  

4. **Session Persistence**:  
   - Cookies stored in `CookieRequest` ensure authenticated API requests during the session.  

---

## **Implementation Checklist**  

### 1. **Django Deployment**  
   - The Django project was deployed and tested locally on `http://localhost:8000`.  

### 2. **Registration Feature in Flutter**  
   - A registration form was created.  
   - Form data is sent to the backend using `CookieRequest.post()`.  
   - Validation errors (if any) are displayed to the user.  

### 3. **Login Page in Flutter**  
   - A login form was implemented.  
   - On successful login, cookies are stored in `CookieRequest` for session management.  

### 4. **Django Authentication Integration**  
   - Django's built-in authentication system (`auth`) was used.  
   - `is_authenticated` checks ensure certain pages are accessible only to logged-in users.  

### 5. **Custom Model for JSON Endpoint**  
   - A `Product` model was created in Django with attributes such as `name`, `price`, and `description`.  

### 6. **Item List Page in Flutter**  
   - `ProductEntryPage` fetches product data using a `GET` request.  
   - The `FutureBuilder` widget handles loading and displaying the products.  

### 7. **Product Details Page**  
   - Each item in the list links to a detail page.  
   - The detail page displays all attributes of the product.  
   - A "Back" button navigates back to the product list.  

### 8. **Item Filtering**  
   - The list page filters products to show only items associated with the logged-in user.  

---

## **How Each Checklist Item Was Implemented**  

### Step 1: Deploy Django Locally  
   - Ensure Django is running on `http://localhost:8000`.  
   - Create an endpoint `/json/` to return product data in JSON format.  

### Step 2: Implement Registration in Flutter  
   - Use a `TextFormField` to collect user input.  
   - On submission, send a `POST` request to Django’s `/register/` endpoint.  
   - Handle backend responses (success or errors).  

### Step 3: Build Login Page  
   - Similar to registration, use `TextFormField` widgets for login credentials.  
   - On success, store cookies for session management.  

### Step 4: Integrate Authentication  
   - Use `is_authenticated` checks in Django views to secure endpoints.  
   - Use `CookieRequest` to handle session-based requests in Flutter.  

### Step 5: Create Product Model in Django  
   - Define a `Product` model with fields like `name`, `price`, and `user`.  
   - Use Django serializers to expose a `/json/` endpoint.  

### Step 6: Fetch Products in Flutter  
   - Use `FutureBuilder` in `ProductEntryPage` to handle API calls and display data dynamically.  

### Step 7: Implement Detail Page  
   - Pass product details to a separate `ProductDetailPage` using the `Navigator`.  

### Step 8: Filter Products by User  
   - Modify the Django `/json/` endpoint to filter items by the logged-in user.  
