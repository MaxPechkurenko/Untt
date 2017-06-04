//
//  ViewController.m
//  Lab_06_2_tp
//
//  Created by Admin  on 02.6.17.
//  Copyright © 2017 Admin . All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *Tempreature;
@property (weak, nonatomic) IBOutlet UITextField *inputText;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)setCityBut:(id)sender
{
    NSString* city = self.inputText.text;
    
    NSString* path = [NSString stringWithFormat:@"http://api.openweathermap.org/data/2.5/weather?q=%@&APPID=2a3316ef209c91ac5c10a77e7717ac7b",city];
    NSURL* url = [NSURL URLWithString:path];
    
    NSData* data = [[NSData alloc] initWithContentsOfURL:url];
    
    NSDictionary* dict = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];
    
    NSDictionary *dictionary = [[NSDictionary alloc] initWithDictionary:[dict valueForKey:@"main"]];
    
    NSNumber* num = [dictionary valueForKey:@"temp"];
    
    NSString *temp = [NSString stringWithFormat:@"%.1f°C",[num doubleValue]-273.15];
    
    NSNumber * number =[NSNumber numberWithDouble:([num doubleValue]- 273.15)];
    
    NSInteger temperature = [number integerValue];
    
    
    if(temperature > 10 && temperature < 30)
        _Tempreature.textColor = [UIColor greenColor];
    
    else if(temperature > 30)
        _Tempreature.textColor = [UIColor redColor];
    
    else if(temperature > 0 && temperature < 10)
        _Tempreature.textColor = [UIColor yellowColor];
    
    else if( temperature < 0)
        _Tempreature.textColor = [UIColor blueColor];
    
    [_Tempreature setText:temp];
        
    
    }


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}


@end
