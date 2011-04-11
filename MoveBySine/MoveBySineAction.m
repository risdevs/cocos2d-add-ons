//
//  MoveBySineYAction.m
//  MooDefense
//
//  Based on the work by Robert Blackwood on 3/5/10.
//  http://www.cocos2d-iphone.org/forum/topic/4829#post-28905
//
//  Extended by Sergi Vélez
//
#import "MoveBySineAction.h"


@implementation MoveBySineAction

+(id) actionWithDuration:(ccTime)t  position:(CGPoint)pos amplitude:(float) amp frequency:(float) freq
{
	return [[[self alloc] initWithDuration:t position:pos amplitude:amp frequency:freq] autorelease];
}

-(id) initWithDuration:(ccTime)t position:(CGPoint)pos amplitude:(float) amp frequency:(float) freq
{
    [super initWithDuration: t];
    _dist = pos;
    _amp  = amp;
    _freq = freq;
	
    return self;
}

-(void) startWithTarget:(id)aTarget
{	
    [super startWithTarget:aTarget];
	
	_start = [target_ position];
}

-(id) copyWithZone: (NSZone*) zone
{
	CCAction *copy = [[[self class] allocWithZone: zone] initWithDuration:[self duration]
                                                                 position:_dist
                                                                amplitude:_amp
                                                                frequency:_freq];
	return copy;
}

@end