.class final Lnet/time4j/calendar/EastAsianYear$1;
.super Lnet/time4j/calendar/EastAsianYear;
.source "EastAsianYear.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/time4j/calendar/EastAsianYear;->forGregorian(I)Lnet/time4j/calendar/EastAsianYear;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$relatedGregorianYear:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 59
    iput p1, p0, Lnet/time4j/calendar/EastAsianYear$1;->val$relatedGregorianYear:I

    invoke-direct {p0}, Lnet/time4j/calendar/EastAsianYear;-><init>()V

    return-void
.end method


# virtual methods
.method public getElapsedCyclicYears()I
    .locals 2

    .line 62
    iget v0, p0, Lnet/time4j/calendar/EastAsianYear$1;->val$relatedGregorianYear:I

    const/16 v1, 0xa4c

    invoke-static {v0, v1}, Lnet/time4j/base/MathUtils;->safeAdd(II)I

    move-result v0

    return v0
.end method
