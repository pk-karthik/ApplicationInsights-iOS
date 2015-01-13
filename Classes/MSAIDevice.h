@import Foundation;
#import "MSAIDataPointType.h"
#import "MSAIDependencyKind.h"
#import "MSAIDependencySourceType.h"
#import "MSAISeverityLevel.h"
#import "MSAITelemetryData.h"

///Data contract class for type Device.
@interface MSAIDevice : NSObject

@property (nonatomic, strong) NSString *deviceId;
@property (nonatomic, strong) NSString *ip;
@property (nonatomic, strong) NSString *language;
@property (nonatomic, strong) NSString *locale;
@property (nonatomic, strong) NSString *model;
@property (nonatomic, strong) NSString *network;
@property (nonatomic, strong) NSString *oemName;
@property (nonatomic, strong) NSString *os;
@property (nonatomic, strong) NSString *osVersion;
@property (nonatomic, strong) NSString *roleInstance;
@property (nonatomic, strong) NSString *roleName;
@property (nonatomic, strong) NSString *screenResolution;
@property (nonatomic, strong) NSString *type;
@property (nonatomic, strong) NSString *vmName;

/// Serializes the object to a string in json format.
- (NSString *)serialize;

@end