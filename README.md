---
  tags: tutorial, beginner, OOP, Object-Oriented Programming, model 
  languages: objc
---

OOP-Cards-Views
=========

### Requirements 

1. Create a Nib and a corresponding UIViewController subclass called "PlayingCardViewController"
2. Create a 3 x 4 grid of buttons with solid backgrounds in interface builder 
3. Add an additonal button, and change the button's text to read "Shuffle"
4. Wire the 12 buttons (from the 3 x 4 grid) to an IBOutletCollection in your PlayingCardViewController 
5. Wire the shuffle button to an IBAction in your PlayingCardViewController 
6.  Implement the PlayingCardViewController to modify the button's label to present a card's description (ex. 9 <3) 
7. Implement the shuffle IBAction to allow the user to randomly shuffle the cards (See Step 8 before you go to far here)
8. The model at this point isn't setup to handle this very elegantly.  I recommend making a new class/classes.  You could for instance create a PlayingCardDeck class that inherits from a Deck base class.  Here are the public interfaces for example PlayingCardDeck and Deck classes. 

@interface Deck : NSObject
- (Card *)drawRandomCard;
- (void)addCard:(Card *)card;
- (NSArray *)cards;
@end

@interface PlayingCardDeck : Deck
- (instancetype)init;
@end

9. The key idea here is for the Playing card Deck's init method to setup the Deck class such that the 'cards' array returns an ordered deck of 52 Playing cards.  The PlayingCardViewController can then init a Deck object and deal out 12 random cards by fast enumerating over the buttons in the outlet collection and setting their titles to that of [[self.deck drawRandomCard] description].      



### Extra Credit 
1. Find a nice set of playing card images online and use those for your playing cards.  *Hint* You'll want to pay close attention to the naming convention of the playing card images.  
2. Add images of the baseball players to the baseball cards. 
3. Use gesture recognizers to allow each card to be dragged around the screen.  
