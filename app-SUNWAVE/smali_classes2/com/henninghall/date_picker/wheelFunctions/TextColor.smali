.class public Lcom/henninghall/date_picker/wheelFunctions/TextColor;
.super Ljava/lang/Object;
.source "TextColor.java"

# interfaces
.implements Lcom/henninghall/date_picker/wheelFunctions/WheelFunction;


# instance fields
.field private final color:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/henninghall/date_picker/wheelFunctions/TextColor;->color:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public apply(Lcom/henninghall/date_picker/wheels/Wheel;)V
    .locals 1

    .line 17
    iget-object p1, p1, Lcom/henninghall/date_picker/wheels/Wheel;->picker:Lcom/henninghall/date_picker/pickers/Picker;

    iget-object v0, p0, Lcom/henninghall/date_picker/wheelFunctions/TextColor;->color:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/henninghall/date_picker/pickers/Picker;->setTextColor(Ljava/lang/String;)V

    return-void
.end method
