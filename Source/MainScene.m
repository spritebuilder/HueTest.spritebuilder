#import "MainScene.h"

@implementation MainScene

- (void) didLoadFromCCB
{
    _hue = -180;
    _hueEffect = [CCEffectHue effectWithHue:_hue];
    _sprtColors.effect = _hueEffect;
}


- (void) fixedUpdate:(CCTime)delta
{
    _hue += 8;
    if (_hue >= 180) _hue = -180;
    _hueEffect.hue = _hue;
}

@end
