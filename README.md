# Modal

<hr>

### Contents
- [Tools used](#tools-used)
- [Main page](#main-page)
- [Modal window](#modal-window)
- [Filter rows](#filter-rows)
- [Apply Save Cancel](#apply-save-cancel)
- [Database](#database)
- [Servers](#servers)
- [Checklist](#checklist)

<hr>

### Tools used
VSCode - https://code.visualstudio.com/ \
Eclipse Version: 2021-03 (4.19.0) - https://www.eclipse.org/downloads/packages/release/kepler/sr1/eclipse-ide-java-developers \
XAMPP v3.2.4 - https://www.apachefriends.org/index.html

<hr>

### Main page
* On main page there is only one button - 'Show Dialog'
* This button will open the modal window
* Current button is only clickable when modal window not displayed

Index page is located 'src/main/webapp/index.html'

<hr>

### Modal window
* Modal window can be closed 3 ways: 
1. by clicking 'x' button on window's upper right corner
2. by clicking 'cancel' button
3. by clicking outside modal window

* Modal window can be resized vertically by dragging right bottom corner
* On smallest height onyl 'Filter name' filed is displayed
* Vertical scrollbar on window's right border

<hr>

### Filter rows
1. Combo - text
2. Combo - numeric
3. Combo - date

* When modal window opens only first filter row displayed
* By clicking 'Add filter options +' reveals other filter rows(combos)
* User can remove filter rows(combos) by clicing '-' button next to it
* Last row can't be removed

<hr>

### Apply Save Cancel
There are currenyl 3 main buttons on modal
1. **Apply filter** - function not implemented
2. **Save filter** - will save current filter into database
3. **Cancel** - closes current modal

<hr>

### Database
MySQL database - created in *phpMyAdmin* \
* Database name: modal
* Table name: filters

<hr>

### Servers
MySQL - Port 3307 \
Tomcat - Port 8080

<hr>

### Checklist

| Task | To do | Implemented |
|-|-|-|
| Main page with button to open modal window | | ✓ |
| External CSS styling with classes | | ✓ |
| HTML + CSS + JS frontend | | ✓ |
| Backend Java, Spring, SQL... | | ✓ |
| Modal dialog window open on buttonclick | | ✓ |
| Different elements on modal window as on illustrave image | | ✓ |
| Labels and datafielelds on form | | ✓ |
| Close modal dialog | | ✓ |
| + button implementation(add options) | | ✓ |
| - button implementation(remove option) | | ✓ |
| Only one row on inizialisation | | ✓ |
| Combo(Amount) - Combo(Numbers compare) - Numeric field | | ✓ |
| Combo(Title) - Combo(Text compare) - Text field | | ✓ |
| Combo(Date) - Combo(Date compare) - Date field | | ✓ |
| Fixed size modal window | | ✓ |
| User can resize height | | ✓ |
| Vertical scrollbar on dialog window | | ✓ | 
| REST API and JSON protocol for data transfer for controls | | ✓ |
| Save data with Save button | | ✓ |
| Automated tests | ✓ | |

# HAPPY CODING !!! :)
