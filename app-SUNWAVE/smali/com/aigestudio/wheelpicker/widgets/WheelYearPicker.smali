.class public Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;
.super Lcom/aigestudio/wheelpicker/WheelPicker;
.source "WheelYearPicker.java"

# interfaces
.implements Lcom/aigestudio/wheelpicker/widgets/IWheelYearPicker;


# instance fields
.field private mSelectedYear:I

.field private mYearEnd:I

.field private mYearStart:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p1, v0}, Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/aigestudio/wheelpicker/WheelPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x3e8

    .line 21
    iput p1, p0, Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;->mYearStart:I

    const/16 p1, 0xbb8

    iput p1, p0, Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;->mYearEnd:I

    .line 31
    invoke-direct {p0}, Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;->updateYears()V

    .line 32
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iput p1, p0, Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;->mSelectedYear:I

    .line 33
    invoke-direct {p0}, Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;->updateSelectedYear()V

    return-void
.end method

.method private updateSelectedYear()V
    .locals 2

    .line 44
    iget v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;->mSelectedYear:I

    iget v1, p0, Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;->mYearStart:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;->setSelectedItemPosition(I)V

    return-void
.end method

.method private updateYears()V
    .locals 3

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 38
    iget v1, p0, Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;->mYearStart:I

    :goto_0
    iget v2, p0, Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;->mYearEnd:I

    if-gt v1, v2, :cond_0

    .line 39
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 40
    :cond_0
    invoke-super {p0, v0}, Lcom/aigestudio/wheelpicker/WheelPicker;->setData(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public getCurrentYear()I
    .locals 2

    .line 98
    invoke-virtual {p0}, Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;->getData()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;->getCurrentItemPosition()I

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

.method public getSelectedYear()I
    .locals 1

    .line 87
    iget v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;->mSelectedYear:I

    return v0
.end method

.method public getYearEnd()I
    .locals 1

    .line 76
    iget v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;->mYearEnd:I

    return v0
.end method

.method public getYearStart()I
    .locals 1

    .line 63
    iget v0, p0, Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;->mYearStart:I

    return v0
.end method

.method public setData(Ljava/util/List;)V
    .locals 1

    .line 49
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "You can not invoke setData in WheelYearPicker"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSelectedYear(I)V
    .locals 0

    .line 92
    iput p1, p0, Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;->mSelectedYear:I

    .line 93
    invoke-direct {p0}, Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;->updateSelectedYear()V

    return-void
.end method

.method public setYearEnd(I)V
    .locals 0

    .line 81
    iput p1, p0, Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;->mYearEnd:I

    .line 82
    invoke-direct {p0}, Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;->updateYears()V

    return-void
.end method

.method public setYearFrame(II)V
    .locals 0

    .line 54
    iput p1, p0, Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;->mYearStart:I

    .line 55
    iput p2, p0, Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;->mYearEnd:I

    .line 56
    invoke-virtual {p0}, Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;->getCurrentYear()I

    move-result p1

    iput p1, p0, Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;->mSelectedYear:I

    .line 57
    invoke-direct {p0}, Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;->updateYears()V

    .line 58
    invoke-direct {p0}, Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;->updateSelectedYear()V

    return-void
.end method

.method public setYearStart(I)V
    .locals 0

    .line 68
    iput p1, p0, Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;->mYearStart:I

    .line 69
    invoke-virtual {p0}, Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;->getCurrentYear()I

    move-result p1

    iput p1, p0, Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;->mSelectedYear:I

    .line 70
    invoke-direct {p0}, Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;->updateYears()V

    .line 71
    invoke-direct {p0}, Lcom/aigestudio/wheelpicker/widgets/WheelYearPicker;->updateSelectedYear()V

    return-void
.end method
