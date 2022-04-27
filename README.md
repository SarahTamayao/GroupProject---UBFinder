https://hackmd.io/re3EFRSzSbSKV4VSywofhA?both

CLICK LINK ABOVE TO SEE MORE! ^^

# 📍 UB Finder

#### Group name: ERRor
#### Team Names: Eric(Qian) Xie, Rachel Li, Ria Gupta

## Table of Contents
1. [Overview](#Overview)
1. [Product Spec](#Product-Spec)
1. [Wireframes](#Wireframes)
2. [Schema](#Schema)

# Overview 
## Description
Locates areas for the optimal dining and studying experience based on ratings from UB students.

## App Evaluation
- **Category:** Education / Lifestyle
- **Mobile:** Will include real-time map data and ratings from users based on their experience at different places, and also allows users to find the nearest hotspot based on where they are
- **Story:** As students, many of us find ourselves walking around campus all day, but often to no avail when we can't decide where to go. An area might be too busy, too loud, or closed at the time, so this app would allow users to analyze the area before they go, saving them valuable time and energy
- **Market:** All UB students, staff, faculty, and visitors could use this app to find what they need, regardless of their age or academic departments
- **Habit:** This app would be used by a given user almost every day if they find value in the ratings on the app, and could potentially be used multiple times in a day if the user needs different ratings at different times
- **Scope:** This app is, from a technical perspective, fairly challenging to build since it relies heavily on user input and location data, but it is clearly defined and a stripped-down version of it is still interesting to build

## Product Spec

### 1. User Stories (Required and Optional)

**Required Must-have Stories**

- [X] Users can view app icon and login page
- [X]  Users can login and view the homepage with buttons to go to the dining page and studying page
- [ ] Users can rate different dining areas
- [ ] Users can rate different study spots
- [ ] Users can view existing ratings for dining areas
- [ ] Users can view existing ratings for study spots
- [ ] Users can see how busy a dining area is at a given hour
- [ ] Users can see how busy a study spot is at a given hour

**Optional Nice-to-have Stories**

- [X] Users can authenticate using their USERNAME & Password information
- [ ] Users can favorite locations to pin them to the top of their page
- [ ] Users can click on a live map to locate each spot
- [ ] Users can view pictures of each spot
- [ ] Users can view menus of each dining area before visiting
- [ ] Users can comment on their experience at each spot

### 2. Screen Archetypes

* Home Screen
   * Users can login and view the homepage with buttons to go to the dining page and studying page
* Dining
   * Users can rate different dining areas
   * Users can view existing ratings for dining areas
   * Users can see how busy a dining area is at a given hour
* Studying
    * Users can rate different study spots
    * Users can view existing ratings for study spots
    * Users can see how busy a study spot is at a given hour

### 3. Navigation

**Tab Navigation** (Tab to Screen)

* Required:
    * Login
    * Home
    * Dining
    * Studying
* Optional:
    * Profile
    * Settings

**Flow Navigation** (Screen to Screen)

* Login button clicked
   * Takes user to home page
* Home page dining button clicked
    * Takes user to dining page
* Home page studying button clicked
    * Takes user to studying page
* User hits submit button for rating in dining page
    * Takes user to home page
* User hits submit button for rating in studying page
    * Takes user to home page
* Logout button clicked
    * Logs user out, takes them to home screen

## Wireframes
[Add picture of your hand sketched wireframes in this section]
<img src="(https://i.imgur.com/Q7jRSWZ.jpg)" width=600>

### [BONUS] Digital Wireframes & Mockups
![](https://i.imgur.com/Q7jRSWZ.jpg)
    
### [BONUS] Interactive Prototype
![](https://i.imgur.com/kqU9XF6.gif)

## Schema 
[This section will be completed in Unit 9]


### Models

[Add table of models]


| Property | Type | Description |
| -------- | -------- | -------|
| name | String |name of each location|
| image | File | image that displays each location |
| ratingsCount | Number | number of ratings per location|
|rating| Number | rating given by user|
|comment| String | comment made by user|
|commentsCount| Number | number of comments|


### Networking
- Login Screen

   - (Create/POST) Create an account

    - (Read/GET) Query logged in user object
    
>      let username = usernameField.text!
>         let password = passwordField.text!
>                 PFUser.logInWithUsername(inBackground: username, password: password) { user, error in          
>             if user != nil{
>                 
>                 self.performSegue(withIdentifier: "loginSegue", sender: nil)
>                 
>             }else{
>                 
>                 print("Error: (\(String(describing: error?.localizedDescription)))" )
>                 
>             }
>             
>         }
>         
>     }
    

- Dining Area Screen
    -  (Create/POST) Create rating
    - (Create/POST) Create a new comment
    - (Delete) Delete existing comment
    - (Delete) Delete rating

- Studying Area Screen
    - (Create/POST) Create rating
    - (Create/POST) Create a new comment
    - (Delete) Delete existing comment
    - (Delete rating)

- Profile Screen [OPTIONAL]
    - (Read/GET) Get user ID 
    - (Update/PUT) Update user profile image




###Sprint UNIT 11

-[x] Users can view app icon and login page

-[x] dataBase DONE
  
  ![ ](https://user-images.githubusercontent.com/97911585/164147572-d4706a80-6ae8-40c5-8e79-47d51460c848.GIF)


- [OPTIONAL: List endpoints if using existing API such as Yelp]

###Sprint UNIT 12

- [X] User can add ratings
- [X] User can login
- [X] User can navigate between tabs
- [X] User can choose to view dining areas or study spots via buttons after logging in

![Simulator Screen Recording - iPhone 11 - 2022-04-26 at 20 47 26](https://user-images.githubusercontent.com/74742605/165417036-eeee8224-7b91-49b6-9634-8c33297084d3.gif)

