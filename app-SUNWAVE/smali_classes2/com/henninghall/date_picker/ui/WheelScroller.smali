.class public Lcom/henninghall/date_picker/ui/WheelScroller;
.super Ljava/lang/Object;
.source "WheelScroller.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public scroll(Lcom/henninghall/date_picker/wheels/Wheel;I)V
    .locals 3

    .line 9
    iget-object p1, p1, Lcom/henninghall/date_picker/wheels/Wheel;->picker:Lcom/henninghall/date_picker/pickers/Picker;

    .line 10
    invoke-interface {p1}, Lcom/henninghall/date_picker/pickers/Picker;->getValue()I

    move-result v0

    .line 11
    invoke-interface {p1}, Lcom/henninghall/date_picker/pickers/Picker;->getMaxValue()I

    move-result v1

    .line 12
    invoke-interface {p1}, Lcom/henninghall/date_picker/pickers/Picker;->getWrapSelectorWheel()Z

    move-result v2

    add-int/2addr v0, p2

    if-le v0, v1, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 15
    rem-int/2addr v0, v1

    invoke-interface {p1, v0}, Lcom/henninghall/date_picker/pickers/Picker;->smoothScrollToValue(I)V

    :cond_1
    return-void
.end method
