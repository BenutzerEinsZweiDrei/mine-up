.class Lnet/time4j/sql/JDBCAdapter$SqlMomentRule;
.super Lnet/time4j/sql/JDBCAdapter;
.source "JDBCAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/sql/JDBCAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SqlMomentRule"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/time4j/sql/JDBCAdapter<",
        "Ljava/sql/Timestamp;",
        "Lnet/time4j/Moment;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 447
    invoke-direct {p0, v0}, Lnet/time4j/sql/JDBCAdapter;-><init>(Lnet/time4j/sql/JDBCAdapter$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/sql/JDBCAdapter$1;)V
    .locals 0

    .line 447
    invoke-direct {p0}, Lnet/time4j/sql/JDBCAdapter$SqlMomentRule;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic from(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 447
    check-cast p1, Lnet/time4j/Moment;

    invoke-virtual {p0, p1}, Lnet/time4j/sql/JDBCAdapter$SqlMomentRule;->from(Lnet/time4j/Moment;)Ljava/sql/Timestamp;

    move-result-object p1

    return-object p1
.end method

.method public from(Lnet/time4j/Moment;)Ljava/sql/Timestamp;
    .locals 5

    .line 466
    new-instance v0, Ljava/sql/Timestamp;

    invoke-virtual {p1}, Lnet/time4j/Moment;->getPosixTime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    invoke-static {v1, v2, v3, v4}, Lnet/time4j/base/MathUtils;->safeMultiply(JJ)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/sql/Timestamp;-><init>(J)V

    .line 467
    invoke-virtual {p1}, Lnet/time4j/Moment;->getNanosecond()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/sql/Timestamp;->setNanos(I)V

    return-object v0
.end method

.method public getSourceType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/sql/Timestamp;",
            ">;"
        }
    .end annotation

    .line 475
    const-class v0, Ljava/sql/Timestamp;

    return-object v0
.end method

.method public bridge synthetic translate(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 447
    check-cast p1, Ljava/sql/Timestamp;

    invoke-virtual {p0, p1}, Lnet/time4j/sql/JDBCAdapter$SqlMomentRule;->translate(Ljava/sql/Timestamp;)Lnet/time4j/Moment;

    move-result-object p1

    return-object p1
.end method

.method public translate(Ljava/sql/Timestamp;)Lnet/time4j/Moment;
    .locals 3

    .line 456
    :try_start_0
    invoke-virtual {p1}, Ljava/sql/Timestamp;->getTime()J

    move-result-wide v0

    const/16 v2, 0x3e8

    invoke-static {v0, v1, v2}, Lnet/time4j/base/MathUtils;->floorDivide(JI)J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/sql/Timestamp;->getNanos()I

    move-result p1

    sget-object v2, Lnet/time4j/scale/TimeScale;->POSIX:Lnet/time4j/scale/TimeScale;

    invoke-static {v0, v1, p1, v2}, Lnet/time4j/Moment;->of(JILnet/time4j/scale/TimeScale;)Lnet/time4j/Moment;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 458
    new-instance v0, Lnet/time4j/engine/ChronoException;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lnet/time4j/engine/ChronoException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method
