.class public Lcom/reactcommunity/rndatetimepicker/RNDatePickerDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "RNDatePickerDialogFragment.java"


# static fields
.field private static mOnNeutralButtonActionListener:Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private instance:Landroid/app/DatePickerDialog;

.field private mOnDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

.field private mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method static createDialog(Landroid/os/Bundle;Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;)Landroid/app/DatePickerDialog;
    .locals 10

    .line 102
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 104
    invoke-static {p0, p1, p2}, Lcom/reactcommunity/rndatetimepicker/RNDatePickerDialogFragment;->getDialog(Landroid/os/Bundle;Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;)Landroid/app/DatePickerDialog;

    move-result-object p1

    if-eqz p0, :cond_0

    const-string p2, "neutralButtonLabel"

    .line 106
    invoke-virtual {p0, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x3

    .line 107
    invoke-virtual {p0, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    sget-object v2, Lcom/reactcommunity/rndatetimepicker/RNDatePickerDialogFragment;->mOnNeutralButtonActionListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v1, p2, v2}, Landroid/app/DatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_0
    if-eqz p0, :cond_1

    const-string p2, "positiveButtonLabel"

    .line 109
    invoke-virtual {p0, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, -0x1

    .line 110
    invoke-virtual {p0, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2, p1}, Landroid/app/DatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_1
    if-eqz p0, :cond_2

    const-string p2, "negativeButtonLabel"

    .line 112
    invoke-virtual {p0, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, -0x2

    .line 113
    invoke-virtual {p0, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2, p1}, Landroid/app/DatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 116
    :cond_2
    invoke-virtual {p1}, Landroid/app/DatePickerDialog;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object p2

    .line 118
    invoke-static {p0}, Lcom/reactcommunity/rndatetimepicker/RNDatePickerDialogFragment;->getTimeZoneOffset(Landroid/os/Bundle;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v2, "GMT"

    .line 120
    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    :cond_3
    const/16 v2, 0xe

    const/16 v3, 0xd

    const/16 v4, 0xc

    const/16 v5, 0xb

    if-eqz p0, :cond_4

    const-string v6, "minimumDate"

    .line 123
    invoke-virtual {p0, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 127
    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v6, 0x0

    .line 128
    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 129
    invoke-virtual {v0, v4, v6}, Ljava/util/Calendar;->set(II)V

    .line 130
    invoke-virtual {v0, v3, v6}, Ljava/util/Calendar;->set(II)V

    .line 131
    invoke-virtual {v0, v2, v6}, Ljava/util/Calendar;->set(II)V

    .line 132
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-static {v0, v1}, Lcom/reactcommunity/rndatetimepicker/RNDatePickerDialogFragment;->getOffset(Ljava/util/Calendar;Ljava/lang/Integer;)I

    move-result v8

    int-to-long v8, v8

    sub-long/2addr v6, v8

    invoke-virtual {p2, v6, v7}, Landroid/widget/DatePicker;->setMinDate(J)V

    goto :goto_0

    :cond_4
    const-wide v6, -0x20251fe2401L

    .line 136
    invoke-virtual {p2, v6, v7}, Landroid/widget/DatePicker;->setMinDate(J)V

    :goto_0
    if-eqz p0, :cond_5

    const-string v6, "maximumDate"

    .line 138
    invoke-virtual {p0, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 140
    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 p0, 0x17

    .line 141
    invoke-virtual {v0, v5, p0}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0x3b

    .line 142
    invoke-virtual {v0, v4, p0}, Ljava/util/Calendar;->set(II)V

    .line 143
    invoke-virtual {v0, v3, p0}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0x3e7

    .line 144
    invoke-virtual {v0, v2, p0}, Ljava/util/Calendar;->set(II)V

    .line 145
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v0, v1}, Lcom/reactcommunity/rndatetimepicker/RNDatePickerDialogFragment;->getOffset(Ljava/util/Calendar;Ljava/lang/Integer;)I

    move-result p0

    int-to-long v0, p0

    sub-long/2addr v2, v0

    invoke-virtual {p2, v2, v3}, Landroid/widget/DatePicker;->setMaxDate(J)V

    :cond_5
    return-object p1
.end method

.method static getDialog(Landroid/os/Bundle;Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;)Landroid/app/DatePickerDialog;
    .locals 9

    .line 59
    new-instance v0, Lcom/reactcommunity/rndatetimepicker/RNDate;

    invoke-direct {v0, p0}, Lcom/reactcommunity/rndatetimepicker/RNDate;-><init>(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {v0}, Lcom/reactcommunity/rndatetimepicker/RNDate;->year()I

    move-result v5

    .line 61
    invoke-virtual {v0}, Lcom/reactcommunity/rndatetimepicker/RNDate;->month()I

    move-result v6

    .line 62
    invoke-virtual {v0}, Lcom/reactcommunity/rndatetimepicker/RNDate;->day()I

    move-result v7

    .line 64
    sget-object v0, Lcom/reactcommunity/rndatetimepicker/RNDatePickerDisplay;->DEFAULT:Lcom/reactcommunity/rndatetimepicker/RNDatePickerDisplay;

    if-eqz p0, :cond_0

    const/4 v1, 0x0

    const-string v2, "display"

    .line 66
    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 67
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/reactcommunity/rndatetimepicker/RNDatePickerDisplay;->valueOf(Ljava/lang/String;)Lcom/reactcommunity/rndatetimepicker/RNDatePickerDisplay;

    move-result-object p0

    move-object v8, p0

    goto :goto_0

    :cond_0
    move-object v8, v0

    .line 70
    :goto_0
    sget-object p0, Lcom/reactcommunity/rndatetimepicker/RNDatePickerDialogFragment$1;->$SwitchMap$com$reactcommunity$rndatetimepicker$RNDatePickerDisplay:[I

    invoke-virtual {v8}, Lcom/reactcommunity/rndatetimepicker/RNDatePickerDisplay;->ordinal()I

    move-result v0

    aget p0, p0, v0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    .line 86
    new-instance p0, Lcom/reactcommunity/rndatetimepicker/RNDismissableDatePickerDialog;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, v5

    move v5, v6

    move v6, v7

    move-object v7, v8

    invoke-direct/range {v1 .. v7}, Lcom/reactcommunity/rndatetimepicker/RNDismissableDatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;IIILcom/reactcommunity/rndatetimepicker/RNDatePickerDisplay;)V

    return-object p0

    .line 73
    :cond_1
    sget-object p0, Lcom/reactcommunity/rndatetimepicker/RNDatePickerDisplay;->CALENDAR:Lcom/reactcommunity/rndatetimepicker/RNDatePickerDisplay;

    if-ne v8, p0, :cond_2

    .line 74
    sget p0, Lcom/reactcommunity/rndatetimepicker/R$style;->CalendarDatePickerDialog:I

    goto :goto_1

    .line 75
    :cond_2
    sget p0, Lcom/reactcommunity/rndatetimepicker/R$style;->SpinnerDatePickerDialog:I

    :goto_1
    move v3, p0

    .line 76
    new-instance p0, Lcom/reactcommunity/rndatetimepicker/RNDismissableDatePickerDialog;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v8}, Lcom/reactcommunity/rndatetimepicker/RNDismissableDatePickerDialog;-><init>(Landroid/content/Context;ILandroid/app/DatePickerDialog$OnDateSetListener;IIILcom/reactcommunity/rndatetimepicker/RNDatePickerDisplay;)V

    return-object p0
.end method

.method private static getOffset(Ljava/util/Calendar;Ljava/lang/Integer;)I
    .locals 3

    if-eqz p1, :cond_0

    .line 163
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result p0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr p0, p1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static getTimeZoneOffset(Landroid/os/Bundle;)Ljava/lang/Integer;
    .locals 3

    if-eqz p0, :cond_0

    const-string v0, "timeZoneOffsetInMinutes"

    .line 152
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    long-to-int v1, v1

    .line 154
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    const v0, 0xea60

    mul-int/2addr p0, v0

    .line 155
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 43
    invoke-virtual {p0}, Lcom/reactcommunity/rndatetimepicker/RNDatePickerDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    .line 44
    invoke-virtual {p0}, Lcom/reactcommunity/rndatetimepicker/RNDatePickerDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/reactcommunity/rndatetimepicker/RNDatePickerDialogFragment;->mOnDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    invoke-static {p1, v0, v1}, Lcom/reactcommunity/rndatetimepicker/RNDatePickerDialogFragment;->createDialog(Landroid/os/Bundle;Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;)Landroid/app/DatePickerDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/reactcommunity/rndatetimepicker/RNDatePickerDialogFragment;->instance:Landroid/app/DatePickerDialog;

    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 170
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 171
    iget-object v0, p0, Lcom/reactcommunity/rndatetimepicker/RNDatePickerDialogFragment;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_0

    .line 172
    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method

.method setOnDateSetListener(Landroid/app/DatePickerDialog$OnDateSetListener;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/reactcommunity/rndatetimepicker/RNDatePickerDialogFragment;->mOnDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    return-void
.end method

.method setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/reactcommunity/rndatetimepicker/RNDatePickerDialogFragment;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-void
.end method

.method setOnNeutralButtonActionListener(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .line 185
    sput-object p1, Lcom/reactcommunity/rndatetimepicker/RNDatePickerDialogFragment;->mOnNeutralButtonActionListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method public update(Landroid/os/Bundle;)V
    .locals 3

    .line 49
    new-instance v0, Lcom/reactcommunity/rndatetimepicker/RNDate;

    invoke-direct {v0, p1}, Lcom/reactcommunity/rndatetimepicker/RNDate;-><init>(Landroid/os/Bundle;)V

    .line 50
    iget-object p1, p0, Lcom/reactcommunity/rndatetimepicker/RNDatePickerDialogFragment;->instance:Landroid/app/DatePickerDialog;

    invoke-virtual {v0}, Lcom/reactcommunity/rndatetimepicker/RNDate;->year()I

    move-result v1

    invoke-virtual {v0}, Lcom/reactcommunity/rndatetimepicker/RNDate;->month()I

    move-result v2

    invoke-virtual {v0}, Lcom/reactcommunity/rndatetimepicker/RNDate;->day()I

    move-result v0

    invoke-virtual {p1, v1, v2, v0}, Landroid/app/DatePickerDialog;->updateDate(III)V

    return-void
.end method
