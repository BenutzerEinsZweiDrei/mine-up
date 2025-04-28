.class public Lcom/henninghall/date_picker/wheels/HourWheel;
.super Lcom/henninghall/date_picker/wheels/Wheel;
.source "HourWheel.java"


# instance fields
.field private final hourDisplayAdjustment:Lcom/henninghall/date_picker/HourDisplayBugWorkaround;


# direct methods
.method public constructor <init>(Lcom/henninghall/date_picker/pickers/Picker;Lcom/henninghall/date_picker/State;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/henninghall/date_picker/wheels/Wheel;-><init>(Lcom/henninghall/date_picker/pickers/Picker;Lcom/henninghall/date_picker/State;)V

    .line 19
    new-instance p1, Lcom/henninghall/date_picker/HourDisplayBugWorkaround;

    iget-object p2, p0, Lcom/henninghall/date_picker/wheels/HourWheel;->state:Lcom/henninghall/date_picker/State;

    invoke-direct {p1, p2}, Lcom/henninghall/date_picker/HourDisplayBugWorkaround;-><init>(Lcom/henninghall/date_picker/State;)V

    iput-object p1, p0, Lcom/henninghall/date_picker/wheels/HourWheel;->hourDisplayAdjustment:Lcom/henninghall/date_picker/HourDisplayBugWorkaround;

    return-void
.end method


# virtual methods
.method public getFormatPattern()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/henninghall/date_picker/wheels/HourWheel;->state:Lcom/henninghall/date_picker/State;

    iget-object v0, v0, Lcom/henninghall/date_picker/State;->derived:Lcom/henninghall/date_picker/DerivedData;

    invoke-virtual {v0}, Lcom/henninghall/date_picker/DerivedData;->usesAmPm()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "h"

    goto :goto_0

    :cond_0
    const-string v0, "HH"

    :goto_0
    return-object v0
.end method

.method public getTextAlign()Landroid/graphics/Paint$Align;
    .locals 1

    .line 61
    sget-object v0, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    return-object v0
.end method

.method public getValues()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 24
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    const/16 v1, 0x7d0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    .line 27
    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    iget-object v1, p0, Lcom/henninghall/date_picker/wheels/HourWheel;->state:Lcom/henninghall/date_picker/State;

    iget-object v1, v1, Lcom/henninghall/date_picker/State;->derived:Lcom/henninghall/date_picker/DerivedData;

    invoke-virtual {v1}, Lcom/henninghall/date_picker/DerivedData;->usesAmPm()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xc

    goto :goto_0

    :cond_0
    const/16 v1, 0x18

    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    .line 33
    iget-object v3, p0, Lcom/henninghall/date_picker/wheels/HourWheel;->format:Ljava/text/SimpleDateFormat;

    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v3, 0xb

    const/4 v4, 0x1

    .line 34
    invoke-virtual {v7, v3, v4}, Ljava/util/Calendar;->add(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method public toDisplayValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/henninghall/date_picker/wheels/HourWheel;->hourDisplayAdjustment:Lcom/henninghall/date_picker/HourDisplayBugWorkaround;

    invoke-virtual {v0, p1}, Lcom/henninghall/date_picker/HourDisplayBugWorkaround;->adjustValueIfNecessary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public visible()Z
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/henninghall/date_picker/wheels/HourWheel;->state:Lcom/henninghall/date_picker/State;

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
