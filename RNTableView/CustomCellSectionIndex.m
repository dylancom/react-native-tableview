#import "CustomCellSectionIndex.h"

#define MARGIN 12

@implementation CustomCellSectionIndex


- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    self.imageView.frame = CGRectMake(16, 8, 48, 48);
    
    CGRect cvf = self.contentView.frame;
    CGRect frame = CGRectMake(cvf.size.height + MARGIN,
                              self.textLabel.frame.origin.y,
                              cvf.size.width - cvf.size.height - 1*MARGIN,
                              self.textLabel.frame.size.height);
    self.textLabel.frame = frame;

    frame = CGRectMake(cvf.size.height + MARGIN,
                       self.detailTextLabel.frame.origin.y,
                       cvf.size.width - cvf.size.height - 1*MARGIN,
                       self.detailTextLabel.frame.size.height);
    self.detailTextLabel.frame = frame;
}

@end
