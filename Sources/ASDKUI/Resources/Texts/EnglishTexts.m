// -----------------------------------
//
// File was created by Dmitry Kotenko.
//
// -----------------------------------


#import "ASDKUI_Texts.h"
#import "EnglishTexts.h"


@implementation EnglishTexts

+ (instancetype)sharedInstance
{
    static dispatch_once_t onceToken = 0;
    __strong static id _sharedObjectEnglishTexts = nil;
    dispatch_once(&onceToken,
                  ^{
                      _sharedObjectEnglishTexts = [[self alloc] init];
                  });

    return _sharedObjectEnglishTexts;
}

- (instancetype)init {
    self = [super init];
    
    self.acq_new_card_label = @"New card";
    self.acq_saved_card_label = @"Linked card";
    self.acq_change_card_label = @"Change";
    self.acq_money_label = @"Price:";
    self.acq_card_number_hint = @"PAN";
    self.acq_recurrent_mode_card_hint = @"Choose card";
    self.acq_exp_date_hint = @"MM/YY";
    self.acq_cvc_hint = @"CVC";
    self.acq_email_hint = @"E-mail for receipt";
    self.acq_email = @"E-mail";
    self.acq_pay = @"Pay";
    self.acq_add_card = @"Add";
    self.acq_check = @"Check";
    self.acq_pay_with_amount = @"Pay %@ ₽";
    self.acq_money_amount_format = @"%@ ₽";
    self.acq_screen_title = @"Pay";
    self.acq_enter_new_card_label = @"Add new card";
    self.acq_delete_label = @"Delete";
    self.acq_btn_cancel = @"Cancel";
    self.acq_btn_close = @"Close";
    self.acq_btn_change = @"Change";
    self.acq_dialog_dismiss_btn = @"OK";
    self.acq_default_error_title = @"Error";
    self.acq_default_error_message = @"Something went wrong";
    self.acq_network_error_message = @"Probably the Internet connection is interrupted, try again later";
    self.acq_cant_delete_card_message = @"Failed to remove the card, try again later";
    self.acq_progress_dialog_text = @"Payment …";
    self.acq_progress_dialog_attach_card_text = @"Attaching card …";
    self.acq_invalid_email = @"Incorrect e-mail";
    self.acq_invalid_card = @"Incorrect PAN";
    self.acq_attaching_card_loop_title = @"In order to confirm the binding of your card we wrote off and returned a small amount of money (up to 1,99 ₽)/ Please, specify the sum with accuracy to amount of coins.";
    self.acq_attaching_card_loop_parse_error = @"Enter the correct amount in kopecks";
    self.acq_attaching_card_loop_amount_hint = @"Blocked amound";
    self.acq_no_scan_providers = @"There are no service providers to scan";
    self.acq_complete_payment = @"To make a payment, enter CVC";
    self.acq_complete_payment_ok = @"ОК";
    self.acq_scan_type_camera = @"Scan with camera";
    self.acq_title_card_list = @"Select card";
    self.acq_title_card_number = @"Card number";
    self.acq_title_add_card = @"Attaching card";

    return self;
}

@end
