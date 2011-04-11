//
//  MoveBySineYAction.h
//  MooDefense
//
//  Based on the work by Robert Blackwood on 3/5/10.
//  http://www.cocos2d-iphone.org/forum/topic/4829#post-28905
//
//  Extended by Sergi Vélez
//

#import "cocos2d.h"


@interface MoveBySineAction : CCActionInterval <NSCopying>
{
    float _freq;
    float   _amp;
	CGPoint	_start;
    CGPoint _dist;
}

+(id) actionWithDuration:(ccTime)t position:(CGPoint)pos amplitude:(float) amp frequency:(float) freq;
-(id) initWithDuration:(ccTime)t position:(CGPoint)pos amplitude:(float) amp frequency:(float) freq;

@end
