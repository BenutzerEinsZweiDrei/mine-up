.class public Lcom/henninghall/date_picker/wheels/DateWheel;
.super Lcom/henninghall/date_picker/wheels/Wheel;
.source "DateWheel.java"


# direct methods
.method public constructor <init>(Lcom/henninghall/date_picker/pickers/Picker;Lcom/henninghall/date_picker/State;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/henninghall/date_picker/wheels/Wheel;-><init>(Lcom/henninghall/date_picker/pickers/Picker;Lcom/henninghall/date_picker/State;)V

    return-void
.end method


# virtual methods
.method public getFormatPattern()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/henninghall/date_picker/wheels/DateWheel;->state:Lcom/henninghall/date_picker/State;

    invoke-virtual {v0}, Lcom/henninghall/date_picker/State;->getLocaleLanguageTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/henninghall/date_picker/LocaleUtils;->getDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextAlign()Landroid/graphics/Paint$Align;
    .locals 1

    .line 49
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

    .line 19
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 20
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 21
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/4 v2, 0x5

    const/4 v3, 0x1

    .line 22
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    move v4, v3

    :goto_0
    const/16 v5, 0x1f

    if-gt v4, v5, :cond_0

    .line 26
    invoke-virtual {p0, v0}, Lcom/henninghall/date_picker/wheels/DateWheel;->getLocaleString(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->add(II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public visible()Z
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/henninghall/date_picker/wheels/DateWheel;->state:Lcom/henninghall/date_picker/State;

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

    const/4 v0, 0x1

    return v0
.end method
