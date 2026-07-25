# Refactor CategoryScreen and UIHelper

Improve the structure of `CategoryScreen` by fixing layout errors (invalid `Expanded` usage), removing redundant widgets (`Flex`), and ensuring the screen is scrollable. Clean up `UIHelper` for better type safety and idiomatic Dart naming.

## User Review Required

> [!IMPORTANT]
> The current code contains several instances of `Expanded` being used incorrectly (e.g., inside `SizedBox`). `Expanded` must be a direct child of a `Flex` widget (`Row`, `Column`, or `Flex`). This will cause runtime errors if not fixed.

> [!NOTE]
> I am proposing to change the `UIHelper` method names to `camelCase` (e.g., `itemWidgetWithHeading`) to follow Dart's style guide. If these are used elsewhere in the project, I will need to update those references as well.

## Proposed Changes

### [Category Screen]

#### [MODIFY] [categoryScreen.dart](file:///H:/Flutter%20Projects/Blinkit_Clone/lib/repository/screens/category/categoryScreen.dart)
- **Fix Layout**: Remove `SizedBox` and `Expanded` from the top level of the `body`.
- **Improve Structure**:
    - Wrap the content below `TopBar` in an `Expanded` + `SingleChildScrollView`.
    - Replace the redundant `Flex` and inner `Column` with a direct list of category widgets.
- **Clean Code**:
    - Make `groceryKitchen`, `snacksDrinks`, and `householdEssentials` `final`.
    - Remove the duplicate call to "Grocery & Kitchen".

### [UI Helper]

#### [MODIFY] [uihelper.dart](file:///H:/Flutter%20Projects/Blinkit_Clone/lib/repository/widgets/uihelper.dart)
- **Fix Layout**: Remove `Expanded` from inside `SizedBox` in `ItemWidgetWithHeading` and `ItemWidget`.
- **Typing**: Add `Widget` return types to all UI-building methods.
- **Style**:
    - Rename methods to `camelCase`: `customImage`, `customText`, `customTextField`, `customButton`, `itemWidgetWithHeading`, `itemWidget`.
    - Rename parameters to `camelCase` (e.g., `heading` instead of `Heading`).

## Verification Plan

### Manual Verification
- Launch the app and navigate to the Category screen.
- Ensure no layout exceptions are thrown in the console.
- Verify the categories list is scrollable vertically.
- Verify each category's items scroll horizontally.
- Confirm "Grocery & Kitchen" appears only once.
