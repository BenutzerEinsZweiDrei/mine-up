.class Lnet/time4j/calendar/CyclicYear$2;
.super Lnet/time4j/calendar/EastAsianYear;
.source "CyclicYear.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/time4j/calendar/CyclicYear;->inCycle(I)Lnet/time4j/calendar/EastAsianYear;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/time4j/calendar/CyclicYear;

.field final synthetic val$cycle:I


# direct methods
.method constructor <init>(Lnet/time4j/calendar/CyclicYear;I)V
    .locals 0

    .line 245
    iput-object p1, p0, Lnet/time4j/calendar/CyclicYear$2;->this$0:Lnet/time4j/calendar/CyclicYear;

    iput p2, p0, Lnet/time4j/calendar/CyclicYear$2;->val$cycle:I

    invoke-direct {p0}, Lnet/time4j/calendar/EastAsianYear;-><init>()V

    return-void
.end method


# virtual methods
.method public getElapsedCyclicYears()I
    .locals 2

    .line 248
    iget v0, p0, Lnet/time4j/calendar/CyclicYear$2;->val$cycle:I

    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v0, v0, 0x3c

    iget-object v1, p0, Lnet/time4j/calendar/CyclicYear$2;->this$0:Lnet/time4j/calendar/CyclicYear;

    invoke-virtual {v1}, Lnet/time4j/calendar/CyclicYear;->getNumber()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method
