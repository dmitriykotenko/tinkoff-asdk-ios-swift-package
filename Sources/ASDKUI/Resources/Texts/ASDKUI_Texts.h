/*
  Localizable.strings
  ASDKUI

  Copyright (c) 2016 TCS Bank
 
  Licensed under the Apache License, Version 2.0 (the "License");
  you may not use this file except in compliance with the License.
  You may obtain a copy of the License at
 
    http://www.apache.org/licenses/LICENSE-2.0
 
  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License.
*/

#import <Foundation/Foundation.h>

@interface ASDKUI_Texts: NSObject

+ (instancetype)current;

@property(nonatomic) NSString *acq_new_card_label;
@property(nonatomic) NSString *acq_saved_card_label;
@property(nonatomic) NSString *acq_change_card_label;
@property(nonatomic) NSString *acq_money_label;
@property(nonatomic) NSString *acq_card_number_hint;
@property(nonatomic) NSString *acq_recurrent_mode_card_hint;
@property(nonatomic) NSString *acq_exp_date_hint;
@property(nonatomic) NSString *acq_cvc_hint;
@property(nonatomic) NSString *acq_email_hint;
@property(nonatomic) NSString *acq_email;
@property(nonatomic) NSString *acq_pay;
@property(nonatomic) NSString *acq_add_card;
@property(nonatomic) NSString *acq_check;
@property(nonatomic) NSString *acq_pay_with_amount;
@property(nonatomic) NSString *acq_money_amount_format;
@property(nonatomic) NSString *acq_screen_title;
@property(nonatomic) NSString *acq_enter_new_card_label;
@property(nonatomic) NSString *acq_delete_label;
@property(nonatomic) NSString *acq_btn_cancel;
@property(nonatomic) NSString *acq_btn_close;
@property(nonatomic) NSString *acq_btn_change;
@property(nonatomic) NSString *acq_dialog_dismiss_btn;
@property(nonatomic) NSString *acq_default_error_title;
@property(nonatomic) NSString *acq_default_error_message;
@property(nonatomic) NSString *acq_network_error_message;
@property(nonatomic) NSString *acq_cant_delete_card_message;
@property(nonatomic) NSString *acq_progress_dialog_text;
@property(nonatomic) NSString *acq_progress_dialog_attach_card_text;
@property(nonatomic) NSString *acq_invalid_email;
@property(nonatomic) NSString *acq_invalid_card;
@property(nonatomic) NSString *acq_attaching_card_loop_title;
@property(nonatomic) NSString *acq_attaching_card_loop_parse_error;
@property(nonatomic) NSString *acq_attaching_card_loop_amount_hint;
@property(nonatomic) NSString *acq_no_scan_providers;
@property(nonatomic) NSString *acq_complete_payment;
@property(nonatomic) NSString *acq_complete_payment_ok;
@property(nonatomic) NSString *acq_scan_type_camera;
@property(nonatomic) NSString *acq_title_card_list;
@property(nonatomic) NSString *acq_title_card_number;
@property(nonatomic) NSString *acq_title_add_card;

@end
