//
//  MoveBySineYAction.m
//  MooDefense
//
//  Based on the work by Robert Blackwood on 3/5/10.
//  http://www.cocos2d-iphone.org/forum/topic/4829#post-28905
//
//  Extended by Sergi Vélez
//
#import "MoveBySineYAction.h"


@implementation MoveBySineYAction

-(void) update: (ccTime) t
{
	float x, y;
    
    x = _start.x + (_dist.x * t);
    y = _start.y + (_dist.y * t) + (_amp * sin(_freq * x));
	
    [target_ setPosition:ccp(x,y)];
}

@end