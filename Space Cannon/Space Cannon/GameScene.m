//
//  GameScene.m
//  Space Cannon
//
//  Created by Tin N Vo on 9/6/15.
//  Copyright (c) 2015 Tin Vo. All rights reserved.
//

#import "GameScene.h"

@implementation GameScene

-(void)didMoveToView:(SKView *)view {
    /* Add the background node */
    SKSpriteNode *background = [SKSpriteNode spriteNodeWithImageNamed:@"Starfield"];
    background.position = CGPointMake(self.size.width/2, self.size.height/2);
    background.xScale = 1.63;
    background.yScale = 1.5;
    background.blendMode = SKBlendModeReplace;
    [self addChild:background];
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    /* Called when a touch begins */
    
    for (UITouch *touch in touches) {
    }
}

-(void)update:(CFTimeInterval)currentTime {
    /* Called before each frame is rendered */
}

@end
