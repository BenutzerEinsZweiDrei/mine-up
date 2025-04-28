.class Lnet/time4j/calendar/CyclicYear$1;
.super Lnet/time4j/calendar/EastAsianYear;
.source "CyclicYear.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/time4j/calendar/CyclicYear;->inQingDynasty(Lnet/time4j/calendar/ChineseEra;)Lnet/time4j/calendar/EastAsianYear;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/time4j/calendar/CyclicYear;

.field final synthetic val$delta:I

.field final synthetic val$start:I


# direct methods
.method constructor <init>(Lnet/time4j/calendar/CyclicYear;II)V
    .locals 0

    .line 212
    iput-object p1, p0, Lnet/time4j/calendar/CyclicYear$1;->this$0:Lnet/time4j/calendar/CyclicYear;

    iput p2, p0, Lnet/time4j/calendar/CyclicYear$1;->val$start:I

    iput p3, p0, Lnet/time4j/calendar/CyclicYear$1;->val$delta:I

    invoke-direct {p0}, Lnet/time4j/calendar/EastAsianYear;-><init>()V

    return-void
.end method


# virtual methods
.method public getElapsedCyclicYears()I
    .locals 2

    .line 215
    iget v0, p0, Lnet/time4j/calendar/CyclicYear$1;->val$start:I

    iget v1, p0, Lnet/time4j/calendar/CyclicYear$1;->val$delta:I

    add-int/2addr v0, v1

    if-gez v1, :cond_0

    const/16 v1, 0xa88

    goto :goto_0

    :cond_0
    const/16 v1, 0xa4c

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method
