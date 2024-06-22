# Flutter Task For Slash-eg company

## Overview

Slash Task is a Flutter application built using the **Clean Architecture principles**, **Cubit** for state management, and **MVVM (Model-View-ViewModel)** pattern. The application also implements a **responsive design** to ensure it looks great on both mobile and web platforms.

## Video
https://github.com/mark-maher-moris/slash-task-Clean-architecture-MVVM/assets/66829236/f3cacccc-2ce2-4008-9b75-661a928a95fa

## Features

- **Clean Architecture**: Ensures separation of concerns, making the app scalable and maintainable.
- **Cubit**: Manages the state of the application efficiently.
- **MVVM Pattern**: Organizes code into Model, View, and ViewModel layers for better code readability and testing.
- **Responsive Design**: Uses `LayoutBuilder` and custom utilities to adapt the UI for different screen sizes.

## Project Structure

Here is the detailed folder and file structure used in this project:
 ```
├───assets
│   ├───data
│   │       dummyData.json
│   │
│   ├───fonts
│   └───images
│           banner.png
│           best_seller_1.jpg
├───lib
    │   main.dart
    │
    ├───core
    │   └───utils
    │           responsive.dart
    │
    ├───features
    │   ├───coming_soon
    │   │   └───presentation
    │   │       └───view
    │   │               coming_soon.dart
    │   │
    │   ├───dashboard
    │   │   ├───data
    │   │   └───presentation
    │   │       ├───view
    │   │       │       dashboard.dart
    │   │       │
    │   │       └───widgets
    │   │               custom_appbar.dart
    │   │               search_bar.dart
    │   │
    │   └───home
    │       ├───data
    │       │   ├───data_source
    │       │   │       category_data_source.dart
    │       │   │       home_data_source.dart
    │       │   │
    │       │   ├───models
    │       │   │   │   home_model.dart
    │       │   │   │
    │       │   │   └───sub_models
    │       │   │           product_model.dart
    │       │   │
    │       │   └───repositories
    │       ├───domain
    │       │   ├───entities
    │       │   │   │   category_entity.dart
    │       │   │   │   home_entity.dart
    │       │   │   │
    │       │   │   └───sub_entity
    │       │   │           product_entity.dart
    │       │   │
    │       │   ├───repositories
    │       │   │       home_repository.dart
    │       │   │
    │       │   └───usecase
    │       │           get_home.dart
    │       │
    │       └───presentation
    │           ├───screens
    │           │       home_screen.dart
    │           │       mobile_home_ui.dart
    │           │       responsive_home_sscreen.dart
    │           │       web_home_ui.dart
    │           │       
    │           ├───viewmodel
    │           │   └───cubit
    │           │           home_cubit.dart
    │           │           home_state.dart
    │           │
    │           └───widgets
    │                   banner_ad.dart
    │                   category_section.dart
    │                   products_section.dart
    │                   product_widget.dart
    │                   section_header.dart
    │
    └───resources
            asset_manager.dart
            color_manager.dart
            string_manager.dart
            text_styles.dart
            theme_manager.dart

```


## Installation

To get started with the project, follow these steps:

**Clone the repository**:
   ```sh
   git clone https://github.com/yourusername/slash_task.git
   cd slash_task
   flutter pub get
   flutter run

   ```

