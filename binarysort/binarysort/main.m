//
//  main.m
//  binarysort
//
//  Created by Kelo Akalamudo on 10/20/15.
//  Copyright (c) 2015 Kelo. All rights reserved.
//

#import <Foundation/Foundation.h>

int binarySearch(int target, int start, int max, NSArray* array){

    int mid = (start + max)/2;
    if([array[mid] intValue] == target){
        NSLog(@"\nTarget has been found at index %i",mid);
    }
    
    if ([array[mid] intValue]<target){
        NSLog(@"Mid: %i", [array[mid] intValue] );
        return binarySearch(target, mid+1, max, array);
        
    }else if([array[mid] intValue]>target){
        NSLog(@"Mid: %i", [array[mid] intValue] );
        return binarySearch(target, start, mid-1, array);
    }else
        return -1;

}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSArray *bank = @[@1,@11,@21,@31,@41,@51,@61,@71,@81,@91,@111,@121,@131,@141];
        binarySearch(21, 0, (int)bank.count ,bank);
        
    }
    return 0;
}
