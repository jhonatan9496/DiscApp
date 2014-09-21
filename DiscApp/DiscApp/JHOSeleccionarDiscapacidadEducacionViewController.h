//
//  JHOSeleccionarDiscapacidadEducacionViewController.h
//  DiscApp
//
//  Created by JHONATAN ACELAS AREVALO on 21/09/14.
//  Copyright (c) 2014 jhonatan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JHOSeleccionarDiscapacidadEducacionViewController : UIViewController

@property (strong, nonatomic) IBOutlet UISwitch *selectFisica;

@property (strong, nonatomic) IBOutlet UISwitch *disAuditiva;

@property (strong, nonatomic) IBOutlet UISwitch *disVisual;

@property (strong, nonatomic) IBOutlet UISwitch *disMental;


@property (strong, nonatomic) IBOutlet UISwitch *disCongnitiva;


- (IBAction)avanzarNombresInstituciones:(id)sender;

@end
