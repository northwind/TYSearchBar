//
//  ViewController.m
//  TYSearchBarDemo
//
//  Created by Norris Tong on 8/27/14.
//  Copyright (c) 2014 Norris Tong. All rights reserved.
//

#import "ViewController.h"
#import "INSSearchBar.h"

@interface ViewController () <INSSearchBarDelegate>

@property (nonatomic, strong) INSSearchBar *searchBar;

@end

@implementation ViewController
            
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor colorWithRed:0.000 green:0.418 blue:0.673 alpha:1.000];
    
    self.searchBar = [[INSSearchBar alloc] initWithFrame:CGRectMake(20.0, 40.0, CGRectGetWidth(self.view.bounds) - 40.0, 34.0)];
    self.searchBar.delegate = self;
    [self.view addSubview:self.searchBar];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - search bar delegate

- (void)searchBar:(INSSearchBar *)searchBar willStartTransitioningToState:(INSSearchBarState)destinationState
{
    // Do whatever you deem necessary.
}

- (void)searchBar:(INSSearchBar *)searchBar didEndTransitioningFromState:(INSSearchBarState)previousState
{
    // Do whatever you deem necessary.
}

- (void)searchBarDidTapReturn:(INSSearchBar *)searchBar
{
    // Do whatever you deem necessary.
    // Access the text from the search bar like searchBar.searchField.text
    [self.searchBar hideSearchBar:nil];
    
}

- (void)searchBarTextDidChange:(INSSearchBar *)searchBar
{
    // Do whatever you deem necessary.
    // Access the text from the search bar like searchBar.searchField.text
}


@end
