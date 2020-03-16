//
//  ASDKCardsListViewController.h
//  ASDKUI
//
// Copyright (c) 2016 TCS Bank
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//   http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

#import "ASDKBaseTableViewController.h"
#import <ASDKCore.h>

@protocol ASDKCardsListDelegate <NSObject>

- (void)didSelectCard:(ASDKCard *)card;
- (void)cardsListDidCancel;
- (void)cardListDidChanged;
- (NSArray<ASDKCard*>*)filterCardList:(NSArray<ASDKCard*>*)cardList;

@end

@interface ASDKCardsListViewController : ASDKBaseTableViewController

@property (nonatomic, weak) id<ASDKCardsListDelegate> cardsListDelegate;
@property (nonatomic, strong) ASDKCard *selectedCard;

@end