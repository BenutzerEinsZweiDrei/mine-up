.class public Lcom/henninghall/date_picker/wheelFunctions/AnimateToDate;
.super Ljava/lang/Object;
.source "AnimateToDate.java"

# interfaces
.implements Lcom/henninghall/date_picker/wheelFunctions/WheelFunction;


# instance fields
.field private date:Ljava/util/Calendar;


# direct methods
.method public constructor <init>(Ljava/util/Calendar;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/henninghall/date_picker/wheelFunctions/AnimateToDate;->date:Ljava/util/Calendar;

    return-void
.end method


# virtual methods
.method public apply(Lcom/henninghall/date_picker/wheels/Wheel;)V
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/henninghall/date_picker/wheelFunctions/AnimateToDate;->date:Ljava/util/Calendar;

    invoke-virtual {p1, v0}, Lcom/henninghall/date_picker/wheels/Wheel;->animateToDate(Ljava/util/Calendar;)V

    return-void
.end method
