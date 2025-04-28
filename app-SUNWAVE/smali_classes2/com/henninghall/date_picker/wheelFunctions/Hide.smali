.class public Lcom/henninghall/date_picker/wheelFunctions/Hide;
.super Ljava/lang/Object;
.source "Hide.java"

# interfaces
.implements Lcom/henninghall/date_picker/wheelFunctions/WheelFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/henninghall/date_picker/wheels/Wheel;)V
    .locals 1

    .line 11
    iget-object p1, p1, Lcom/henninghall/date_picker/wheels/Wheel;->picker:Lcom/henninghall/date_picker/pickers/Picker;

    const/16 v0, 0x8

    invoke-interface {p1, v0}, Lcom/henninghall/date_picker/pickers/Picker;->setVisibility(I)V

    return-void
.end method
