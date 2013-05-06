//
//  TBViewController.m
//  UITextFieldGetInputTextDemo
//
//  Created by tanB on 5/6/13.
//  Copyright (c) 2013 tanB. All rights reserved.
//

#import "TBViewController.h"
#define TBLog(fmt, ...) NSLog((@"%s " fmt), __PRETTY_FUNCTION__, ##__VA_ARGS__);

@interface TBViewController ()
@property (nonatomic) UITextField *textField;
@property (nonatomic) UISearchBar *searchBar;
@end

@implementation TBViewController
- (void)loadView
{
    [super loadView];
    self.view.backgroundColor = [UIColor whiteColor];
    self.textField = [[UITextField alloc] initWithFrame:CGRectMake(10, 10, 200, 30)];
    self.textField.borderStyle = UITextBorderStyleRoundedRect;
    self.textField.placeholder = @"I am TextField.";
    self.textField.delegate = self;
    [self.textField addTarget:self action:@selector(editingChanged:) forControlEvents:UIControlEventEditingChanged];
    [self.view addSubview:self.textField];
    
    
    self.searchBar = [[UISearchBar alloc] initWithFrame:CGRectMake(10, 50, 200, 30)];
    self.searchBar.placeholder = @"I am SearchBar.";
    self.searchBar.delegate = self;
    for (id subview in [self.searchBar subviews]) {
        if ([subview isKindOfClass:[UITextField class]]) {
            [((UITextField *)subview) addTarget:self action:@selector(editingChanged:) forControlEvents:UIControlEventEditingChanged];
        }
        if ([NSStringFromClass([subview class]) isEqualToString:@"UISearchBarBackground"]) {
            [subview removeFromSuperview];
        }
    }
    [self.view addSubview:self.searchBar];
}

- (void)editingChanged:(UITextField *)textField
{
    TBLog(@"%@", textField.text);
}

#pragma mark - UItextViewDelegate
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
    TBLog(@"%@", textField.text);
    
    return YES;
}

- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    TBLog(@"%@", textField.text);
}

- (BOOL)textFieldShouldEndEditing:(UITextField *)textField
{
    TBLog(@"%@", textField.text);
    
    return YES;
}

- (void)textFieldDidEndEditing:(UITextField *)textField
{
    TBLog(@"%@", textField.text);
}

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    TBLog(@"%@", textField.text);
    
    return YES;
}

- (BOOL)textFieldShouldClear:(UITextField *)textField
{
    TBLog(@"%@", textField.text);
    
    return YES;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    TBLog(@"%@", textField.text);
    
    return YES;
}

#pragma mark - UISearchBarDelegate
- (BOOL)searchBarShouldBeginEditing:(UISearchBar *)searchBar
{
    TBLog(@"%@", searchBar.text);
    
    return YES;
}

- (void)searchBarTextDidBeginEditing:(UISearchBar *)searchBar
{
    TBLog(@"%@", searchBar.text);
}

- (BOOL)searchBarShouldEndEditing:(UISearchBar *)searchBar
{
    TBLog(@"%@", searchBar.text);
    
    return YES;
}

- (void)searchBarTextDidEndEditing:(UISearchBar *)searchBar
{
    TBLog(@"%@", searchBar.text);
}

- (void)searchBar:(UISearchBar *)searchBar textDidChange:(NSString *)searchText
{
    TBLog(@"%@", searchBar.text);
}

- (BOOL)searchBar:(UISearchBar *)searchBar shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text
{
    TBLog(@"%@", searchBar.text);
    
    int64_t afterDelay = 0.1;
    dispatch_time_t delay = dispatch_time(DISPATCH_TIME_NOW, afterDelay * NSEC_PER_SEC);
    dispatch_after(delay, dispatch_get_main_queue(), ^(void){
        TBLog(@"%@", searchBar.text);
    });
    return YES;
}

- (void)searchBarSearchButtonClicked:(UISearchBar *)searchBar
{
    TBLog(@"%@", searchBar.text);
}

- (void)searchBarBookmarkButtonClicked:(UISearchBar *)searchBar
{
    TBLog(@"%@", searchBar.text);
}

- (void)searchBarCancelButtonClicked:(UISearchBar *) searchBar
{
    TBLog(@"%@", searchBar.text);
}

- (void)searchBarResultsListButtonClicked:(UISearchBar *)searchBar
{
    TBLog(@"%@", searchBar.text);
}

- (void)searchBar:(UISearchBar *)searchBar selectedScopeButtonIndexDidChange:(NSInteger)selectedScope
{
    TBLog(@"%@", searchBar.text);
}

@end