.class public abstract Lnet/time4j/engine/StartOfDay;
.super Ljava/lang/Object;
.source "StartOfDay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/time4j/engine/StartOfDay$FunctionalStartOfDay;,
        Lnet/time4j/engine/StartOfDay$FixedStartOfDay;
    }
.end annotation


# static fields
.field public static final EVENING:Lnet/time4j/engine/StartOfDay;

.field public static final MIDNIGHT:Lnet/time4j/engine/StartOfDay;

.field public static final MORNING:Lnet/time4j/engine/StartOfDay;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 56
    invoke-static {v0}, Lnet/time4j/engine/StartOfDay;->fixed(I)Lnet/time4j/engine/StartOfDay;

    move-result-object v0

    sput-object v0, Lnet/time4j/engine/StartOfDay;->MIDNIGHT:Lnet/time4j/engine/StartOfDay;

    const/16 v0, -0x5460

    .line 74
    invoke-static {v0}, Lnet/time4j/engine/StartOfDay;->fixed(I)Lnet/time4j/engine/StartOfDay;

    move-result-object v0

    sput-object v0, Lnet/time4j/engine/StartOfDay;->EVENING:Lnet/time4j/engine/StartOfDay;

    const/16 v0, 0x5460

    .line 86
    invoke-static {v0}, Lnet/time4j/engine/StartOfDay;->fixed(I)Lnet/time4j/engine/StartOfDay;

    move-result-object v0

    sput-object v0, Lnet/time4j/engine/StartOfDay;->MORNING:Lnet/time4j/engine/StartOfDay;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static definedBy(Lnet/time4j/engine/ChronoFunction;)Lnet/time4j/engine/StartOfDay;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/time4j/base/UnixTime;",
            ">(",
            "Lnet/time4j/engine/ChronoFunction<",
            "Lnet/time4j/engine/CalendarDate;",
            "TT;>;)",
            "Lnet/time4j/engine/StartOfDay;"
        }
    .end annotation

    .line 193
    new-instance v0, Lnet/time4j/engine/StartOfDay$FunctionalStartOfDay;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lnet/time4j/engine/StartOfDay$FunctionalStartOfDay;-><init>(Lnet/time4j/engine/ChronoFunction;Lnet/time4j/engine/StartOfDay$1;)V

    return-object v0
.end method

.method private static fixed(I)Lnet/time4j/engine/StartOfDay;
    .locals 2

    .line 220
    new-instance v0, Lnet/time4j/engine/StartOfDay$FixedStartOfDay;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lnet/time4j/engine/StartOfDay$FixedStartOfDay;-><init>(ILnet/time4j/engine/StartOfDay$1;)V

    return-object v0
.end method

.method public static ofFixedDeviation(I)Lnet/time4j/engine/StartOfDay;
    .locals 3

    if-nez p0, :cond_0

    .line 126
    sget-object p0, Lnet/time4j/engine/StartOfDay;->MIDNIGHT:Lnet/time4j/engine/StartOfDay;

    return-object p0

    :cond_0
    const/16 v0, -0x5460

    if-ne p0, v0, :cond_1

    .line 128
    sget-object p0, Lnet/time4j/engine/StartOfDay;->EVENING:Lnet/time4j/engine/StartOfDay;

    return-object p0

    :cond_1
    const v0, 0xa8c0

    if-gt p0, v0, :cond_2

    const v0, -0xa8c0

    if-le p0, v0, :cond_2

    .line 133
    new-instance v0, Lnet/time4j/engine/StartOfDay$FixedStartOfDay;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lnet/time4j/engine/StartOfDay$FixedStartOfDay;-><init>(ILnet/time4j/engine/StartOfDay$1;)V

    return-object v0

    .line 130
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start of day out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public abstract getDeviation(Lnet/time4j/engine/CalendarDate;Lnet/time4j/tz/TZID;)I
.end method
