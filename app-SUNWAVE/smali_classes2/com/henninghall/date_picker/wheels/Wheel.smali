.class public abstract Lcom/henninghall/date_picker/wheels/Wheel;
.super Ljava/lang/Object;
.source "Wheel.java"


# instance fields
.field public format:Ljava/text/SimpleDateFormat;

.field public picker:Lcom/henninghall/date_picker/pickers/Picker;

.field protected final state:Lcom/henninghall/date_picker/State;

.field private userSetValue:Ljava/util/Calendar;

.field private values:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/henninghall/date_picker/pickers/Picker;Lcom/henninghall/date_picker/State;)V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/henninghall/date_picker/wheels/Wheel;->values:Ljava/util/ArrayList;

    .line 35
    iput-object p2, p0, Lcom/henninghall/date_picker/wheels/Wheel;->state:Lcom/henninghall/date_picker/State;

    .line 36
    iput-object p1, p0, Lcom/henninghall/date_picker/wheels/Wheel;->picker:Lcom/henninghall/date_picker/pickers/Picker;

    .line 37
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-virtual {p0}, Lcom/henninghall/date_picker/wheels/Wheel;->getFormatPattern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/henninghall/date_picker/State;->getLocale()Ljava/util/Locale;

    move-result-object p2

    invoke-direct {v0, v1, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/henninghall/date_picker/wheels/Wheel;->format:Ljava/text/SimpleDateFormat;

    .line 38
    invoke-virtual {p0}, Lcom/henninghall/date_picker/wheels/Wheel;->getTextAlign()Landroid/graphics/Paint$Align;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/henninghall/date_picker/pickers/Picker;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 39
    invoke-virtual {p0}, Lcom/henninghall/date_picker/wheels/Wheel;->wrapSelectorWheel()Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/henninghall/date_picker/pickers/Picker;->setWrapSelectorWheel(Z)V

    return-void
.end method

.method private getDisplayValues(Ljava/util/ArrayList;)[Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 96
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 97
    invoke-virtual {p0, v1}, Lcom/henninghall/date_picker/wheels/Wheel;->toDisplayValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    .line 99
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method

.method private getFormat(Ljava/util/Locale;)Ljava/text/SimpleDateFormat;
    .locals 2

    .line 116
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-virtual {p0}, Lcom/henninghall/date_picker/wheels/Wheel;->getFormatPattern()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object v0
.end method

.method private getIndex()I
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/henninghall/date_picker/wheels/Wheel;->picker:Lcom/henninghall/date_picker/pickers/Picker;

    invoke-interface {v0}, Lcom/henninghall/date_picker/pickers/Picker;->getValue()I

    move-result v0

    return v0
.end method

.method private getIndexOfDate(Ljava/util/Calendar;)I
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/henninghall/date_picker/wheels/Wheel;->format:Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/henninghall/date_picker/wheels/Wheel;->state:Lcom/henninghall/date_picker/State;

    invoke-virtual {v1}, Lcom/henninghall/date_picker/State;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 44
    iget-object v0, p0, Lcom/henninghall/date_picker/wheels/Wheel;->values:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/henninghall/date_picker/wheels/Wheel;->format:Ljava/text/SimpleDateFormat;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method private getString(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    .line 124
    invoke-direct {p0, p2}, Lcom/henninghall/date_picker/wheels/Wheel;->getFormat(Ljava/util/Locale;)Ljava/text/SimpleDateFormat;

    move-result-object p2

    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private init()V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/henninghall/date_picker/wheels/Wheel;->picker:Lcom/henninghall/date_picker/pickers/Picker;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/henninghall/date_picker/pickers/Picker;->setMinValue(I)V

    .line 104
    iget-object v0, p0, Lcom/henninghall/date_picker/wheels/Wheel;->picker:Lcom/henninghall/date_picker/pickers/Picker;

    invoke-interface {v0, v1}, Lcom/henninghall/date_picker/pickers/Picker;->setMaxValue(I)V

    .line 105
    invoke-virtual {p0}, Lcom/henninghall/date_picker/wheels/Wheel;->getValues()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/henninghall/date_picker/wheels/Wheel;->values:Ljava/util/ArrayList;

    .line 106
    iget-object v1, p0, Lcom/henninghall/date_picker/wheels/Wheel;->picker:Lcom/henninghall/date_picker/pickers/Picker;

    invoke-direct {p0, v0}, Lcom/henninghall/date_picker/wheels/Wheel;->getDisplayValues(Ljava/util/ArrayList;)[Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/henninghall/date_picker/pickers/Picker;->setDisplayedValues([Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/henninghall/date_picker/wheels/Wheel;->picker:Lcom/henninghall/date_picker/pickers/Picker;

    iget-object v1, p0, Lcom/henninghall/date_picker/wheels/Wheel;->values:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Lcom/henninghall/date_picker/pickers/Picker;->setMaxValue(I)V

    return-void
.end method


# virtual methods
.method public animateToDate(Ljava/util/Calendar;)V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/henninghall/date_picker/wheels/Wheel;->picker:Lcom/henninghall/date_picker/pickers/Picker;

    invoke-direct {p0, p1}, Lcom/henninghall/date_picker/wheels/Wheel;->getIndexOfDate(Ljava/util/Calendar;)I

    move-result p1

    invoke-interface {v0, p1}, Lcom/henninghall/date_picker/pickers/Picker;->smoothScrollToValue(I)V

    return-void
.end method

.method public getDisplayValue()Ljava/lang/String;
    .locals 1

    .line 91
    invoke-direct {p0}, Lcom/henninghall/date_picker/wheels/Wheel;->getIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/henninghall/date_picker/wheels/Wheel;->getValueAtIndex(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/henninghall/date_picker/wheels/Wheel;->toDisplayValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getFormatPattern()Ljava/lang/String;
.end method

.method public getHorizontalPadding()I
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/henninghall/date_picker/wheels/Wheel;->state:Lcom/henninghall/date_picker/State;

    invoke-virtual {v0}, Lcom/henninghall/date_picker/State;->getMode()Lcom/henninghall/date_picker/models/Mode;

    move-result-object v0

    .line 133
    iget-object v1, p0, Lcom/henninghall/date_picker/wheels/Wheel;->state:Lcom/henninghall/date_picker/State;

    iget-object v1, v1, Lcom/henninghall/date_picker/State;->derived:Lcom/henninghall/date_picker/DerivedData;

    invoke-virtual {v1}, Lcom/henninghall/date_picker/DerivedData;->hasOnly2Wheels()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xa

    return v0

    .line 134
    :cond_0
    sget-object v1, Lcom/henninghall/date_picker/wheels/Wheel$1;->$SwitchMap$com$henninghall$date_picker$models$Mode:[I

    invoke-virtual {v0}, Lcom/henninghall/date_picker/models/Mode;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x5

    return v0

    :cond_1
    const/16 v0, 0xf

    return v0
.end method

.method getLocaleString(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/henninghall/date_picker/wheels/Wheel;->state:Lcom/henninghall/date_picker/State;

    invoke-virtual {v0}, Lcom/henninghall/date_picker/State;->getLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/henninghall/date_picker/wheels/Wheel;->getString(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPastValue(I)Ljava/lang/String;
    .locals 2

    .line 57
    invoke-virtual {p0}, Lcom/henninghall/date_picker/wheels/Wheel;->visible()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/henninghall/date_picker/wheels/Wheel;->format:Ljava/text/SimpleDateFormat;

    iget-object v0, p0, Lcom/henninghall/date_picker/wheels/Wheel;->userSetValue:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/henninghall/date_picker/wheels/Wheel;->values:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 59
    invoke-direct {p0}, Lcom/henninghall/date_picker/wheels/Wheel;->getIndex()I

    move-result v1

    add-int/2addr v1, v0

    sub-int/2addr v1, p1

    rem-int/2addr v1, v0

    .line 60
    invoke-virtual {p0, v1}, Lcom/henninghall/date_picker/wheels/Wheel;->getValueAtIndex(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public abstract getTextAlign()Landroid/graphics/Paint$Align;
.end method

.method public getValue()Ljava/lang/String;
    .locals 2

    .line 52
    invoke-virtual {p0}, Lcom/henninghall/date_picker/wheels/Wheel;->visible()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/henninghall/date_picker/wheels/Wheel;->format:Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/henninghall/date_picker/wheels/Wheel;->userSetValue:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 53
    :cond_0
    invoke-direct {p0}, Lcom/henninghall/date_picker/wheels/Wheel;->getIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/henninghall/date_picker/wheels/Wheel;->getValueAtIndex(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValueAtIndex(I)Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/henninghall/date_picker/wheels/Wheel;->values:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public abstract getValues()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public refresh()V
    .locals 3

    .line 85
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-virtual {p0}, Lcom/henninghall/date_picker/wheels/Wheel;->getFormatPattern()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/henninghall/date_picker/wheels/Wheel;->state:Lcom/henninghall/date_picker/State;

    invoke-virtual {v2}, Lcom/henninghall/date_picker/State;->getLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/henninghall/date_picker/wheels/Wheel;->format:Ljava/text/SimpleDateFormat;

    .line 86
    invoke-virtual {p0}, Lcom/henninghall/date_picker/wheels/Wheel;->visible()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 87
    :cond_0
    invoke-direct {p0}, Lcom/henninghall/date_picker/wheels/Wheel;->init()V

    return-void
.end method

.method public setHorizontalPadding()V
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/henninghall/date_picker/wheels/Wheel;->picker:Lcom/henninghall/date_picker/pickers/Picker;

    invoke-virtual {p0}, Lcom/henninghall/date_picker/wheels/Wheel;->getHorizontalPadding()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/henninghall/date_picker/pickers/Picker;->setItemPaddingHorizontal(I)V

    return-void
.end method

.method public setValue(Ljava/util/Calendar;)V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/henninghall/date_picker/wheels/Wheel;->format:Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/henninghall/date_picker/wheels/Wheel;->state:Lcom/henninghall/date_picker/State;

    invoke-virtual {v1}, Lcom/henninghall/date_picker/State;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 74
    iput-object p1, p0, Lcom/henninghall/date_picker/wheels/Wheel;->userSetValue:Ljava/util/Calendar;

    .line 75
    invoke-direct {p0, p1}, Lcom/henninghall/date_picker/wheels/Wheel;->getIndexOfDate(Ljava/util/Calendar;)I

    move-result p1

    const/4 v0, -0x1

    if-le p1, v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/henninghall/date_picker/wheels/Wheel;->picker:Lcom/henninghall/date_picker/pickers/Picker;

    invoke-interface {v0}, Lcom/henninghall/date_picker/pickers/Picker;->getValue()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/henninghall/date_picker/wheels/Wheel;->picker:Lcom/henninghall/date_picker/pickers/Picker;

    invoke-interface {v0, p1}, Lcom/henninghall/date_picker/pickers/Picker;->setValue(I)V

    goto :goto_0

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/henninghall/date_picker/wheels/Wheel;->picker:Lcom/henninghall/date_picker/pickers/Picker;

    invoke-interface {v0, p1}, Lcom/henninghall/date_picker/pickers/Picker;->smoothScrollToValue(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public toDisplayValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method public updateVisibility()V
    .locals 2

    .line 111
    invoke-virtual {p0}, Lcom/henninghall/date_picker/wheels/Wheel;->visible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    .line 112
    :goto_0
    iget-object v1, p0, Lcom/henninghall/date_picker/wheels/Wheel;->picker:Lcom/henninghall/date_picker/pickers/Picker;

    invoke-interface {v1, v0}, Lcom/henninghall/date_picker/pickers/Picker;->setVisibility(I)V

    return-void
.end method

.method public abstract visible()Z
.end method

.method public abstract wrapSelectorWheel()Z
.end method
