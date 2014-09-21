//
//  JHOCadaInstitucionEducativaViewController.h
//  DiscApp
//
//  Created by JHONATAN ACELAS AREVALO on 21/09/14.
//  Copyright (c) 2014 jhonatan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JHOCadaInstitucionEducativaViewController : UIViewController



//Retiene valores de la vista
@property (nonatomic, strong) NSString *textTituloInstitucion;
@property (nonatomic, strong) NSString *textRequisitos;
@property (nonatomic, strong) NSString *textFechaMatricula;
@property (nonatomic, strong) NSString *textTelefono;

@property (strong, nonatomic) IBOutlet UILabel *labelNombreInstitucion;
@property (strong, nonatomic) IBOutlet UILabel *labelRequistos;
@property (strong, nonatomic) IBOutlet UILabel *labelFecha;

@end
