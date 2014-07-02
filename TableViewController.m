//
//  TableViewController.m
//  Project111
//
//  Created by itisioslab on 01.07.14.
//  Copyright (c) 2014 itisioslab. All rights reserved.
//

#import "TableViewController.h"
#import "ViewController.h"

@interface TableViewController ()
{
    NSArray *listObjects1;
    NSInteger ind;

}

@end

@implementation TableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
     self = [super initWithStyle:style];
     if (self) {
    
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    ind = 1;
    
    listObjects1 = [NSArray arrayWithObjects:@"Остров",@"План B",@"Мамы",nil];
    
}

 - (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{

    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    // Return the number of rows in the section.
    return listObjects1.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellIdFier" forIndexPath:indexPath];
    
    cell.imageView.image = [UIImage imageNamed: [NSString stringWithFormat:@"%d.jpg", ind]];
    
    NSLog(@"IMGName: %d",ind);
    ind+=1;
    
    
    cell.textLabel.text = [listObjects1 objectAtIndex:indexPath.row];
    
    return cell;
}





#pragma mark - Navigation


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    ViewController *VCC = [[ViewController alloc] init];
    VCC = [segue destinationViewController];
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    VCC.value = [listObjects1 objectAtIndex:indexPath.row];
    NSInteger info = indexPath.row +1;
    
    VCC.image = [UIImage imageNamed:[NSString stringWithFormat:@"%d.jpg",info]];
    
    if(info == 1) {
        VCC.text = @"Во время Великой Отечественной войны в 1942 году где-то на Севере немецкий корабль захватывает советскую баржу, перевозящую уголь. На борту корабля находятся шкипер Тихон и кочегар Анатолий. Оба попытались спрятаться в угле, но немецкие моряки находят последнего. Анатолий соглашается сдаться в плен.";
    }
    if(info == 2) {
        VCC.text = @"Зои слегка за 30, и у нее нет мужа и ребенка, но есть план. Она обращается к врачам с просьбой сделать ей искусственное оплодотворение. Но самое интересное, что как только Зои узнает, что беременна, она встречает свою любовь — Стена";
        
    }
    if(info == 3) {
        VCC.text = @"Мамы» — российский фильм-альманах 2012 года, снятый под руководством кинокомпании Enjoy Movies. Состоит из восьми киноновелл, поставленных разными режиссёрами. В день 8 марта происходят 8 разных историй с восемью разными мамами.";
    }
}
    @end