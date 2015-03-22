//
//  GamePlayScene.h
//  FlappyBird
//
//  Created by Gerald on 2/11/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//
// Node = Single unit in an hierarchy. A node hierarchy tracks which nodes influence other nodes. In an analogy, the Earth is a node, a tree is a node and a fruit is a node. What happens to the Earth directly affects the tree, which will directly affect the fruit (but not vice-versa). Tree is a child node of Earth and a parent node of fruit. Fruit is a child node of tree and earth. A parent influences the child, a child does not influence its parent.
// In the Cocos2d framework, all the children of the physicsNode will follow the basic laws of physics (their programmed representations, in this case). That's because the physics engine used by Cocos2d (called Chipmunk) iterates through the children of the physicsNode every frame and apply physics to them (including colision and gravity, for example).

#import "CCNode.h"
#import "Character.h"

typedef NS_ENUM(NSInteger, DrawingOrder) {
    DrawingOrderPipes,
    DrawingOrderGround,
    DrawingOrderHero
};

@interface GamePlayScene : CCNode <CCPhysicsCollisionDelegate>
{
    // define variables here;
    
    //  \/\/\/\/ instance of the bird
    Character*     character;  // character node; both char and physics nodes reference pre-defined nodes.
    CCPhysicsNode* physicsNode; // physics node; both are also referenced in the GamePlayScene (main class), which makes them available in the whole game.
    
    float timeSinceObstacle; // initializes timer
}

-(void) initialize;
-(void) addObstacle;
-(void) showScore;

@end
