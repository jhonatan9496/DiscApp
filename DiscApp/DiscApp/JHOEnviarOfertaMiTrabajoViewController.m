//
//  JHOEnviarOfertaMiTrabajoViewController.m
//  DiscApp
//
//  Created by JHONATAN ACELAS AREVALO on 20/09/14.
//  Copyright (c) 2014 jhonatan. All rights reserved.
//

#import "JHOEnviarOfertaMiTrabajoViewController.h"

@interface JHOEnviarOfertaMiTrabajoViewController ()

@end

@implementation JHOEnviarOfertaMiTrabajoViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)enviarOferta:(id)sender {
    
    
    NSString *urlArmada = [NSString  stringWithFormat:@"http://192.168.91.91/guardar/?nombre=%@&edad=%d&telefono=%@&discapacidad=%@&descripcion=%@",nombre.text,11,telefono.text,descripcion.text,descripcionProducto.text];
    
    
    
    
    NSLog(@"%@" ,urlArmada);
    
    
    NSLog(@"remplazar espacios por valido");
    NSArray *convertir = [urlArmada componentsSeparatedByString:@" "];
    
    NSLog(@"vector  %@" , convertir);
    
    NSString *nuevaURL = [NSString  stringWithFormat:@""];
    
    for (int i=0; i<[convertir count]; i++) {
        
        if ([nuevaURL length]<=0) {
            nuevaURL = [NSString  stringWithFormat:@"%@",[convertir objectAtIndex:i]];
        }else {
            
            nuevaURL = [NSString  stringWithFormat:@"%@%%%@",nuevaURL,[convertir objectAtIndex:i]];
        }
        
    }
    NSLog(@"COnvertida %@",nuevaURL);
    
    NSURL *url = [NSURL URLWithString:nuevaURL];
    NSData *data = [NSData dataWithContentsOfURL:url];
    NSString *ret = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    NSLog(@"ret=%@", ret);

    
}
@end
