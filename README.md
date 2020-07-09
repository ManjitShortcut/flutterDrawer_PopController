# flutterDrawer_PopController

# Pop View
## Code 
```
 Navigator.of(context).pop();
```
## Passing Value one view controller to another using  pop method
# Code
```
 Navigator.of(context).pop("Value");
```
##Accepting  value in from one view controller to other using future method
```
Navigator.of(context).pushNamed(SettingScreen.routeName).then((result){
               print(result);
             }
```
## Drawer View
  Drawer view in defin in scaffold method
  # Code
  ```
    Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Screen"),),
      body: Center(child: Text("Drawer"),),
     drawer: MainDrawerScreen(),
    );
  }
```
## Push And replace
To overcome from stack cysle we are using pushReplace method
## Example
  ```
   Navigator.of(context).pushReplacementNamed("/setting");
    if setting pgae is present it will autometically replace 
```
