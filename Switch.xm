#import <Flipswitch/FSSwitchDataSource.h>
#import <Flipswitch/FSSwitchPanel.h>

@interface GrayscaleSwitch : NSObject <FSSwitchDataSource>
@end

extern "C" BOOL _AXSGrayscaleEnabled();
extern "C" void _AXSGrayscaleSetEnabled(BOOL);

@implementation GrayscaleSwitch

- (FSSwitchState)stateForSwitchIdentifier:(NSString *)switchIdentifier
{
	return _AXSGrayscaleEnabled() ? FSSwitchStateOn : FSSwitchStateOff;
}

- (void)applyState:(FSSwitchState)newState forSwitchIdentifier:(NSString *)switchIdentifier
{
	if (newState == FSSwitchStateIndeterminate)
		return;
	_AXSGrayscaleSetEnabled(newState == FSSwitchStateOn);
}

@end