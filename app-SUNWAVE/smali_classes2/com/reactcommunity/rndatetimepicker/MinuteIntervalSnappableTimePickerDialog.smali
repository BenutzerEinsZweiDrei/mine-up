.class Lcom/reactcommunity/rndatetimepicker/MinuteIntervalSnappableTimePickerDialog;
.super Landroid/app/TimePickerDialog;
.source "MinuteIntervalSnappableTimePickerDialog.java"


# instance fields
.field private handler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mDisplay:Lcom/reactcommunity/rndatetimepicker/RNTimePickerDisplay;

.field private mTimePicker:Landroid/widget/TimePicker;

.field private mTimePickerInterval:I

.field private final mTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

.field private runnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/app/TimePickerDialog$OnTimeSetListener;IIIZLcom/reactcommunity/rndatetimepicker/RNTimePickerDisplay;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p7

    .line 53
    invoke-direct/range {v0 .. v6}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;ILandroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 23
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/reactcommunity/rndatetimepicker/MinuteIntervalSnappableTimePickerDialog;->handler:Landroid/os/Handler;

    .line 54
    iput p6, p0, Lcom/reactcommunity/rndatetimepicker/MinuteIntervalSnappableTimePickerDialog;->mTimePickerInterval:I

    .line 55
    iput-object p3, p0, Lcom/reactcommunity/rndatetimepicker/MinuteIntervalSnappableTimePickerDialog;->mTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    .line 56
    iput-object p8, p0, Lcom/reactcommunity/rndatetimepicker/MinuteIntervalSnappableTimePickerDialog;->mDisplay:Lcom/reactcommunity/rndatetimepicker/RNTimePickerDisplay;

    .line 57
    iput-object p1, p0, Lcom/reactcommunity/rndatetimepicker/MinuteIntervalSnappableTimePickerDialog;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIIZLcom/reactcommunity/rndatetimepicker/RNTimePickerDisplay;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p6

    .line 36
    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 23
    new-instance p3, Landroid/os/Handler;

    invoke-direct {p3}, Landroid/os/Handler;-><init>()V

    iput-object p3, p0, Lcom/reactcommunity/rndatetimepicker/MinuteIntervalSnappableTimePickerDialog;->handler:Landroid/os/Handler;

    .line 37
    iput p5, p0, Lcom/reactcommunity/rndatetimepicker/MinuteIntervalSnappableTimePickerDialog;->mTimePickerInterval:I

    .line 38
    iput-object p2, p0, Lcom/reactcommunity/rndatetimepicker/MinuteIntervalSnappableTimePickerDialog;->mTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    .line 39
    iput-object p7, p0, Lcom/reactcommunity/rndatetimepicker/MinuteIntervalSnappableTimePickerDialog;->mDisplay:Lcom/reactcommunity/rndatetimepicker/RNTimePickerDisplay;

    .line 40
    iput-object p1, p0, Lcom/reactcommunity/rndatetimepicker/MinuteIntervalSnappableTimePickerDialog;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/reactcommunity/rndatetimepicker/MinuteIntervalSnappableTimePickerDialog;)Z
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/reactcommunity/rndatetimepicker/MinuteIntervalSnappableTimePickerDialog;->pickerIsInTextInputMode()Z

    move-result p0

    return p0
.end method

.method private assertNotSpinner(Ljava/lang/String;)V
    .locals 1

    .line 107
    invoke-direct {p0}, Lcom/reactcommunity/rndatetimepicker/MinuteIntervalSnappableTimePickerDialog;->isSpinner()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 108
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private correctEnteredMinutes(Landroid/widget/TimePicker;II)V
    .locals 1

    const-string v0, "spinner never needs to be corrected because wrong values are not offered to user (both in scrolling and textInput mode)!"

    .line 145
    invoke-direct {p0, v0}, Lcom/reactcommunity/rndatetimepicker/MinuteIntervalSnappableTimePickerDialog;->assertNotSpinner(Ljava/lang/String;)V

    .line 147
    new-instance v0, Lcom/reactcommunity/rndatetimepicker/MinuteIntervalSnappableTimePickerDialog$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/reactcommunity/rndatetimepicker/MinuteIntervalSnappableTimePickerDialog$1;-><init>(Lcom/reactcommunity/rndatetimepicker/MinuteIntervalSnappableTimePickerDialog;Landroid/widget/TimePicker;II)V

    iput-object v0, p0, Lcom/reactcommunity/rndatetimepicker/MinuteIntervalSnappableTimePickerDialog;->runnable:Ljava/lang/Runnable;

    .line 173
    iget-object p1, p0, Lcom/reactcommunity/rndatetimepicker/MinuteIntervalSnappableTimePickerDialog;->handler:Landroid/os/Handler;

    const-wide/16 p2, 0x1f4

    invoke-virtual {p1, v0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private getRealMinutes()I
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/reactcommunity/rndatetimepicker/MinuteIntervalSnappableTimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v0}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 88
    invoke-direct {p0, v0}, Lcom/reactcommunity/rndatetimepicker/MinuteIntervalSnappableTimePickerDialog;->getRealMinutes(I)I

    move-result v0

    return v0
.end method

.method private getRealMinutes(I)I
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/reactcommunity/rndatetimepicker/MinuteIntervalSnappableTimePickerDialog;->mDisplay:Lcom/reactcommunity/rndatetimepicker/RNTimePickerDisplay;

    sget-object v1, Lcom/reactcommunity/rndatetimepicker/RNTimePickerDisplay;->SPINNER:Lcom/reactcommunity/rndatetimepicker/RNTimePickerDisplay;

    if-ne v0, v1, :cond_0

    .line 80
    iget v0, p0, Lcom/reactcommunity/rndatetimepicker/MinuteIntervalSnappableTimePickerDialog;->mTimePickerInterval:I

    mul-int/2addr p1, v0

    :cond_0
    return p1
.end method

.method private isSpinner()Z
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/reactcommunity/rndatetimepicker/MinuteIntervalSnappableTimePickerDialog;->mDisplay:Lcom/reactcommunity/rndatetimepicker/RNTimePickerDisplay;

    sget-object v1, Lcom/reactcommunity/rndatetimepicker/RNTimePickerDisplay;->SPINNER:Lcom/reactcommunity/rndatetimepicker/RNTimePickerDisplay;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isValidMinuteInterval(I)Z
    .locals 2

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/16 v1, 0x1e

    if-gt p0, v1, :cond_0

    const/16 v1, 0x3c

    .line 61
    rem-int/2addr v1, p0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private minutesNeedCorrection(I)Z
    .locals 1

    const-string v0, "minutesNeedCorrection is not intended to be used with spinner, spinner won\'t allow picking invalid values"

    .line 118
    invoke-direct {p0, v0}, Lcom/reactcommunity/rndatetimepicker/MinuteIntervalSnappableTimePickerDialog;->assertNotSpinner(Ljava/lang/String;)V

    .line 120
    invoke-direct {p0}, Lcom/reactcommunity/rndatetimepicker/MinuteIntervalSnappableTimePickerDialog;->timePickerHasCustomMinuteInterval()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/reactcommunity/rndatetimepicker/MinuteIntervalSnappableTimePickerDialog;->snapRealMinutesToInterval(I)I

    move-result v0

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private pickerIsInTextInputMode()Z
    .locals 4

    .line 127
    iget-object v0, p0, Lcom/reactcommunity/rndatetimepicker/MinuteIntervalSnappableTimePickerDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "input_mode"

    const-string v2, "id"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 128
    invoke-virtual {p0, v0}, Lcom/reactcommunity/rndatetimepicker/MinuteIntervalSnappableTimePickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private setSpinnerDisplayedValues()V
    .locals 8

    .line 254
    iget-object v0, p0, Lcom/reactcommunity/rndatetimepicker/MinuteIntervalSnappableTimePickerDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "minute"

    const-string v2, "id"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 255
    invoke-virtual {p0, v0}, Lcom/reactcommunity/rndatetimepicker/MinuteIntervalSnappableTimePickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/NumberPicker;

    const/4 v1, 0x0

    .line 257
    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 258
    iget v2, p0, Lcom/reactcommunity/rndatetimepicker/MinuteIntervalSnappableTimePickerDialog;->mTimePickerInterval:I

    const/16 v3, 0x3c

    div-int v2, v3, v2

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    invoke-virtual {v0, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 260
    new-instance v2, Ljava/util/ArrayList;

    iget v5, p0, Lcom/reactcommunity/rndatetimepicker/MinuteIntervalSnappableTimePickerDialog;->mTimePickerInterval:I

    div-int v5, v3, v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    move v5, v1

    :goto_0
    if-ge v5, v3, :cond_0

    new-array v6, v4, [Ljava/lang/Object;

    .line 262
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    const-string v7, "%02d"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    iget v6, p0, Lcom/reactcommunity/rndatetimepicker/MinuteIntervalSnappableTimePickerDialog;->mTimePickerInterval:I

    add-int/2addr v5, v6

    goto :goto_0

    :cond_0
    new-array v1, v1, [Ljava/lang/String;

    .line 265
    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    return-void
.end method

.method private setupPickerDialog()V
    .locals 4

    .line 237
    iget-object v0, p0, Lcom/reactcommunity/rndatetimepicker/MinuteIntervalSnappableTimePickerDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "timePicker"

    const-string v2, "id"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 238
    invoke-virtual {p0, v0}, Lcom/reactcommunity/rndatetimepicker/MinuteIntervalSnappableTimePickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TimePicker;

    iput-object v0, p0, Lcom/reactcommunity/rndatetimepicker/MinuteIntervalSnappableTimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    .line 240
    invoke-virtual {v0}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 242
    invoke-direct {p0}, Lcom/reactcommunity/rndatetimepicker/MinuteIntervalSnappableTimePickerDialog;->isSpinner()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 243
    invoke-direct {p0}, Lcom/reactcommunity/rndatetimepicker/MinuteIntervalSnappableTimePickerDialog;->setSpinnerDisplayedValues()V

    .line 244
    invoke-direct {p0, v0}, Lcom/reactcommunity/rndatetimepicker/MinuteIntervalSnappableTimePickerDialog;->snapRealMinutesToInterval(I)I

    move-result v0

    iget v1, p0, Lcom/reactcommunity/rndatetimepicker/MinuteIntervalSnappableTimePickerDialog;->mTimePickerInterval:I

    div-int/2addr v0, v1

    .line 245
    iget-object v1, p0, Lcom/reactcommunity/rndatetimepicker/MinuteIntervalSnappableTimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    goto :goto_0

    .line 247
    :cond_0
    invoke-direct {p0, v0}, Lcom/reactcommunity/rndatetimepicker/MinuteIntervalSnappableTimePickerDialog;->snapRealMinutesToInterval(I)I

    move-result v0

    .line 248
    iget-object v1, p0, Lcom/reactcommunity/rndatetimepicker/MinuteIntervalSnappableTimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    :goto_0
    return-void
.end method

.method private snapRealMinutesToInterval(I)I
    .locals 2

    int-to-float p1, p1

    .line 100
    iget v0, p0, Lcom/reactcommunity/rndatetimepicker/MinuteIntervalSnappableTimePickerDialog;->mTimePickerInterval:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 102
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget v0, p0, Lcom/reactcommunity/rndatetimepicker/MinuteIntervalSnappableTimePickerDialog;->mTimePickerInterval:I

    mul-int/2addr p1, v0

    const/16 v1, 0x3c

    if-ne p1, v1, :cond_0

    sub-int/2addr p1, v0

    :cond_0
    return p1
.end method

.method private timePickerHasCustomMinuteInterval()Z
    .locals 2

    .line 65
    iget v0, p0, Lcom/reactcommunity/rndatetimepicker/MinuteIntervalSnappableTimePickerDialog;->mTimePickerInterval:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 1

    .line 229
    invoke-super {p0}, Landroid/app/TimePickerDialog;->onAttachedToWindow()V

    .line 231
    invoke-direct {p0}, Lcom/reactcommunity/rndatetimepicker/MinuteIntervalSnappableTimePickerDialog;->timePickerHasCustomMinuteInterval()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    invoke-direct {p0}, Lcom/reactcommunity/rndatetimepicker/MinuteIntervalSnappableTimePickerDialog;->setupPickerDialog()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/reactcommunity/rndatetimepicker/MinuteIntervalSnappableTimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    invoke-direct {p0}, Lcom/reactcommunity/rndatetimepicker/MinuteIntervalSnappableTimePickerDialog;->timePickerHasCustomMinuteInterval()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    iget-object p1, p0, Lcom/reactcommunity/rndatetimepicker/MinuteIntervalSnappableTimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-virtual {p1}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 197
    invoke-direct {p0}, Lcom/reactcommunity/rndatetimepicker/MinuteIntervalSnappableTimePickerDialog;->getRealMinutes()I

    move-result p2

    .line 198
    invoke-direct {p0}, Lcom/reactcommunity/rndatetimepicker/MinuteIntervalSnappableTimePickerDialog;->isSpinner()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p2}, Lcom/reactcommunity/rndatetimepicker/MinuteIntervalSnappableTimePickerDialog;->snapRealMinutesToInterval(I)I

    move-result p2

    .line 200
    :goto_0
    iget-object v0, p0, Lcom/reactcommunity/rndatetimepicker/MinuteIntervalSnappableTimePickerDialog;->mTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    if-eqz v0, :cond_2

    .line 201
    iget-object v1, p0, Lcom/reactcommunity/rndatetimepicker/MinuteIntervalSnappableTimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-interface {v0, v1, p1, p2}, Landroid/app/TimePickerDialog$OnTimeSetListener;->onTimeSet(Landroid/widget/TimePicker;II)V

    goto :goto_1

    .line 204
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/TimePickerDialog;->onClick(Landroid/content/DialogInterface;I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 270
    iget-object v0, p0, Lcom/reactcommunity/rndatetimepicker/MinuteIntervalSnappableTimePickerDialog;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/reactcommunity/rndatetimepicker/MinuteIntervalSnappableTimePickerDialog;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 271
    invoke-super {p0}, Landroid/app/TimePickerDialog;->onDetachedFromWindow()V

    return-void
.end method

.method public onTimeChanged(Landroid/widget/TimePicker;II)V
    .locals 3

    .line 178
    invoke-direct {p0, p3}, Lcom/reactcommunity/rndatetimepicker/MinuteIntervalSnappableTimePickerDialog;->getRealMinutes(I)I

    move-result v0

    .line 180
    iget-object v1, p0, Lcom/reactcommunity/rndatetimepicker/MinuteIntervalSnappableTimePickerDialog;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/reactcommunity/rndatetimepicker/MinuteIntervalSnappableTimePickerDialog;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 182
    invoke-direct {p0}, Lcom/reactcommunity/rndatetimepicker/MinuteIntervalSnappableTimePickerDialog;->isSpinner()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/reactcommunity/rndatetimepicker/MinuteIntervalSnappableTimePickerDialog;->minutesNeedCorrection(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 183
    invoke-direct {p0, v0}, Lcom/reactcommunity/rndatetimepicker/MinuteIntervalSnappableTimePickerDialog;->snapRealMinutesToInterval(I)I

    move-result p3

    .line 186
    invoke-direct {p0, p1, p2, p3}, Lcom/reactcommunity/rndatetimepicker/MinuteIntervalSnappableTimePickerDialog;->correctEnteredMinutes(Landroid/widget/TimePicker;II)V

    goto :goto_0

    .line 188
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/TimePickerDialog;->onTimeChanged(Landroid/widget/TimePicker;II)V

    :goto_0
    return-void
.end method

.method public updateTime(II)V
    .locals 1

    .line 210
    invoke-direct {p0}, Lcom/reactcommunity/rndatetimepicker/MinuteIntervalSnappableTimePickerDialog;->timePickerHasCustomMinuteInterval()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    invoke-direct {p0}, Lcom/reactcommunity/rndatetimepicker/MinuteIntervalSnappableTimePickerDialog;->isSpinner()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    invoke-direct {p0}, Lcom/reactcommunity/rndatetimepicker/MinuteIntervalSnappableTimePickerDialog;->getRealMinutes()I

    move-result p2

    .line 213
    invoke-direct {p0, p2}, Lcom/reactcommunity/rndatetimepicker/MinuteIntervalSnappableTimePickerDialog;->snapRealMinutesToInterval(I)I

    move-result p2

    iget v0, p0, Lcom/reactcommunity/rndatetimepicker/MinuteIntervalSnappableTimePickerDialog;->mTimePickerInterval:I

    div-int/2addr p2, v0

    .line 214
    invoke-super {p0, p1, p2}, Landroid/app/TimePickerDialog;->updateTime(II)V

    goto :goto_0

    .line 216
    :cond_0
    invoke-direct {p0, p2}, Lcom/reactcommunity/rndatetimepicker/MinuteIntervalSnappableTimePickerDialog;->snapRealMinutesToInterval(I)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/app/TimePickerDialog;->updateTime(II)V

    goto :goto_0

    .line 219
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/TimePickerDialog;->updateTime(II)V

    :goto_0
    return-void
.end method
