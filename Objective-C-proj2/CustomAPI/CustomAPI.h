//
//  CustomAPI.h
//  Objective-C-proj2
//
//  Created by Zadock Maloba on 16/04/2024.
//

#import <Foundation/Foundation.h>

@protocol MyProtocol <NSObject>

- (void)doSomething;

@end

@interface TestObject : NSObject <MyProtocol>

- (void)doSomething;

@end
