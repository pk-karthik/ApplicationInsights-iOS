#import "MSAIOperation.h"
/// Data contract class for type Operation.
@implementation MSAIOperation

/// Initializes a new instance of the class.
- (instancetype)init {
    if (self = [super init]) {
    }
    return self;
}

///
/// Adds all members of this class to a dictionary
/// @param dictionary to which the members of this class will be added.
///
- (void)addToDictionary:(NSMutableDictionary *) dict {
    if (self.operationId != nil) {
        [dict setObject:self.operationId forKey:@"id"];
    }
    if (self.name != nil) {
        [dict setObject:self.name forKey:@"name"];
    }
    if (self.parentId != nil) {
        [dict setObject:self.parentId forKey:@"parentId"];
    }
    if (self.rootId != nil) {
        [dict setObject:self.rootId forKey:@"rootId"];
    }
}

///
/// Serializes the object to a string in json format.
/// @param writer The writer to serialize this object to.
///
- (NSString *)serialize {
    NSMutableDictionary *dict = [NSMutableDictionary new];
    [self addToDictionary: dict];
    NSMutableString  *jsonString;
    NSError *error = nil;
    NSData *json;
    json = [NSJSONSerialization dataWithJSONObject:self options:NSJSONWritingPrettyPrinted error:&error];
    jsonString = [[NSMutableString alloc] initWithData:json encoding:NSUTF8StringEncoding];
    return jsonString;
}

@end