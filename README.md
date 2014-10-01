mailbox-mock
============
 this a read me!


Time Spent
-
wayyyyyyy more than 10. idk exactly how much but probably like 15-20 but i went to town on it. There were not enough hours in the day this week. A lot of my push segues got messed up when i started adding a lot screens and using modals to go into the middle of a push flow so i had to change some of them to modals.


User Stories
-


  * [x] On dragging the message left...

       * [x] Initially, the revealed background color should be gray.
       * [x] As the reschedule icon is revealed, it should start semi-transparent and become fully opaque. If released at this point, the message should return to its initial position.
       * [x] After 60 pts, the later icon should start moving with the translation and the background should change to yellow.
       * [x] Upon release, the message should continue to reveal the yellow background. When the animation it complete, it should show the reschedule options.
       * [x] After 260 pts, the icon should change to the list icon and the background color should change to brown.
       * [x] Upon release, the message should continue to reveal the brown background. When the animation it complete, it should show the list options.

  * [x] User can tap to dismissing the reschedule or list options. After the reschedule or list options are dismissed, you should see the message finish the hide animation.

  * [x] On dragging the message right...
  
       * [x] Initially, the revealed background color should be gray.
       * [x] As the archive icon is revealed, it should start semi-transparent and become fully opaque. If released at this point, the message should return to its initial position.
       * [x] After 60 pts, the archive icon should start moving with the translation and the background should change to green.
       * [x] Upon release, the message should continue to reveal the green background. When the animation it complete, it should hide the message.
       * [x] After 260 pts, the icon should change to the delete icon and the background color should change to red.
       * [x] Upon release, the message should continue to reveal the red background. When the animation it complete, it should hide the message.

  * [x] Optional: Panning from the edge should reveal the menu
       * [x] Optional: If the menu is being revealed when the user lifts their finger, it should continue revealing.
       * [x] Optional: If the menu is being hidden when the user lifts their finger, it should continue hiding.
       
  * [ ] Optional: Tapping on compose should animate to reveal the compose view.
  * 
  * [ ] Optional: Tapping the segmented control in the title should swipe views in from the left or right.
  * 
  * [ ] Optional: Shake to undo.











Static photo tiles on the initial screen
  * [x] Optional: Photo tiles move with scrolling
  
Sign In
  * [x] Tapping on email/password reveals the keyboard and shifts the scrollview and Sign In button up.
  * [x] User sees an error alert when no email is present or no password is present.
  * [x] User sees a loading screen upon tapping the Sign In button.
  * [x] User sees an error alert when entering the wrong email/password combination.
  * [x] User is taken to the tutorial screens upon entering the correct email/password combination.
  * [x] Optional: When the keyboard is visible, if the user pulls down on the scrollview, it will dismiss the keyboard.
  * [x] Optional: On appear, scale the form up and fade it in.
  
Optional: Sign Up
  * [x] Optional: Tapping in the form reveals the keyboard and shifts the scrollview and "Create a Dropbox" button up.
  * [x] Optional: Tapping the Agree to Terms checkbox selects the checkbox.
  * [x] Optional: Tapping on Terms shows a webview with the terms.
  * [x] Optional: User is taken to the tutorial screens upon tapping the "Create a Dropbox" button.
  
Tutorial Screens
  * [x] User can page between the screens
  * [x] Optional: User can page between the screens with updated dots
  * [x] Optional: Upon reaching the 4th page, hide the dots and show the "Take Carousel for a Spin" button.
  
Image Timeline
  * [x] Display a scrollable view of images.
  * [x] User can tap on the conversations button to see the conversations screen (push).
  * [x] User can tap on the profile image to see the settings view (modal from below).
  
Settings
  * [x] User can dismiss the settings screen.
  * [x] User can log out
  
Optional: Learn more about Carousel
  * [x] Optional: Show the "Learn more about Carousel" button in the photo timeline.
  * [ ] Optional: Tap the X to dismiss the banner
  * [ ] Optional: Track the 3 events:
     * [x] View a photo full screen 
     * [ ] Swipe left and right
     * [x] Share a photo [NSUserDefaults!!!!!!!]
  * [ ] Optional: Upon completion of the events, mark them green.
  * [ ] Optional: When all events are completed, dismiss the banner.
  * 
  


![alt tag](carouselgif.gif)
