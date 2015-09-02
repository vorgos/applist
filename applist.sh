echo '#import <Cocoa/Cocoa.h>

// Thx http://stackoverflow.com/a/3001507/348694
// for pointing to https://gist.github.com/0xced/163918#file-copylaunchedapplicationsinfronttobackorder-c
// I've included a copy with minor change to compile cleanly on 10.6
#import "CopyLaunchedApplicationsInFrontToBackOrder.c"

// Thx http://stackoverflow.com/a/7446805/348694
void NSPrint (NSString *str)
{
  [str writeToFile:@"/dev/stdout" atomically:NO encoding:NSUTF8StringEncoding error:nil];
}



int main ()
{
 [NSAutoreleasePool new];

 CFArrayRef myList;
 myList=CopyLaunchedApplicationsInFrontToBackOrder();

 NSArray *apps = (NSArray *)myList;
 NSInteger index;
 for (index = 0; index < [apps count]; index++) 
 {
   NSDictionary *app = [apps objectAtIndex:index];
   NSPrint([NSString stringWithFormat: @"%d %@\n", [[app objectForKey:@"pid"] intValue], [app objectForKey:@"CFBundleIdentifier"]]);
 }
 return 0;
}' | gcc -framework Cocoa -x objective-c -o applist  - && ./applist
