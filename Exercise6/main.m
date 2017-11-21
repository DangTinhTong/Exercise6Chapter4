//
//  main.m
//  Exercise6
//
//  Created by Tống Đăng Tình on 11/21/17.
//  Copyright © 2017 Tống Đăng Tình. All rights reserved.
//
//---------------------------------------
/*
 Complex numbers are numbers that contain two componets: a real part and an imaginary part. Id a is the real component and b is the imaginary component, this notation is used to present the number:
  a +b i
 Write an Objective C program that difines a new class called Complex. Following the paridigm established for the Fraction class, difine the following methods for your new class
 -(void) setReal: (double)  a;
 -(void) setImaginary: (double) b;
 -(void)  print;
 -(double) real;
 -(double) imaginary;
 
 Write a test program to test your class and methods
 */


#import <Foundation/Foundation.h>

//-----interface section
@interface Complex : NSObject
{
    double real;
    double imaginary;
}
-(void) setReal:      (double) a;
-(void) setImaginary: (double) b;
-(void) print;
-(double) real;
-(double) imaginary;

@end

//----------implemtation section
@implementation Complex
-(void) print{
    NSLog(@"The complex number: %f + %fi",real,imaginary);
    //NSLog(@"%f + %fi",real,imaginary)  ;
}

-(void) setReal:(double)a{
    real = a;
}

-(void) setImaginary:(double)b{
    imaginary = b;
}

-(double) real{
    return real;
}

-(double) imaginary{
    return imaginary;
}
@end


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        //NSLog(@"Hello, World!");
        
        Complex *myComplex =[[Complex alloc] init];
        // Set number for real and imaginary
        [myComplex setReal:3];
        [myComplex setImaginary:10];
        [myComplex print];
    }
    return 0;
}
