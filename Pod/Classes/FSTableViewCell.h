//
//  FSTableViewCell.h
//  Pods
//
//  Created by Ferdly on 12/21/15.
//
//

#import <UIKit/UIKit.h>

@interface FSTableViewCell : UITableViewCell

@property (strong, nonatomic) IBOutlet UILabel *titleLabel;
@property (strong, nonatomic) IBOutlet UILabel *subtitleLabel;
@property (strong, nonatomic) IBOutlet UIImageView *imageView;
@property (weak  , nonatomic) IBOutlet id delegate;

+ (CGFloat)heightForTableView:(UITableView *)tableView andContent:(id)content;

@end

@interface FSCollectionViewCell : UICollectionViewCell

@end
