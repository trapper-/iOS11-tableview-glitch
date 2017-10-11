//
//  ViewController.m
//  iOS11-tableview-glitch
//

#import "ViewController.h"
#import "TableViewCell.h"

@interface ViewController ()
@property (nonatomic, weak) IBOutlet UITableView *tableView;
@end

@implementation ViewController

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 30;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];

    NSString *row = [NSString stringWithFormat:@"%li ", (long)indexPath.row];
    cell.label.text = [@"" stringByPaddingToLength:50 * row.length withString:row startingAtIndex:0];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView reloadRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
}

@end
