.class Lnet/time4j/tz/SimpleUT;
.super Ljava/lang/Object;
.source "SimpleUT.java"

# interfaces
.implements Lnet/time4j/base/UnixTime;


# instance fields
.field private final nano:I

.field private final posix:J


# direct methods
.method private constructor <init>(JI)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-wide p1, p0, Lnet/time4j/tz/SimpleUT;->posix:J

    .line 44
    iput p3, p0, Lnet/time4j/tz/SimpleUT;->nano:I

    return-void
.end method

.method static previousTime(JI)Lnet/time4j/base/UnixTime;
    .locals 3

    .line 67
    new-instance v0, Lnet/time4j/tz/SimpleUT;

    if-nez p2, :cond_0

    const-wide/16 v1, 0x1

    sub-long/2addr p0, v1

    :cond_0
    if-nez p2, :cond_1

    const p2, 0x3b9ac9ff

    goto :goto_0

    :cond_1
    add-int/lit8 p2, p2, -0x1

    :goto_0
    invoke-direct {v0, p0, p1, p2}, Lnet/time4j/tz/SimpleUT;-><init>(JI)V

    return-object v0
.end method

.method static previousTime(Lnet/time4j/base/UnixTime;)Lnet/time4j/base/UnixTime;
    .locals 2

    .line 60
    invoke-interface {p0}, Lnet/time4j/base/UnixTime;->getPosixTime()J

    move-result-wide v0

    invoke-interface {p0}, Lnet/time4j/base/UnixTime;->getNanosecond()I

    move-result p0

    invoke-static {v0, v1, p0}, Lnet/time4j/tz/SimpleUT;->previousTime(JI)Lnet/time4j/base/UnixTime;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getNanosecond()I
    .locals 1

    .line 56
    iget v0, p0, Lnet/time4j/tz/SimpleUT;->nano:I

    return v0
.end method

.method public getPosixTime()J
    .locals 2

    .line 51
    iget-wide v0, p0, Lnet/time4j/tz/SimpleUT;->posix:J

    return-wide v0
.end method
