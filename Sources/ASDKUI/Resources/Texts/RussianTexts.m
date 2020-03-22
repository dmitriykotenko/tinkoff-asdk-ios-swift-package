// -----------------------------------
//
// File was created by Dmitry Kotenko.
//
// -----------------------------------


#import "ASDKUI_Texts.h"
#import "RussianTexts.h"

@implementation RussianTexts

+ (instancetype)sharedInstance
{
    static dispatch_once_t onceToken = 0;
    __strong static id _sharedObjectRussianTexts = nil;
    dispatch_once(&onceToken,
                  ^{
                      _sharedObjectRussianTexts = [[self alloc] init];
                  });

    return _sharedObjectRussianTexts;
}

- (instancetype)init {
    self = [super init];
    
    self.acq_new_card_label = @"Новая карта";
    self.acq_saved_card_label = @"Сохраненная карта";
    self.acq_change_card_label = @"Изменить";
    self.acq_money_label = @"На сумму:";
    self.acq_card_number_hint = @"Номер карты";
    self.acq_recurrent_mode_card_hint = @"Выберите карту из привязанных";
    self.acq_exp_date_hint = @"ММ/ГГ";
    self.acq_cvc_hint = @"CVC";
    self.acq_email_hint = @"E-mail для квитанции";
    self.acq_email = @"E-mail";
    self.acq_pay = @"Оплатить";
    self.acq_add_card = @"Добавить";
    self.acq_check = @"Проверить";
    self.acq_pay_with_amount = @"Оплатить %@ ₽";
    self.acq_money_amount_format = @"%@ ₽";
    self.acq_screen_title = @"Оплата";
    self.acq_enter_new_card_label = @"Ввести данные новой карты";
    self.acq_delete_label = @"Удалить";
    self.acq_btn_cancel = @"Отмена";
    self.acq_btn_close = @"Закрыть";
    self.acq_btn_change = @"Изменить";
    self.acq_dialog_dismiss_btn = @"OK";
    self.acq_default_error_title = @"Ошибка";
    self.acq_default_error_message = @"Что-то пошло не так";
    self.acq_network_error_message = @"Вероятно, соединение с интернетом прервано, попробуйте позже";
    self.acq_cant_delete_card_message = @"Не удалось удалить карту, попробуйте позже";
    self.acq_progress_dialog_text = @"Оплата…";
    self.acq_progress_dialog_attach_card_text = @"Привязка карты…";
    self.acq_invalid_email = @"Введен некорректный e-mail";
    self.acq_invalid_card = @"Введены некорректные данные карты";
    self.acq_attaching_card_loop_title = @"Для подтверждения привязки карты мы списали и вернули небольшую сумму (до 1,99 ₽).\nПожалуйста, укажите ее с точностью до копеек.";
    self.acq_attaching_card_loop_parse_error = @"Введите корректную сумму в копейках";
    self.acq_attaching_card_loop_amount_hint = @"Заблокированная сумма";
    self.acq_no_scan_providers = @"Отсутвуют провайдеры для сканирования";
    self.acq_complete_payment = @"Для совершения платежа, введите CVC";
    self.acq_complete_payment_ok = @"ОК";
    self.acq_scan_type_camera = @"Сканировать камерой";
    self.acq_title_card_list = @"Выберите карту";
    self.acq_title_card_number = @"Номер карты для оплаты";
    self.acq_title_add_card = @"Сохранение карты";
    
    return self;
}

@end
