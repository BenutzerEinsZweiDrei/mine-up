.class Lnet/time4j/engine/StartOfDay$FixedStartOfDay;
.super Lnet/time4j/engine/StartOfDay;
.source "StartOfDay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/engine/StartOfDay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FixedStartOfDay"
.end annotation


# instance fields
.field private final deviation:I


# direct methods
.method private constructor <init>(I)V
    .locals 0

    .line 236
    invoke-direct {p0}, Lnet/time4j/engine/StartOfDay;-><init>()V

    .line 238
    iput p1, p0, Lnet/time4j/engine/StartOfDay$FixedStartOfDay;->deviation:I

    return-void
.end method

.method synthetic constructor <init>(ILnet/time4j/engine/StartOfDay$1;)V
    .locals 0

    .line 226
    invoke-direct {p0, p1}, Lnet/time4j/engine/StartOfDay$FixedStartOfDay;-><init>(I)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 259
    :cond_0
    instance-of v1, p1, Lnet/time4j/engine/StartOfDay$FixedStartOfDay;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 260
    check-cast p1, Lnet/time4j/engine/StartOfDay$FixedStartOfDay;

    .line 261
    iget v1, p0, Lnet/time4j/engine/StartOfDay$FixedStartOfDay;->deviation:I

    iget p1, p1, Lnet/time4j/engine/StartOfDay$FixedStartOfDay;->deviation:I

    if-ne v1, p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public getDeviation(Lnet/time4j/engine/CalendarDate;Lnet/time4j/tz/TZID;)I
    .locals 0

    .line 250
    iget p1, p0, Lnet/time4j/engine/StartOfDay$FixedStartOfDay;->deviation:I

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 271
    iget v0, p0, Lnet/time4j/engine/StartOfDay$FixedStartOfDay;->deviation:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FixedStartOfDay["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/time4j/engine/StartOfDay$FixedStartOfDay;->deviation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
