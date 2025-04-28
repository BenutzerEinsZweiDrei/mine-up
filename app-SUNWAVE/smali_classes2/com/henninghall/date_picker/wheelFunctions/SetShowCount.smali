.class public Lcom/henninghall/date_picker/wheelFunctions/SetShowCount;
.super Ljava/lang/Object;
.source "SetShowCount.java"

# interfaces
.implements Lcom/henninghall/date_picker/wheelFunctions/WheelFunction;


# instance fields
.field private final count:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput p1, p0, Lcom/henninghall/date_picker/wheelFunctions/SetShowCount;->count:I

    return-void
.end method


# virtual methods
.method public apply(Lcom/henninghall/date_picker/wheels/Wheel;)V
    .locals 1

    .line 15
    iget-object p1, p1, Lcom/henninghall/date_picker/wheels/Wheel;->picker:Lcom/henninghall/date_picker/pickers/Picker;

    iget v0, p0, Lcom/henninghall/date_picker/wheelFunctions/SetShowCount;->count:I

    invoke-interface {p1, v0}, Lcom/henninghall/date_picker/pickers/Picker;->setShownCount(I)V

    return-void
.end method
