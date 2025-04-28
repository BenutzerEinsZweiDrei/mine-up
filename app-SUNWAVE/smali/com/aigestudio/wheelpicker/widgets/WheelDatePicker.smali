.class public Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;
.super Landroid/widget/LinearLayout;
.source "WheelDatePicker.java"

# interfaces
.implements Lcom/aigestudio/wheelpicker/WheelPicker$OnItemSelectedListener;
.implements Lcom/aigestudio/wheelpicker/IDebug;
.implements Lcom/aigestudio/wheelpicker/IWheelPicker;
.implements Lcom/aigestudio/wheelpicker/widgets/IWheelDatePicker;
.implements Lcom/aigestudio/wheelpicker/widgets/IWheelYearPicker;
.implements Lcom/aigestudio/wheelpicker/widgets/IWheelMonthPicker;
.implements Lcom/aigestudio/wheelpicker/widgets/IWheelDayPicker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker$OnDateSelectedListener;
    }
.end annotation


# static fields
.field private static final SDF:Ljava/text/SimpleDateFormat;


# instance fields
.field private mDay:I

.field private mListener:Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker$OnDateSelectedListener;

.field private mMonth:I

.field private mPickerDay:Lcom/aigestudio/wheelpicker/widgets/WheelDayPicker;

.field private mPickerMonth:Lcom/aigestudio/wheelpicker/widgets/WheelMonthPicker;

.field private mPickerYear:Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;

.field private mTVDay:Landroid/widget/TextView;

.field private mTVMonth:Landroid/widget/TextView;

.field private mTVYear:Landroid/widget/TextView;

.field private mYear:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 24
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 25
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string/jumbo v2, "yyyy-M-d"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->SDF:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, v0}, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/aigestudio/wheelpicker/R$layout;->view_wheel_date_picker:I

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 46
    sget p1, Lcom/aigestudio/wheelpicker/R$id;->wheel_date_picker_year:I

    invoke-virtual {p0, p1}, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;

    iput-object p1, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerYear:Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;

    .line 47
    sget p1, Lcom/aigestudio/wheelpicker/R$id;->wheel_date_picker_month:I

    invoke-virtual {p0, p1}, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/aigestudio/wheelpicker/widgets/WheelMonthPicker;

    iput-object p1, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerMonth:Lcom/aigestudio/wheelpicker/widgets/WheelMonthPicker;

    .line 48
    sget p1, Lcom/aigestudio/wheelpicker/R$id;->wheel_date_picker_day:I

    invoke-virtual {p0, p1}, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/aigestudio/wheelpicker/widgets/WheelDayPicker;

    iput-object p1, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerDay:Lcom/aigestudio/wheelpicker/widgets/WheelDayPicker;

    .line 49
    iget-object p1, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerYear:Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;

    invoke-virtual {p1, p0}, Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;->setOnItemSelectedListener(Lcom/aigestudio/wheelpicker/WheelPicker$OnItemSelectedListener;)V

    .line 50
    iget-object p1, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerMonth:Lcom/aigestudio/wheelpicker/widgets/WheelMonthPicker;

    invoke-virtual {p1, p0}, Lcom/aigestudio/wheelpicker/widgets/WheelMonthPicker;->setOnItemSelectedListener(Lcom/aigestudio/wheelpicker/WheelPicker$OnItemSelectedListener;)V

    .line 51
    iget-object p1, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerDay:Lcom/aigestudio/wheelpicker/widgets/WheelDayPicker;

    invoke-virtual {p1, p0}, Lcom/aigestudio/wheelpicker/widgets/WheelDayPicker;->setOnItemSelectedListener(Lcom/aigestudio/wheelpicker/WheelPicker$OnItemSelectedListener;)V

    .line 53
    invoke-direct {p0}, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->setMaximumWidthTextYear()V

    .line 54
    iget-object p1, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerMonth:Lcom/aigestudio/wheelpicker/widgets/WheelMonthPicker;

    const-string p2, "00"

    invoke-virtual {p1, p2}, Lcom/aigestudio/wheelpicker/widgets/WheelMonthPicker;->setMaximumWidthText(Ljava/lang/String;)V

    .line 55
    iget-object p1, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerDay:Lcom/aigestudio/wheelpicker/widgets/WheelDayPicker;

    invoke-virtual {p1, p2}, Lcom/aigestudio/wheelpicker/widgets/WheelDayPicker;->setMaximumWidthText(Ljava/lang/String;)V

    .line 57
    sget p1, Lcom/aigestudio/wheelpicker/R$id;->wheel_date_picker_year_tv:I

    invoke-virtual {p0, p1}, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mTVYear:Landroid/widget/TextView;

    .line 58
    sget p1, Lcom/aigestudio/wheelpicker/R$id;->wheel_date_picker_month_tv:I

    invoke-virtual {p0, p1}, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mTVMonth:Landroid/widget/TextView;

    .line 59
    sget p1, Lcom/aigestudio/wheelpicker/R$id;->wheel_date_picker_day_tv:I

    invoke-virtual {p0, p1}, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mTVDay:Landroid/widget/TextView;

    .line 61
    iget-object p1, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerYear:Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;

    invoke-virtual {p1}, Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;->getCurrentYear()I

    move-result p1

    iput p1, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mYear:I

    .line 62
    iget-object p1, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerMonth:Lcom/aigestudio/wheelpicker/widgets/WheelMonthPicker;

    invoke-virtual {p1}, Lcom/aigestudio/wheelpicker/widgets/WheelMonthPicker;->getCurrentMonth()I

    move-result p1

    iput p1, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mMonth:I

    .line 63
    iget-object p1, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerDay:Lcom/aigestudio/wheelpicker/widgets/WheelDayPicker;

    invoke-virtual {p1}, Lcom/aigestudio/wheelpicker/widgets/WheelDayPicker;->getCurrentDay()I

    move-result p1

    iput p1, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mDay:I

    return-void
.end method

.method private setMaximumWidthTextYear()V
    .locals 4

    .line 67
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerYear:Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;

    invoke-virtual {v0}, Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;->getData()Ljava/util/List;

    move-result-object v0

    .line 68
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    .line 70
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    const-string v3, "0"

    .line 71
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerYear:Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;->setMaximumWidthText(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getCurrentDate()Ljava/util/Date;
    .locals 3

    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mYear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mMonth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 414
    :try_start_0
    sget-object v1, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->SDF:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 416
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentDay()I
    .locals 1

    .line 553
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerDay:Lcom/aigestudio/wheelpicker/widgets/WheelDayPicker;

    invoke-virtual {v0}, Lcom/aigestudio/wheelpicker/widgets/WheelDayPicker;->getCurrentDay()I

    move-result v0

    return v0
.end method

.method public getCurrentItemPosition()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 152
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "You can not get position of current item fromWheelDatePicker"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCurrentMonth()I
    .locals 1

    .line 537
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerMonth:Lcom/aigestudio/wheelpicker/widgets/WheelMonthPicker;

    invoke-virtual {v0}, Lcom/aigestudio/wheelpicker/widgets/WheelMonthPicker;->getCurrentMonth()I

    move-result v0

    return v0
.end method

.method public getCurrentYear()I
    .locals 1

    .line 520
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerYear:Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;

    invoke-virtual {v0}, Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;->getCurrentYear()I

    move-result v0

    return v0
.end method

.method public getCurtainColor()I
    .locals 2

    .line 339
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerYear:Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;

    invoke-virtual {v0}, Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;->getCurtainColor()I

    move-result v0

    iget-object v1, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerMonth:Lcom/aigestudio/wheelpicker/widgets/WheelMonthPicker;

    invoke-virtual {v1}, Lcom/aigestudio/wheelpicker/widgets/WheelMonthPicker;->getCurtainColor()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerMonth:Lcom/aigestudio/wheelpicker/widgets/WheelMonthPicker;

    .line 340
    invoke-virtual {v0}, Lcom/aigestudio/wheelpicker/widgets/WheelMonthPicker;->getCurtainColor()I

    move-result v0

    iget-object v1, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerDay:Lcom/aigestudio/wheelpicker/widgets/WheelDayPicker;

    invoke-virtual {v1}, Lcom/aigestudio/wheelpicker/widgets/WheelDayPicker;->getCurtainColor()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 341
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerYear:Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;

    invoke-virtual {v0}, Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;->getCurtainColor()I

    move-result v0

    return v0

    .line 342
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can not get curtain color correctly from WheelDatePicker!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getData()Ljava/util/List;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 159
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "You can not get data source from WheelDatePicker"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getIndicatorColor()I
    .locals 2

    .line 311
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerYear:Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;

    invoke-virtual {v0}, Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;->getCurtainColor()I

    move-result v0

    iget-object v1, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerMonth:Lcom/aigestudio/wheelpicker/widgets/WheelMonthPicker;

    invoke-virtual {v1}, Lcom/aigestudio/wheelpicker/widgets/WheelMonthPicker;->getCurtainColor()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerMonth:Lcom/aigestudio/wheelpicker/widgets/WheelMonthPicker;

    .line 312
    invoke-virtual {v0}, Lcom/aigestudio/wheelpicker/widgets/WheelMonthPicker;->getCurtainColor()I

    move-result v0

    iget-object v1, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerDay:Lcom/aigestudio/wheelpicker/widgets/WheelDayPicker;

    invoke-virtual {v1}, Lcom/aigestudio/wheelpicker/widgets/WheelDayPicker;->getCurtainColor()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 313
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerYear:Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;

    invoke-virtual {v0}, Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;->getCurtainColor()I

    move-result v0

    return v0

    .line 314
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can not get indicator color correctly from WheelDatePicker!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getIndicatorSize()I
    .locals 2

    .line 296
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerYear:Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;

    invoke-virtual {v0}, Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;->getIndicatorSize()I

    move-result v0

    iget-object v1, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerMonth:Lcom/aigestudio/wheelpicker/widgets/WheelMonthPicker;

    invoke-virtual {v1}, Lcom/aigestudio/wheelpicker/widgets/WheelMonthPicker;->getIndicatorSize()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerMonth:Lcom/aigestudio/wheelpicker/widgets/WheelMonthPicker;

    .line 297
    invoke-virtual {v0}, Lcom/aigestudio/wheelpicker/widgets/WheelMonthPicker;->getIndicatorSize()I

    move-result v0

    iget-object v1, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerDay:Lcom/aigestudio/wheelpicker/widgets/WheelDayPicker;

    invoke-virtual {v1}, Lcom/aigestudio/wheelpicker/widgets/WheelDayPicker;->getIndicatorSize()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 298
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerYear:Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;

    invoke-virtual {v0}, Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;->getIndicatorSize()I

    move-result v0

    return v0

    .line 299
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can not get indicator size correctly from WheelDatePicker!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getItemAlign()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 380
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "You can not get item align from WheelDatePicker"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getItemAlignDay()I
    .locals 1

    .line 443
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerDay:Lcom/aigestudio/wheelpicker/widgets/WheelDayPicker;

    invoke-virtual {v0}, Lcom/aigestudio/wheelpicker/widgets/WheelDayPicker;->getItemAlign()I

    move-result v0

    return v0
.end method

.method public getItemAlignMonth()I
    .locals 1

    .line 433
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerMonth:Lcom/aigestudio/wheelpicker/widgets/WheelMonthPicker;

    invoke-virtual {v0}, Lcom/aigestudio/wheelpicker/widgets/WheelMonthPicker;->getItemAlign()I

    move-result v0

    return v0
.end method

.method public getItemAlignYear()I
    .locals 1

    .line 423
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerYear:Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;

    invoke-virtual {v0}, Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;->getItemAlign()I

    move-result v0

    return v0
.end method

.method public getItemSpace()I
    .locals 2

    .line 268
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerYear:Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;

    invoke-virtual {v0}, Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;->getItemSpace()I

    move-result v0

    iget-object v1, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerMonth:Lcom/aigestudio/wheelpicker/widgets/WheelMonthPicker;

    invoke-virtual {v1}, Lcom/aigestudio/wheelpicker/widgets/WheelMonthPicker;->getItemSpace()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerMonth:Lcom/aigestudio/wheelpicker/widgets/WheelMonthPicker;

    .line 269
    invoke-virtual {v0}, Lcom/aigestudio/wheelpicker/widgets/WheelMonthPicker;->getItemSpace()I

    move-result v0

    iget-object v1, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerDay:Lcom/aigestudio/wheelpicker/widgets/WheelDayPicker;

    invoke-virtual {v1}, Lcom/aigestudio/wheelpicker/widgets/WheelDayPicker;->getItemSpace()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 270
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerYear:Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;

    invoke-virtual {v0}, Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;->getItemSpace()I

    move-result v0

    return v0

    .line 271
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can not get item space correctly from WheelDatePicker!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getItemTextColor()I
    .locals 2

    .line 236
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerYear:Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;

    invoke-virtual {v0}, Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;->getItemTextColor()I

    move-result v0

    iget-object v1, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerMonth:Lcom/aigestudio/wheelpicker/widgets/WheelMonthPicker;

    invoke-virtual {v1}, Lcom/aigestudio/wheelpicker/widgets/WheelMonthPicker;->getItemTextColor()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerMonth:Lcom/aigestudio/wheelpicker/widgets/WheelMonthPicker;

    .line 237
    invoke-virtual {v0}, Lcom/aigestudio/wheelpicker/widgets/WheelMonthPicker;->getItemTextColor()I

    move-result v0

    iget-object v1, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerDay:Lcom/aigestudio/wheelpicker/widgets/WheelDayPicker;

    invoke-virtual {v1}, Lcom/aigestudio/wheelpicker/widgets/WheelDayPicker;->getItemTextColor()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 238
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerYear:Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;

    invoke-virtual {v0}, Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;->getItemTextColor()I

    move-result v0

    return v0

    .line 239
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can not get color of item text correctly fromWheelDatePicker!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getItemTextSize()I
    .locals 2

    .line 252
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerYear:Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;

    invoke-virtual {v0}, Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;->getItemTextSize()I

    move-result v0

    iget-object v1, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerMonth:Lcom/aigestudio/wheelpicker/widgets/WheelMonthPicker;

    invoke-virtual {v1}, Lcom/aigestudio/wheelpicker/widgets/WheelMonthPicker;->getItemTextSize()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerMonth:Lcom/aigestudio/wheelpicker/widgets/WheelMonthPicker;

    .line 253
    invoke-virtual {v0}, Lcom/aigestudio/wheelpicker/widgets/WheelMonthPicker;->getItemTextSize()I

    move-result v0

    iget-object v1, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerDay:Lcom/aigestudio/wheelpicker/widgets/WheelDayPicker;

    invoke-virtual {v1}, Lcom/aigestudio/wheelpicker/widgets/WheelDayPicker;->getItemTextSize()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 254
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerYear:Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;

    invoke-virtual {v0}, Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;->getItemTextSize()I

    move-result v0

    return v0

    .line 255
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can not get size of item text correctly fromWheelDatePicker!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMaximumWidthText()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 193
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "You can not get maximum width text fromWheelDatePicker"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMaximumWidthTextPosition()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 207
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "You can not get maximum width text positionfrom WheelDatePicker"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMonth()I
    .locals 1

    .line 579
    invoke-virtual {p0}, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->getSelectedMonth()I

    move-result v0

    return v0
.end method

.method public getSelectedDay()I
    .locals 1

    .line 542
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerDay:Lcom/aigestudio/wheelpicker/widgets/WheelDayPicker;

    invoke-virtual {v0}, Lcom/aigestudio/wheelpicker/widgets/WheelDayPicker;->getSelectedDay()I

    move-result v0

    return v0
.end method

.method public getSelectedItemPosition()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 138
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "You can not get position of selected item fromWheelDatePicker"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSelectedItemTextColor()I
    .locals 2

    .line 220
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerYear:Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;

    invoke-virtual {v0}, Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;->getSelectedItemTextColor()I

    move-result v0

    iget-object v1, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerMonth:Lcom/aigestudio/wheelpicker/widgets/WheelMonthPicker;

    invoke-virtual {v1}, Lcom/aigestudio/wheelpicker/widgets/WheelMonthPicker;->getSelectedItemTextColor()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerMonth:Lcom/aigestudio/wheelpicker/widgets/WheelMonthPicker;

    .line 221
    invoke-virtual {v0}, Lcom/aigestudio/wheelpicker/widgets/WheelMonthPicker;->getSelectedItemTextColor()I

    move-result v0

    iget-object v1, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerDay:Lcom/aigestudio/wheelpicker/widgets/WheelDayPicker;

    invoke-virtual {v1}, Lcom/aigestudio/wheelpicker/widgets/WheelDayPicker;->getSelectedItemTextColor()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 222
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerYear:Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;

    invoke-virtual {v0}, Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;->getSelectedItemTextColor()I

    move-result v0

    return v0

    .line 223
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can not get color of selected item text correctly fromWheelDatePicker!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSelectedMonth()I
    .locals 1

    .line 525
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerMonth:Lcom/aigestudio/wheelpicker/widgets/WheelMonthPicker;

    invoke-virtual {v0}, Lcom/aigestudio/wheelpicker/widgets/WheelMonthPicker;->getSelectedMonth()I

    move-result v0

    return v0
.end method

.method public getSelectedYear()I
    .locals 1

    .line 508
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerYear:Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;

    invoke-virtual {v0}, Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;->getSelectedYear()I

    move-result v0

    return v0
.end method

.method public getTextViewDay()Landroid/widget/TextView;
    .locals 1

    .line 478
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mTVDay:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTextViewMonth()Landroid/widget/TextView;
    .locals 1

    .line 473
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mTVMonth:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTextViewYear()Landroid/widget/TextView;
    .locals 1

    .line 468
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mTVYear:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 2

    .line 392
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerYear:Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;

    invoke-virtual {v0}, Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    iget-object v1, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerMonth:Lcom/aigestudio/wheelpicker/widgets/WheelMonthPicker;

    invoke-virtual {v1}, Lcom/aigestudio/wheelpicker/widgets/WheelMonthPicker;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerMonth:Lcom/aigestudio/wheelpicker/widgets/WheelMonthPicker;

    .line 393
    invoke-virtual {v0}, Lcom/aigestudio/wheelpicker/widgets/WheelMonthPicker;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    iget-object v1, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerDay:Lcom/aigestudio/wheelpicker/widgets/WheelDayPicker;

    invoke-virtual {v1}, Lcom/aigestudio/wheelpicker/widgets/WheelDayPicker;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerYear:Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;

    invoke-virtual {v0}, Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0

    .line 395
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Can not get typeface correctly from WheelDatePicker!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getVisibleItemCount()I
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerYear:Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;

    invoke-virtual {v0}, Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;->getVisibleItemCount()I

    move-result v0

    iget-object v1, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerMonth:Lcom/aigestudio/wheelpicker/widgets/WheelMonthPicker;

    invoke-virtual {v1}, Lcom/aigestudio/wheelpicker/widgets/WheelMonthPicker;->getVisibleItemCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerMonth:Lcom/aigestudio/wheelpicker/widgets/WheelMonthPicker;

    .line 103
    invoke-virtual {v0}, Lcom/aigestudio/wheelpicker/widgets/WheelMonthPicker;->getVisibleItemCount()I

    move-result v0

    iget-object v1, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerDay:Lcom/aigestudio/wheelpicker/widgets/WheelDayPicker;

    invoke-virtual {v1}, Lcom/aigestudio/wheelpicker/widgets/WheelDayPicker;->getVisibleItemCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 104
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerYear:Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;

    invoke-virtual {v0}, Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;->getVisibleItemCount()I

    move-result v0

    return v0

    .line 105
    :cond_0
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Can not get visible item count correctly fromWheelDatePicker!"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getWheelDayPicker()Lcom/aigestudio/wheelpicker/widgets/WheelDayPicker;
    .locals 1

    .line 463
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerDay:Lcom/aigestudio/wheelpicker/widgets/WheelDayPicker;

    return-object v0
.end method

.method public getWheelMonthPicker()Lcom/aigestudio/wheelpicker/widgets/WheelMonthPicker;
    .locals 1

    .line 458
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerMonth:Lcom/aigestudio/wheelpicker/widgets/WheelMonthPicker;

    return-object v0
.end method

.method public getWheelYearPicker()Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;
    .locals 1

    .line 453
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerYear:Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;

    return-object v0
.end method

.method public getYear()I
    .locals 1

    .line 567
    invoke-virtual {p0}, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->getSelectedYear()I

    move-result v0

    return v0
.end method

.method public getYearEnd()I
    .locals 1

    .line 498
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerYear:Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;

    invoke-virtual {v0}, Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;->getYearEnd()I

    move-result v0

    return v0
.end method

.method public getYearStart()I
    .locals 1

    .line 488
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerYear:Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;

    invoke-virtual {v0}, Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;->getYearStart()I

    move-result v0

    return v0
.end method

.method public hasAtmospheric()Z
    .locals 1

    .line 361
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerYear:Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;

    invoke-virtual {v0}, Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;->hasAtmospheric()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerMonth:Lcom/aigestudio/wheelpicker/widgets/WheelMonthPicker;

    invoke-virtual {v0}, Lcom/aigestudio/wheelpicker/widgets/WheelMonthPicker;->hasAtmospheric()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerDay:Lcom/aigestudio/wheelpicker/widgets/WheelDayPicker;

    .line 362
    invoke-virtual {v0}, Lcom/aigestudio/wheelpicker/widgets/WheelDayPicker;->hasAtmospheric()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasCurtain()Z
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerYear:Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;

    invoke-virtual {v0}, Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;->hasCurtain()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerMonth:Lcom/aigestudio/wheelpicker/widgets/WheelMonthPicker;

    invoke-virtual {v0}, Lcom/aigestudio/wheelpicker/widgets/WheelMonthPicker;->hasCurtain()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerDay:Lcom/aigestudio/wheelpicker/widgets/WheelDayPicker;

    .line 334
    invoke-virtual {v0}, Lcom/aigestudio/wheelpicker/widgets/WheelDayPicker;->hasCurtain()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasIndicator()Z
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerYear:Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;

    invoke-virtual {v0}, Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;->hasIndicator()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerMonth:Lcom/aigestudio/wheelpicker/widgets/WheelMonthPicker;

    invoke-virtual {v0}, Lcom/aigestudio/wheelpicker/widgets/WheelMonthPicker;->hasIndicator()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerDay:Lcom/aigestudio/wheelpicker/widgets/WheelDayPicker;

    .line 291
    invoke-virtual {v0}, Lcom/aigestudio/wheelpicker/widgets/WheelDayPicker;->hasIndicator()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSameWidth()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 179
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "You don\'t need to set same width forWheelDatePicker"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isCurved()Z
    .locals 1

    .line 367
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerYear:Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;

    invoke-virtual {v0}, Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;->isCurved()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerMonth:Lcom/aigestudio/wheelpicker/widgets/WheelMonthPicker;

    invoke-virtual {v0}, Lcom/aigestudio/wheelpicker/widgets/WheelMonthPicker;->isCurved()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerDay:Lcom/aigestudio/wheelpicker/widgets/WheelDayPicker;

    invoke-virtual {v0}, Lcom/aigestudio/wheelpicker/widgets/WheelDayPicker;->isCurved()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCyclic()Z
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerYear:Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;

    invoke-virtual {v0}, Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;->isCyclic()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerMonth:Lcom/aigestudio/wheelpicker/widgets/WheelMonthPicker;

    invoke-virtual {v0}, Lcom/aigestudio/wheelpicker/widgets/WheelMonthPicker;->isCyclic()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerDay:Lcom/aigestudio/wheelpicker/widgets/WheelDayPicker;

    invoke-virtual {v0}, Lcom/aigestudio/wheelpicker/widgets/WheelDayPicker;->isCyclic()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onItemSelected(Lcom/aigestudio/wheelpicker/WheelPicker;Ljava/lang/Object;I)V
    .locals 1

    .line 77
    invoke-virtual {p1}, Lcom/aigestudio/wheelpicker/WheelPicker;->getId()I

    move-result p3

    sget v0, Lcom/aigestudio/wheelpicker/R$id;->wheel_date_picker_year:I

    if-ne p3, v0, :cond_0

    .line 78
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mYear:I

    .line 79
    iget-object p2, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerDay:Lcom/aigestudio/wheelpicker/widgets/WheelDayPicker;

    invoke-virtual {p2, p1}, Lcom/aigestudio/wheelpicker/widgets/WheelDayPicker;->setYear(I)V

    goto :goto_0

    .line 80
    :cond_0
    invoke-virtual {p1}, Lcom/aigestudio/wheelpicker/WheelPicker;->getId()I

    move-result p1

    sget p3, Lcom/aigestudio/wheelpicker/R$id;->wheel_date_picker_month:I

    if-ne p1, p3, :cond_1

    .line 81
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mMonth:I

    .line 82
    iget-object p2, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerDay:Lcom/aigestudio/wheelpicker/widgets/WheelDayPicker;

    invoke-virtual {p2, p1}, Lcom/aigestudio/wheelpicker/widgets/WheelDayPicker;->setMonth(I)V

    .line 84
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerDay:Lcom/aigestudio/wheelpicker/widgets/WheelDayPicker;

    invoke-virtual {p1}, Lcom/aigestudio/wheelpicker/widgets/WheelDayPicker;->getCurrentDay()I

    move-result p1

    iput p1, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mDay:I

    .line 85
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget p2, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mYear:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "-"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mMonth:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mDay:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 86
    iget-object p2, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mListener:Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker$OnDateSelectedListener;

    if-eqz p2, :cond_2

    .line 87
    :try_start_0
    sget-object p3, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->SDF:Ljava/text/SimpleDateFormat;

    invoke-virtual {p3, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    invoke-interface {p2, p0, p1}, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker$OnDateSelectedListener;->onDateSelected(Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 89
    invoke-virtual {p1}, Ljava/text/ParseException;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method

.method public setAtmospheric(Z)V
    .locals 1

    .line 354
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerYear:Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;

    invoke-virtual {v0, p1}, Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;->setAtmospheric(Z)V

    .line 355
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerMonth:Lcom/aigestudio/wheelpicker/widgets/WheelMonthPicker;

    invoke-virtual {v0, p1}, Lcom/aigestudio/wheelpicker/widgets/WheelMonthPicker;->setAtmospheric(Z)V

    .line 356
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerDay:Lcom/aigestudio/wheelpicker/widgets/WheelDayPicker;

    invoke-virtual {v0, p1}, Lcom/aigestudio/wheelpicker/widgets/WheelDayPicker;->setAtmospheric(Z)V

    return-void
.end method

.method public setCurtain(Z)V
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerYear:Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;

    invoke-virtual {v0, p1}, Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;->setCurtain(Z)V

    .line 327
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerMonth:Lcom/aigestudio/wheelpicker/widgets/WheelMonthPicker;

    invoke-virtual {v0, p1}, Lcom/aigestudio/wheelpicker/widgets/WheelMonthPicker;->setCurtain(Z)V

    .line 328
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerDay:Lcom/aigestudio/wheelpicker/widgets/WheelDayPicker;

    invoke-virtual {v0, p1}, Lcom/aigestudio/wheelpicker/widgets/WheelDayPicker;->setCurtain(Z)V

    return-void
.end method

.method public setCurtainColor(I)V
    .locals 1

    .line 347
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerYear:Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;

    invoke-virtual {v0, p1}, Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;->setCurtainColor(I)V

    .line 348
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerMonth:Lcom/aigestudio/wheelpicker/widgets/WheelMonthPicker;

    invoke-virtual {v0, p1}, Lcom/aigestudio/wheelpicker/widgets/WheelMonthPicker;->setCurtainColor(I)V

    .line 349
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerDay:Lcom/aigestudio/wheelpicker/widgets/WheelDayPicker;

    invoke-virtual {v0, p1}, Lcom/aigestudio/wheelpicker/widgets/WheelDayPicker;->setCurtainColor(I)V

    return-void
.end method

.method public setCurved(Z)V
    .locals 1

    .line 372
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerYear:Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;

    invoke-virtual {v0, p1}, Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;->setCurved(Z)V

    .line 373
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerMonth:Lcom/aigestudio/wheelpicker/widgets/WheelMonthPicker;

    invoke-virtual {v0, p1}, Lcom/aigestudio/wheelpicker/widgets/WheelMonthPicker;->setCurved(Z)V

    .line 374
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerDay:Lcom/aigestudio/wheelpicker/widgets/WheelDayPicker;

    invoke-virtual {v0, p1}, Lcom/aigestudio/wheelpicker/widgets/WheelDayPicker;->setCurved(Z)V

    return-void
.end method

.method public setCyclic(Z)V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerYear:Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;

    invoke-virtual {v0, p1}, Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;->setCyclic(Z)V

    .line 124
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerMonth:Lcom/aigestudio/wheelpicker/widgets/WheelMonthPicker;

    invoke-virtual {v0, p1}, Lcom/aigestudio/wheelpicker/widgets/WheelMonthPicker;->setCyclic(Z)V

    .line 125
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerDay:Lcom/aigestudio/wheelpicker/widgets/WheelDayPicker;

    invoke-virtual {v0, p1}, Lcom/aigestudio/wheelpicker/widgets/WheelDayPicker;->setCyclic(Z)V

    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 165
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "You don\'t need to set data source forWheelDatePicker"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDebug(Z)V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerYear:Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;

    invoke-virtual {v0, p1}, Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;->setDebug(Z)V

    .line 96
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerMonth:Lcom/aigestudio/wheelpicker/widgets/WheelMonthPicker;

    invoke-virtual {v0, p1}, Lcom/aigestudio/wheelpicker/widgets/WheelMonthPicker;->setDebug(Z)V

    .line 97
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerDay:Lcom/aigestudio/wheelpicker/widgets/WheelDayPicker;

    invoke-virtual {v0, p1}, Lcom/aigestudio/wheelpicker/widgets/WheelDayPicker;->setDebug(Z)V

    return-void
.end method

.method public setIndicator(Z)V
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerYear:Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;

    invoke-virtual {v0, p1}, Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;->setIndicator(Z)V

    .line 284
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerMonth:Lcom/aigestudio/wheelpicker/widgets/WheelMonthPicker;

    invoke-virtual {v0, p1}, Lcom/aigestudio/wheelpicker/widgets/WheelMonthPicker;->setIndicator(Z)V

    .line 285
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerDay:Lcom/aigestudio/wheelpicker/widgets/WheelDayPicker;

    invoke-virtual {v0, p1}, Lcom/aigestudio/wheelpicker/widgets/WheelDayPicker;->setIndicator(Z)V

    return-void
.end method

.method public setIndicatorColor(I)V
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerYear:Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;

    invoke-virtual {v0, p1}, Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;->setIndicatorColor(I)V

    .line 320
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerMonth:Lcom/aigestudio/wheelpicker/widgets/WheelMonthPicker;

    invoke-virtual {v0, p1}, Lcom/aigestudio/wheelpicker/widgets/WheelMonthPicker;->setIndicatorColor(I)V

    .line 321
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerDay:Lcom/aigestudio/wheelpicker/widgets/WheelDayPicker;

    invoke-virtual {v0, p1}, Lcom/aigestudio/wheelpicker/widgets/WheelDayPicker;->setIndicatorColor(I)V

    return-void
.end method

.method public setIndicatorSize(I)V
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerYear:Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;

    invoke-virtual {v0, p1}, Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;->setIndicatorSize(I)V

    .line 305
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerMonth:Lcom/aigestudio/wheelpicker/widgets/WheelMonthPicker;

    invoke-virtual {v0, p1}, Lcom/aigestudio/wheelpicker/widgets/WheelMonthPicker;->setIndicatorSize(I)V

    .line 306
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerDay:Lcom/aigestudio/wheelpicker/widgets/WheelDayPicker;

    invoke-virtual {v0, p1}, Lcom/aigestudio/wheelpicker/widgets/WheelDayPicker;->setIndicatorSize(I)V

    return-void
.end method

.method public setItemAlign(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 386
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "You don\'t need to set item align forWheelDatePicker"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setItemAlignDay(I)V
    .locals 1

    .line 448
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerDay:Lcom/aigestudio/wheelpicker/widgets/WheelDayPicker;

    invoke-virtual {v0, p1}, Lcom/aigestudio/wheelpicker/widgets/WheelDayPicker;->setItemAlign(I)V

    return-void
.end method

.method public setItemAlignMonth(I)V
    .locals 1

    .line 438
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerMonth:Lcom/aigestudio/wheelpicker/widgets/WheelMonthPicker;

    invoke-virtual {v0, p1}, Lcom/aigestudio/wheelpicker/widgets/WheelMonthPicker;->setItemAlign(I)V

    return-void
.end method

.method public setItemAlignYear(I)V
    .locals 1

    .line 428
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerYear:Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;

    invoke-virtual {v0, p1}, Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;->setItemAlign(I)V

    return-void
.end method

.method public setItemSpace(I)V
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerYear:Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;

    invoke-virtual {v0, p1}, Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;->setItemSpace(I)V

    .line 277
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerMonth:Lcom/aigestudio/wheelpicker/widgets/WheelMonthPicker;

    invoke-virtual {v0, p1}, Lcom/aigestudio/wheelpicker/widgets/WheelMonthPicker;->setItemSpace(I)V

    .line 278
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerDay:Lcom/aigestudio/wheelpicker/widgets/WheelDayPicker;

    invoke-virtual {v0, p1}, Lcom/aigestudio/wheelpicker/widgets/WheelDayPicker;->setItemSpace(I)V

    return-void
.end method

.method public setItemTextColor(I)V
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerYear:Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;

    invoke-virtual {v0, p1}, Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;->setItemTextColor(I)V

    .line 246
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerMonth:Lcom/aigestudio/wheelpicker/widgets/WheelMonthPicker;

    invoke-virtual {v0, p1}, Lcom/aigestudio/wheelpicker/widgets/WheelMonthPicker;->setItemTextColor(I)V

    .line 247
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerDay:Lcom/aigestudio/wheelpicker/widgets/WheelDayPicker;

    invoke-virtual {v0, p1}, Lcom/aigestudio/wheelpicker/widgets/WheelDayPicker;->setItemTextColor(I)V

    return-void
.end method

.method public setItemTextSize(I)V
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerYear:Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;

    invoke-virtual {v0, p1}, Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;->setItemTextSize(I)V

    .line 262
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerMonth:Lcom/aigestudio/wheelpicker/widgets/WheelMonthPicker;

    invoke-virtual {v0, p1}, Lcom/aigestudio/wheelpicker/widgets/WheelMonthPicker;->setItemTextSize(I)V

    .line 263
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerDay:Lcom/aigestudio/wheelpicker/widgets/WheelDayPicker;

    invoke-virtual {v0, p1}, Lcom/aigestudio/wheelpicker/widgets/WheelDayPicker;->setItemTextSize(I)V

    return-void
.end method

.method public setMaximumWidthText(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 200
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "You don\'t need to set maximum width text forWheelDatePicker"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMaximumWidthTextPosition(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 214
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "You don\'t need to set maximum width textposition for WheelDatePicker"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMonth(I)V
    .locals 1

    .line 584
    iput p1, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mMonth:I

    .line 585
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerMonth:Lcom/aigestudio/wheelpicker/widgets/WheelMonthPicker;

    invoke-virtual {v0, p1}, Lcom/aigestudio/wheelpicker/widgets/WheelMonthPicker;->setSelectedMonth(I)V

    .line 586
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerDay:Lcom/aigestudio/wheelpicker/widgets/WheelDayPicker;

    invoke-virtual {v0, p1}, Lcom/aigestudio/wheelpicker/widgets/WheelDayPicker;->setMonth(I)V

    return-void
.end method

.method public setOnDateSelectedListener(Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker$OnDateSelectedListener;)V
    .locals 0

    .line 407
    iput-object p1, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mListener:Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker$OnDateSelectedListener;

    return-void
.end method

.method public setOnItemSelectedListener(Lcom/aigestudio/wheelpicker/WheelPicker$OnItemSelectedListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 131
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "You can not set OnItemSelectedListener forWheelDatePicker"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOnWheelChangeListener(Lcom/aigestudio/wheelpicker/WheelPicker$OnWheelChangeListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 186
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "WheelDatePicker unsupport setOnWheelChangeListener"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSameWidth(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 172
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "You don\'t need to set same width forWheelDatePicker"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSelectedDay(I)V
    .locals 1

    .line 547
    iput p1, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mDay:I

    .line 548
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerDay:Lcom/aigestudio/wheelpicker/widgets/WheelDayPicker;

    invoke-virtual {v0, p1}, Lcom/aigestudio/wheelpicker/widgets/WheelDayPicker;->setSelectedDay(I)V

    return-void
.end method

.method public setSelectedItemPosition(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 145
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "You can not set position of selected item forWheelDatePicker"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSelectedItemTextColor(I)V
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerYear:Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;

    invoke-virtual {v0, p1}, Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;->setSelectedItemTextColor(I)V

    .line 230
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerMonth:Lcom/aigestudio/wheelpicker/widgets/WheelMonthPicker;

    invoke-virtual {v0, p1}, Lcom/aigestudio/wheelpicker/widgets/WheelMonthPicker;->setSelectedItemTextColor(I)V

    .line 231
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerDay:Lcom/aigestudio/wheelpicker/widgets/WheelDayPicker;

    invoke-virtual {v0, p1}, Lcom/aigestudio/wheelpicker/widgets/WheelDayPicker;->setSelectedItemTextColor(I)V

    return-void
.end method

.method public setSelectedMonth(I)V
    .locals 1

    .line 530
    iput p1, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mMonth:I

    .line 531
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerMonth:Lcom/aigestudio/wheelpicker/widgets/WheelMonthPicker;

    invoke-virtual {v0, p1}, Lcom/aigestudio/wheelpicker/widgets/WheelMonthPicker;->setSelectedMonth(I)V

    .line 532
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerDay:Lcom/aigestudio/wheelpicker/widgets/WheelDayPicker;

    invoke-virtual {v0, p1}, Lcom/aigestudio/wheelpicker/widgets/WheelDayPicker;->setMonth(I)V

    return-void
.end method

.method public setSelectedYear(I)V
    .locals 1

    .line 513
    iput p1, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mYear:I

    .line 514
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerYear:Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;

    invoke-virtual {v0, p1}, Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;->setSelectedYear(I)V

    .line 515
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerDay:Lcom/aigestudio/wheelpicker/widgets/WheelDayPicker;

    invoke-virtual {v0, p1}, Lcom/aigestudio/wheelpicker/widgets/WheelDayPicker;->setYear(I)V

    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    .line 400
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerYear:Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;

    invoke-virtual {v0, p1}, Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;->setTypeface(Landroid/graphics/Typeface;)V

    .line 401
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerMonth:Lcom/aigestudio/wheelpicker/widgets/WheelMonthPicker;

    invoke-virtual {v0, p1}, Lcom/aigestudio/wheelpicker/widgets/WheelMonthPicker;->setTypeface(Landroid/graphics/Typeface;)V

    .line 402
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerDay:Lcom/aigestudio/wheelpicker/widgets/WheelDayPicker;

    invoke-virtual {v0, p1}, Lcom/aigestudio/wheelpicker/widgets/WheelDayPicker;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public setVisibleItemCount(I)V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerYear:Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;

    invoke-virtual {v0, p1}, Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;->setVisibleItemCount(I)V

    .line 112
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerMonth:Lcom/aigestudio/wheelpicker/widgets/WheelMonthPicker;

    invoke-virtual {v0, p1}, Lcom/aigestudio/wheelpicker/widgets/WheelMonthPicker;->setVisibleItemCount(I)V

    .line 113
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerDay:Lcom/aigestudio/wheelpicker/widgets/WheelDayPicker;

    invoke-virtual {v0, p1}, Lcom/aigestudio/wheelpicker/widgets/WheelDayPicker;->setVisibleItemCount(I)V

    return-void
.end method

.method public setYear(I)V
    .locals 1

    .line 572
    iput p1, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mYear:I

    .line 573
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerYear:Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;

    invoke-virtual {v0, p1}, Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;->setSelectedYear(I)V

    .line 574
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerDay:Lcom/aigestudio/wheelpicker/widgets/WheelDayPicker;

    invoke-virtual {v0, p1}, Lcom/aigestudio/wheelpicker/widgets/WheelDayPicker;->setYear(I)V

    return-void
.end method

.method public setYearAndMonth(II)V
    .locals 1

    .line 558
    iput p1, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mYear:I

    .line 559
    iput p2, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mMonth:I

    .line 560
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerYear:Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;

    invoke-virtual {v0, p1}, Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;->setSelectedYear(I)V

    .line 561
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerMonth:Lcom/aigestudio/wheelpicker/widgets/WheelMonthPicker;

    invoke-virtual {v0, p2}, Lcom/aigestudio/wheelpicker/widgets/WheelMonthPicker;->setSelectedMonth(I)V

    .line 562
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerDay:Lcom/aigestudio/wheelpicker/widgets/WheelDayPicker;

    invoke-virtual {v0, p1, p2}, Lcom/aigestudio/wheelpicker/widgets/WheelDayPicker;->setYearAndMonth(II)V

    return-void
.end method

.method public setYearEnd(I)V
    .locals 1

    .line 503
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerYear:Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;

    invoke-virtual {v0, p1}, Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;->setYearEnd(I)V

    return-void
.end method

.method public setYearFrame(II)V
    .locals 1

    .line 483
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerYear:Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;

    invoke-virtual {v0, p1, p2}, Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;->setYearFrame(II)V

    return-void
.end method

.method public setYearStart(I)V
    .locals 1

    .line 493
    iget-object v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelDatePicker;->mPickerYear:Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;

    invoke-virtual {v0, p1}, Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;->setYearStart(I)V

    return-void
.end method
