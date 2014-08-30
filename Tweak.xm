@interface _UIEmojiScrollView : UIScrollView
@end

%hook _UIEmojiScrollView

- (void)layoutSubviews {
	%orig;
	self.pagingEnabled = NO;
}

%end
