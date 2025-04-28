.class public Lcom/henninghall/date_picker/wheelFunctions/UpdateVisibility;
.super Ljava/lang/Object;
.source "UpdateVisibility.java"

# interfaces
.implements Lcom/henninghall/date_picker/wheelFunctions/WheelFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/henninghall/date_picker/wheels/Wheel;)V
    .locals 0

    .line 9
    invoke-virtual {p1}, Lcom/henninghall/date_picker/wheels/Wheel;->updateVisibility()V

    return-void
.end method
