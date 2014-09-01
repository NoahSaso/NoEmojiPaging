@interface _UIEmojiPageControl : UIView
@end

@interface _UIEmojiScrollView : UIScrollView
@end

%hook _UIEmojiScrollView

- (void)layoutSubviews {
	%orig;
	self.pagingEnabled = NO;
	for(UIView* view in [[self superview] subviews]) {
		if([view isKindOfClass:[%c(_UIEmojiPageControl) class]]) {
			view.alpha = 0;
		}
	}
}

%end
