.class Lnet/time4j/TemporalType$MillisSinceUnixRule;
.super Lnet/time4j/TemporalType;
.source "TemporalType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/TemporalType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MillisSinceUnixRule"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/time4j/TemporalType<",
        "Ljava/lang/Long;",
        "Lnet/time4j/Moment;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 284
    invoke-direct {p0}, Lnet/time4j/TemporalType;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/TemporalType$1;)V
    .locals 0

    .line 284
    invoke-direct {p0}, Lnet/time4j/TemporalType$MillisSinceUnixRule;-><init>()V

    return-void
.end method


# virtual methods
.method public from(Lnet/time4j/Moment;)Ljava/lang/Long;
    .locals 4

    .line 302
    invoke-virtual {p1}, Lnet/time4j/Moment;->getPosixTime()J

    move-result-wide v0

    .line 303
    invoke-virtual {p1}, Lnet/time4j/Moment;->getNanosecond()I

    move-result p1

    const-wide/16 v2, 0x3e8

    .line 307
    invoke-static {v0, v1, v2, v3}, Lnet/time4j/base/MathUtils;->safeMultiply(JJ)J

    move-result-wide v0

    const v2, 0xf4240

    div-int/2addr p1, v2

    int-to-long v2, p1

    .line 306
    invoke-static {v0, v1, v2, v3}, Lnet/time4j/base/MathUtils;->safeAdd(JJ)J

    move-result-wide v0

    .line 305
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic from(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 284
    check-cast p1, Lnet/time4j/Moment;

    invoke-virtual {p0, p1}, Lnet/time4j/TemporalType$MillisSinceUnixRule;->from(Lnet/time4j/Moment;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public getSourceType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 315
    const-class v0, Ljava/lang/Long;

    return-object v0
.end method

.method public bridge synthetic translate(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 284
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lnet/time4j/TemporalType$MillisSinceUnixRule;->translate(Ljava/lang/Long;)Lnet/time4j/Moment;

    move-result-object p1

    return-object p1
.end method

.method public translate(Ljava/lang/Long;)Lnet/time4j/Moment;
    .locals 4

    .line 292
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/16 p1, 0x3e8

    .line 293
    invoke-static {v0, v1, p1}, Lnet/time4j/base/MathUtils;->floorDivide(JI)J

    move-result-wide v2

    .line 294
    invoke-static {v0, v1, p1}, Lnet/time4j/base/MathUtils;->floorModulo(JI)I

    move-result p1

    const v0, 0xf4240

    mul-int/2addr p1, v0

    .line 295
    sget-object v0, Lnet/time4j/scale/TimeScale;->POSIX:Lnet/time4j/scale/TimeScale;

    invoke-static {v2, v3, p1, v0}, Lnet/time4j/Moment;->of(JILnet/time4j/scale/TimeScale;)Lnet/time4j/Moment;

    move-result-object p1

    return-object p1
.end method
