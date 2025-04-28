.class public Lcom/henninghall/date_picker/wheels/YearWheel;
.super Lcom/henninghall/date_picker/wheels/Wheel;
.source "YearWheel.java"


# instance fields
.field private defaultEndYear:I

.field private defaultStartYear:I


# direct methods
.method public constructor <init>(Lcom/henninghall/date_picker/pickers/Picker;Lcom/henninghall/date_picker/State;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/henninghall/date_picker/wheels/Wheel;-><init>(Lcom/henninghall/date_picker/pickers/Picker;Lcom/henninghall/date_picker/State;)V

    const/16 p1, 0x76c

    .line 20
    iput p1, p0, Lcom/henninghall/date_picker/wheels/YearWheel;->defaultStartYear:I

    const/16 p1, 0x834

    .line 21
    iput p1, p0, Lcom/henninghall/date_picker/wheels/YearWheel;->defaultEndYear:I

    return-void
.end method

.method private getEndYear()I
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/henninghall/date_picker/wheels/YearWheel;->state:Lcom/henninghall/date_picker/State;

    invoke-virtual {v0}, Lcom/henninghall/date_picker/State;->getMaximumDate()Ljava/util/Calendar;

    move-result-object v0

    if-nez v0, :cond_0

    .line 45
    iget v0, p0, Lcom/henninghall/date_picker/wheels/YearWheel;->defaultEndYear:I

    return v0

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/henninghall/date_picker/wheels/YearWheel;->state:Lcom/henninghall/date_picker/State;

    invoke-virtual {v0}, Lcom/henninghall/date_picker/State;->getMaximumDate()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method private getStartYear()I
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/henninghall/date_picker/wheels/YearWheel;->state:Lcom/henninghall/date_picker/State;

    invoke-virtual {v0}, Lcom/henninghall/date_picker/State;->getMinimumDate()Ljava/util/Calendar;

    move-result-object v0

    if-nez v0, :cond_0

    .line 52
    iget v0, p0, Lcom/henninghall/date_picker/wheels/YearWheel;->defaultStartYear:I

    return v0

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/henninghall/date_picker/wheels/YearWheel;->state:Lcom/henninghall/date_picker/State;

    invoke-virtual {v0}, Lcom/henninghall/date_picker/State;->getMinimumDate()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public getFormatPattern()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/henninghall/date_picker/wheels/YearWheel;->state:Lcom/henninghall/date_picker/State;

    invoke-virtual {v0}, Lcom/henninghall/date_picker/State;->getLocaleLanguageTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/henninghall/date_picker/LocaleUtils;->getYear(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextAlign()Landroid/graphics/Paint$Align;
    .locals 1

    .line 69
    sget-object v0, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    return-object v0
.end method

.method public getValues()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 27
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 29
    invoke-direct {p0}, Lcom/henninghall/date_picker/wheels/YearWheel;->getStartYear()I

    move-result v2

    .line 30
    invoke-direct {p0}, Lcom/henninghall/date_picker/wheels/YearWheel;->getEndYear()I

    move-result v3

    sub-int/2addr v3, v2

    const/4 v4, 0x1

    .line 33
    invoke-virtual {v1, v4, v2}, Ljava/util/Calendar;->set(II)V

    const/4 v2, 0x0

    :goto_0
    if-gt v2, v3, :cond_0

    .line 36
    invoke-virtual {p0, v1}, Lcom/henninghall/date_picker/wheels/YearWheel;->getLocaleString(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    invoke-virtual {v1, v4, v4}, Ljava/util/Calendar;->add(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public visible()Z
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/henninghall/date_picker/wheels/YearWheel;->state:Lcom/henninghall/date_picker/State;

    invoke-virtual {v0}, Lcom/henninghall/date_picker/State;->getMode()Lcom/henninghall/date_picker/models/Mode;

    move-result-object v0

    sget-object v1, Lcom/henninghall/date_picker/models/Mode;->date:Lcom/henninghall/date_picker/models/Mode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public wrapSelectorWheel()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
