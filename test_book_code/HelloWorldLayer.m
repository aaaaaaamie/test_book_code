//
//  HelloWorldLayer.m
//  test_book_code
//
//  Created by Mengzhe Li on 9/7/12.
//  Copyright __MyCompanyName__ 2012. All rights reserved.
//


// Import the interfaces
#import "HelloWorldLayer.h"

// HelloWorldLayer implementation
@implementation HelloWorldLayer

+(CCScene *) scene
{
	// 'scene' is an autorelease object.
	CCScene *scene = [CCScene node];
	
	// 'layer' is an autorelease object.
	HelloWorldLayer *layer = [HelloWorldLayer node];
	
	// add layer as a child to scene
	[scene addChild: layer];
	
	// return the scene
	return scene;
}

// on "init" you need to initialize your instance
-(id) init
{
	// always call "super" init
	// Apple recommends to re-assign "self" with the "super" return value
	if( (self=[super init])) {
		
		// create and initialize a Label
		CCLabelTTF *label = [CCLabelTTF labelWithString:@"Hello World" fontName:@"Marker Felt" fontSize:64];
        CCLabelTTF *child_label = [CCLabelTTF labelWithString:@"Hello Earth!" fontName:@"Marker Felt" fontSize:64];
		// ask director the the window size
		CGSize size = [[CCDirector sharedDirector] winSize];
	
		// position the label on the center of the screen
		label.position =  ccp( size.width /2 , size.height/2 );        
        
		// add the label as a child to this Layer
		[self addChild: label];
   //     [label addChild: child_label];
        
        label.tag = 13;
<<<<<<< HEAD
        child_label = 15;
=======
>>>>>>> 491662b41b00779bba5cd3349e533f1036768b4b

        self.isTouchEnabled = YES;
        
        // adding the sprite to the layer
        CCSprite* sprite = [CCSprite spriteWithFile:@"Default.png"];
        sprite.position = ccp(size.width/2, size.height/2);
        sprite.rotation = -90;
//        [self addChild:sprite];
    }
    
	return self;
}
- (void)ccTouchesBegan:(NSSet*)touches withEvent:(UIEvent *)event;
{
    CCNode* node = [self getChildByTag:13];
    
    NSAssert([node isKindOfClass:[CCLabelTTF class]], @"node is not a CCLabelTTF!");
    CCLabelTTF* label = (CCLabelTTF*)node;
    label.scale = CCRANDOM_0_1();
    
    
}
// on "dealloc" you need to release all your retained objects
- (void) dealloc
{
	// in case you have something to dealloc, do it in this method
	// in this particular example nothing needs to be released.
	// cocos2d will automatically release all the children (Label)
	
	// don't forget to call "super dealloc"
	[super dealloc];
}
@end
