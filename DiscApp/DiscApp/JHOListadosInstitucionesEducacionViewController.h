//
//  JHOListadosInstitucionesEducacionViewController.h
//  DiscApp
//
//  Created by JHONATAN ACELAS AREVALO on 21/09/14.
//  Copyright (c) 2014 jhonatan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JHOListadosInstitucionesEducacionViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITableView *tableView;

@property (nonatomic, strong) NSString *fisica;
@property (nonatomic, strong) NSString *auditiva;
@property (nonatomic, strong) NSString *visual;
@property (nonatomic, strong) NSString *mental;
@property (nonatomic, strong) NSString *cognitiva;

@end
