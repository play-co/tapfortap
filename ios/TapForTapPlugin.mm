#import "TapForTapPlugin.h"
#import "TapForTap.h"

@implementation TapForTapPlugin

// The plugin must call super dealloc.
- (void) dealloc {
	[super dealloc];
}

// The plugin must call super init.
- (id) init {
	self = [super init];
	if (!self) {
		return nil;
	}

	return self;
}

- (void) initializeWithManifest:(NSDictionary *)manifest appDelegate:(TeaLeafAppDelegate *)appDelegate {
	@try {
		NSDictionary *ios = [manifest valueForKey:@"ios"];
		NSString *key = [ios valueForKey:@"tapForTapAPIKey"];

		[TapForTap initializeWithAPIKey:key];
		
		NSLog(@"{tapForTap} Initialized with manifest tapForTapAPIKey: '%@'", key);
	}
	@catch (NSException *exception) {
		NSLog(@"{tapForTap} Failure to get ios:tapForTapAPIKey key from manifest file: %@", exception);
	}
}

@end
