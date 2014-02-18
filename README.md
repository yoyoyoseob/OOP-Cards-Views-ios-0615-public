---
  tags: tutorial, intermediate, OOP, Object-Oriented Programming, view 
  languages: objc
---

OOP-Cards-Views
=========

### Requirements 

### Goals 
- Manipulate UIImageViews that were created in the storyboard in code  
- Work with the frame rect to resize and position 12 cards into a grid
- Introduce outlet collections 

### Outlet Collections 

Outlet collections allow a group of related outlets to be collected into an NSArray.  You can create an outlet collection by control dragging from an interface element in the storyboard and selecting Outlet collection (rather than outlet or action).  You then can drag addittional interface elements into the collection to add them to an NSArray.

http://useyourloaf.com/blog/2011/03/28/interface-builder-outlet-collections.html  

In the attached project, a collection of UIImageViews have been added to an outlet collection for you.  This means cardsCollection[0] is one of the UIImageViews from the storyboard, and [cardsCollection count] == 12.  

Your mission will be to bring order to this chaotic jumble of Magic cards but using code, not the storyboard!

### Frame 

In order to manipulate the size and position of our cards, we'll adjust the frame property on each of the cards.  A view's frame is the position of its rectangle in the superview's coordinate system. By default it starts at the top left. 

For our purposes, each of these views' superview is the main view (ie. the full screen of the iPhone).  Therefore, placing a view at 0,0 (x , y) places it at the top left of the screen, and 320, 568 (x , y) places it at the bottom right hand corner of the iPhone 5(s) screen.  The frame property is of type CGRect. Next we'll look into creating a CGRect.   

### CGRect 

CGRect is not an Object, so you won't be instantiating a new CGRect using alloc/init.  Instead CGRect can be created using the C Struct CGRectMake.  The following code creates a new CGRect at position (10, 20) `x, y` with size 200 x 100 `width x height`

```objc
CGRect myRect = CGRectMake(10,20,200,100);

/* The following is the definition of the C Struct CGRectMake 
   CGRect CGRectMake (
   CGFloat x,
   CGFloat y,
   CGFloat width,
   CGFloat height
); */

```

### Instructions 

Let's bring some order to our magic cards.  We'll put all of our cards into a grid with 3 cards accross and 4 cards down (3 x 4).

Place the cards in a 3 x 4 grid with 20 pts of padding (horizontally and vertically) between each card and between the first/last card and the edge of the screen.  

    |-(20)-[Card]-(20)-[Card]-(20)-[Card]-(20)-| 
    |-(20)-[Card]-(20)-[Card]-(20)-[Card]-(20)-|
    |-(20)-[Card]-(20)-[Card]-(20)-[Card]-(20)-|
    |-(20)-[Card]-(20)-[Card]-(20)-[Card]-(20)-|

Notice how we aren't giving you the width or height of the cards. The width and height of the cards can be determined programatically using the given parameters.  For example: We know the width of the screen is 320 pts.  We know we have 4 x 20pt horizontal paddings that will take up 80 horizontal points.  Therefore we have 320 - 80 pts left over for card widths.  So we have 240 points for card widths.  Since we have 3 cards, the width of each card will be 240pts / 3 cards = 80pts 

You figure out the rest! 

Remember you'll want to set each UIImageView's frame. Here's the gist of what you'll be doing in code: 

```objc
UIImageView *magicCard1 = cardsCollection[0];
magicCard1.frame = CGRectMake(x,y,width,height); 
```

### Extra Credit 
1. Add a button to the bottom of the screen.  Make a button press toggle the padding from 20 pts to 30 pts.  Pressing the button again will change the padding back to 20 pts.   
