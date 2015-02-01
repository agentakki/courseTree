//
//  Courses.m
//  courseTree
//
//  Created by Akshay Bakshi on 2/1/15.
//  Copyright (c) 2015 akshaybakshi. All rights reserved.
//

#import "Courses.h"

static Courses* m_courses;

@implementation Courses


+ (Courses*)sharedCourses {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        m_courses = [[self alloc] init];
    });
    return m_courses;
}

- (id)init {
    if (self = [super init]) {
    }
    return self;
}


-(NSDictionary *)courses{
    if(!_courses){
        _courses = @{
                     @"CS 1" : @[],
                     @"CS 31" : @[],
                     @"CS 32" : @[@"CS 31"],
                     @"CS 33" : @[@"CS 32"],
                     @"CS 35L" : @[@"CS 31"],
                     @"CS M51A" : @[],
                     @"CS 111" : @[@"CS 32", @"CS 33", @"CS 35L"],
                     @"CS M116C" : @[],
                     @"CS 118" : @[@"CS 111"],
                     @"CS M151B" : @[@"CS 33", @"CS M51A"],
                     @"CS 130" : @[@"CS 111"],
                     @"CS 131" : @[@"CS 33", @"CS 35L"],
                     @"CS 151B" : @[],
                     @"CS 152A" : @[@"CS M51A"],
                     @"CS 152B" : @[@"CS 151B"],
                     @"CS 180" : @[@"CS 31", @"Math 61"],
                     @"CS 181" : @[@"180"],
                     @"Math 31A" : @[],
                     @"Math 31B" : @[@"Math 31A"],
                     @"Math 32A" : @[@"Math 31A"],
                     @"Math 32B" : @[@"Math 31B", @"Math 32A"],
                     @"Math 33A" : @[@"Math 32A"],
                     @"Math 33B" : @[@"Math 31B"],
                     @"Math 61" : @[@"Math 31A", @"Math 31B"],
                     @"Phy 1A" : @[@"Math 31A", @"Math 31B"],
                     @"Phy 1B" : @[@"Phy 1A", @"Math 32A", @"Math 31B"],
                     @"Phy 1C" : @[@"Phy 1A", @"Phy 1B", @"Math 32A", @"Math 32B"],
                     @"Phy 4AL" : @[@"Phy 1A"],
                     @"Phy 4BL" : @[@"Phy 1A", @"Phy 1B"],
                     };
    }
    return _courses;
}
@end
