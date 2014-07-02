//
//  TableViewController.m
//  Project111
//
//  Created by itisioslab on 01.07.14.
//  Copyright (c) 2014 itisioslab. All rights reserved.
//

#import "TableViewController2.h"
#import "ViewController.h"

@interface TableViewController2 ()
{
    NSArray *listObjects1;
    NSInteger ind2;
    
}

@end

@implementation TableViewController2

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
    
    ind2 = 4;
    
    listObjects1 = [NSArray arrayWithObjects:@"Оружие",@"Побег",@"Механик",nil];
    
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
    UITableViewCell *cell2 = [tableView dequeueReusableCellWithIdentifier:@"cellIdFier2" forIndexPath:indexPath];
    
    cell2.imageView.image = [UIImage imageNamed: [NSString stringWithFormat:@"%d.jpg", ind2]];
    ind2+=1;
    
    
    cell2.textLabel.text = [listObjects1 objectAtIndex:indexPath.row];
    
    return cell2;
}





#pragma mark - Navigation


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    ViewController *VC = [[ViewController alloc] init];
    VC = [segue destinationViewController];
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    VC.value = [listObjects1 objectAtIndex:indexPath.row];
    NSInteger inf = indexPath.row +1;
    
    VC.image = [UIImage imageNamed:[NSString stringWithFormat:@"%d.jpg",inf]];
    
    if(inf == 4) {
        VC.text = @"Гражданин США Фредерик Генри (актёр Гэри Купер) в годы Первой мировой войны вступает в итальянскую армию лейтенантом санитарного батальона. Во время одной из ночных бомбардировок он случайно знакомится с медсестрой, англичанкой Кэтрин Баркли (Хейс). Уже во время второй встречи молодые люди, осознавая хрупкость жизни и любви на войне, вступают в интимную близость.";
    }
    if(inf == 5) {
        VC.text = @"Один из заключенных Док МакКой — известный грабитель банков. После того, как ему в очередной раз было отказано в досрочном освобождении, он решает обратиться к влиятельному Джеку Беньону. Последний с помощью жены Дока Кэрол МакКой добивается выхода профессионала на свободу. Но с одним условием: он должен ограбить один банк.";
        
    }
    if(inf == 6) {
        VC.text = @"Наемный убийца, Артур Бишоп (Джейсон Стэтхэм), работающий на компанию известную как «Организация», известен своей хладнокровностью и расчетливостью. Он способен мастерски и до секунды просчитать любую ситуацию. Убийц такого типа называют «механиками».";
    }
}
@end