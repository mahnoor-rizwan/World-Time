# World Time (Mobile Application)

In this pratice project I followed this tutorial while learning flutter through 
[Flutter for Beginners](https://www.youtube.com/watch?v=1ukSR1GRtMU&list=PL4cUxeGkcC9jLYyp2Aoh6hcWuxFDX6PBJ) .

## Technology and platform
Framework: flutter

Platroms: Android and ios
1. Android -> Developed and tested
2. ios -> deeloped (not tested yet)

## Challange in implementation
After I implemented the code I realized that there was some problem with the time of places whose timezone is -GMT and I corrected it by applying this logic: 
```
sign == '+' ? now = now.add(Duration(hours: int.parse(offset))) : now = now.subtract(Duration(hours: int.parse(offset)));
```
I caught the string from [Wrld Time API](http://worldtimeapi.org) and then tested if it was *+GMT or -GMT*.

## Completed Design
|Loading Page|Home Page Day|Home Page Night|Edit Location|
|---|---|---|---|
|![Loading](weather_app/assets/Loading.png)|![Home Page Day](weather_app/assets/HomaPageDay.png)|![Home Page Night](weather_app/assets/HomePageNight.png)|![Edit Location](weather_app/assets/EditLocation.png)|

## Follow me
Linked in: 
[Mahnoor Rizwan](https://www.linkedin.com/in/mahnoor-rizwan-b7657818b/) 
