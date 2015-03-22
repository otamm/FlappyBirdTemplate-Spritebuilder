#import "GamePlayScene.h"
#import "Character.h"
#import "Obstacle.h"

@implementation GamePlayScene

- (void)initialize
{
    // your code here
    
    // loads a character from the 'Character' CCB file.
    // CCB files are created by SpriteBuilder and describe appearance and properties of in-game objects like the Flappy Bird character.
    character = (Character*)[CCBReader load:@"Character"]; // initializes the character
    
    
    [physicsNode addChild:character]; // adds character as a child of physicsNode, which apply physics to it
    
    // call a method in Obj-C: [ObjectName methodName];
    // call a method in Obj-C with a parameter: [ObjectName methodName:parameter];
    // note: physicsNode does not have a first uppercase letter because it is actually the CCPhysicsNode* object stored in a variable.
    [self addObstacle]
}

-(void)update:(CCTime)delta
{
    // put update code here
}

// put new methods here

// declaring methods in obj-C:
// - (type I return)nameOfMethod: (type of first parameter) firstParameter continuationOfMethodName: (type of second parameter) secondParameter

// a method that does not return anything and does not accept parameters (classic 'print Hello World'):
/*
 -(void) doSomething
 {
 NSLog(@"Hello World!");
 }
 */

// a method that returns an int and accepts a string as parameter:
/*
 -(int) doSomethingWithAString: (NSString*) myString
 {
 //returns the length of the string times ten
 return [myString length] * 10;
 }
 */

// a method that returns an array and accepts multiple strings as parameters:
/*
 -(NSArray *) addThisStringToAnArray:(NSString*) firstString andThisString:(NSString*) secondString andAlsoThisString:(NSString*) thirdString
 {
 return [NSArray arrayWithObjects: firstString, secondString, thirdString, nil];
 }
 */

- (void)touchBegan:(CCTouch *)touch withEvent:(CCTouchEvent *)event {
    // this will get called every time the player touches the screen
    [character flap]; // whenever the screen is touched, the method 'flap' will be called on the character. This causes the character to impulse upwards (courtesy of the physicsNode)
}

@end
