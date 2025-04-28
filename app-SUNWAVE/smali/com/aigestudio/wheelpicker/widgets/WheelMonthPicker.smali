.class public Lcom/aigestudio/wheelpicker/widgets/WheelMonthPicker;
.super Lcom/aigestudio/wheelpicker/WheelPicker;
.source "WheelMonthPicker.java"

# interfaces
.implements Lcom/aigestudio/wheelpicker/widgets/IWheelMonthPicker;


# instance fields
.field private mSelectedMonth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1, v0}, Lcom/aigestudio/wheelpicker/widgets/WheelMonthPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/aigestudio/wheelpicker/WheelPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 p2, 0x1

    move v0, p2

    :goto_0
    const/16 v1, 0xc

    if-gt v0, v1, :cond_0

    .line 32
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 33
    :cond_0
    invoke-super {p0, p1}, Lcom/aigestudio/wheelpicker/WheelPicker;->setData(Ljava/util/List;)V

    .line 35
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    add-int/2addr p1, p2

    iput p1, p0, Lcom/aigestudio/wheelpicker/widgets/WheelMonthPicker;->mSelectedMonth:I

    .line 36
    invoke-direct {p0}, Lcom/aigestudio/wheelpicker/widgets/WheelMonthPicker;->updateSelectedYear()V

    return-void
.end method

.method private updateSelectedYear()V
    .locals 1

    .line 40
    iget v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelMonthPicker;->mSelectedMonth:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/aigestudio/wheelpicker/widgets/WheelMonthPicker;->setSelectedItemPosition(I)V

    return-void
.end method


# virtual methods
.method public getCurrentMonth()I
    .locals 2

    .line 61
    invoke-virtual {p0}, Lcom/aigestudio/wheelpicker/widgets/WheelMonthPicker;->getData()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/aigestudio/wheelpicker/widgets/WheelMonthPicker;->getCurrentItemPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getSelectedMonth()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelMonthPicker;->mSelectedMonth:I

    return v0
.end method

.method public setData(Ljava/util/List;)V
    .locals 1

    .line 45
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "You can not invoke setData in WheelMonthPicker"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSelectedMonth(I)V
    .locals 0

    .line 55
    iput p1, p0, Lcom/aigestudio/wheelpicker/widgets/WheelMonthPicker;->mSelectedMonth:I

    .line 56
    invoke-direct {p0}, Lcom/aigestudio/wheelpicker/widgets/WheelMonthPicker;->updateSelectedYear()V

    return-void
.end method
