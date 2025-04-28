.class public Lcom/henninghall/date_picker/wheels/MinutesWheel;
.super Lcom/henninghall/date_picker/wheels/Wheel;
.source "MinutesWheel.java"


# direct methods
.method public constructor <init>(Lcom/henninghall/date_picker/pickers/Picker;Lcom/henninghall/date_picker/State;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/henninghall/date_picker/wheels/Wheel;-><init>(Lcom/henninghall/date_picker/pickers/Picker;Lcom/henninghall/date_picker/State;)V

    return-void
.end method


# virtual methods
.method public getFormatPattern()Ljava/lang/String;
    .locals 1

    const-string v0, "mm"

    return-object v0
.end method

.method public getTextAlign()Landroid/graphics/Paint$Align;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/henninghall/date_picker/wheels/MinutesWheel;->state:Lcom/henninghall/date_picker/State;

    iget-object v0, v0, Lcom/henninghall/date_picker/State;->derived:Lcom/henninghall/date_picker/DerivedData;

    invoke-virtual {v0}, Lcom/henninghall/date_picker/DerivedData;->hasOnly2Wheels()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    :goto_0
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

    .line 21
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 22
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/16 v2, 0xc

    const/4 v3, 0x0

    .line 24
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    :goto_0
    const/16 v4, 0x3c

    if-ge v3, v4, :cond_0

    .line 26
    iget-object v4, p0, Lcom/henninghall/date_picker/wheels/MinutesWheel;->format:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    iget-object v4, p0, Lcom/henninghall/date_picker/wheels/MinutesWheel;->state:Lcom/henninghall/date_picker/State;

    invoke-virtual {v4}, Lcom/henninghall/date_picker/State;->getMinuteInterval()I

    move-result v4

    invoke-virtual {v0, v2, v4}, Ljava/util/Calendar;->add(II)V

    .line 25
    iget-object v4, p0, Lcom/henninghall/date_picker/wheels/MinutesWheel;->state:Lcom/henninghall/date_picker/State;

    invoke-virtual {v4}, Lcom/henninghall/date_picker/State;->getMinuteInterval()I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public visible()Z
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/henninghall/date_picker/wheels/MinutesWheel;->state:Lcom/henninghall/date_picker/State;

    invoke-virtual {v0}, Lcom/henninghall/date_picker/State;->getMode()Lcom/henninghall/date_picker/models/Mode;

    move-result-object v0

    sget-object v1, Lcom/henninghall/date_picker/models/Mode;->date:Lcom/henninghall/date_picker/models/Mode;

    if-eq v0, v1, :cond_0

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
