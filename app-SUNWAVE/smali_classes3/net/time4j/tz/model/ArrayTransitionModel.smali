.class final Lnet/time4j/tz/model/ArrayTransitionModel;
.super Lnet/time4j/tz/model/TransitionModel;
.source "ArrayTransitionModel.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final serialVersionUID:J = -0x4910b749196b6eebL


# instance fields
.field private transient hash:I

.field private final transient negativeDST:Z

.field private final transient stdTransitions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/time4j/tz/ZonalTransition;",
            ">;"
        }
    .end annotation
.end field

.field private final transient transitions:[Lnet/time4j/tz/ZonalTransition;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/time4j/tz/ZonalTransition;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 66
    invoke-direct {p0, p1, v0, v0}, Lnet/time4j/tz/model/ArrayTransitionModel;-><init>(Ljava/util/List;ZZ)V

    return-void
.end method

.method constructor <init>(Ljava/util/List;ZZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/time4j/tz/ZonalTransition;",
            ">;ZZ)V"
        }
    .end annotation

    .line 75
    invoke-direct {p0}, Lnet/time4j/tz/model/TransitionModel;-><init>()V

    const/4 v0, 0x0

    .line 61
    iput v0, p0, Lnet/time4j/tz/model/ArrayTransitionModel;->hash:I

    .line 77
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 82
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 83
    new-array v1, v1, [Lnet/time4j/tz/ZonalTransition;

    .line 84
    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lnet/time4j/tz/ZonalTransition;

    .line 87
    array-length v2, v1

    move v3, v0

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v3, v2, :cond_2

    aget-object v6, v1, v3

    if-nez v4, :cond_1

    .line 88
    invoke-virtual {v6}, Lnet/time4j/tz/ZonalTransition;->getDaylightSavingOffset()I

    move-result v4

    if-gez v4, :cond_0

    goto :goto_1

    :cond_0
    move v4, v0

    goto :goto_2

    :cond_1
    :goto_1
    move v4, v5

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 91
    :cond_2
    iput-boolean v4, p0, Lnet/time4j/tz/model/ArrayTransitionModel;->negativeDST:Z

    if-eqz p2, :cond_3

    .line 94
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    :cond_3
    if-eqz p3, :cond_4

    .line 98
    invoke-static {v1, p1}, Lnet/time4j/tz/model/ArrayTransitionModel;->checkSanity([Lnet/time4j/tz/ZonalTransition;Ljava/util/List;)V

    .line 101
    :cond_4
    iput-object v1, p0, Lnet/time4j/tz/model/ArrayTransitionModel;->transitions:[Lnet/time4j/tz/ZonalTransition;

    .line 104
    invoke-static {v5}, Lnet/time4j/tz/model/TransitionModel;->getFutureMoment(I)J

    move-result-wide p1

    const-wide/16 v2, 0x0

    .line 105
    invoke-static {v1, v2, v3, p1, p2}, Lnet/time4j/tz/model/ArrayTransitionModel;->getTransitions([Lnet/time4j/tz/ZonalTransition;JJ)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/tz/model/ArrayTransitionModel;->stdTransitions:Ljava/util/List;

    return-void

    .line 78
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Missing timezone transitions."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static checkSanity([Lnet/time4j/tz/ZonalTransition;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lnet/time4j/tz/ZonalTransition;",
            "Ljava/util/List<",
            "Lnet/time4j/tz/ZonalTransition;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 416
    aget-object v0, p0, v0

    invoke-virtual {v0}, Lnet/time4j/tz/ZonalTransition;->getTotalOffset()I

    move-result v0

    const/4 v1, 0x1

    .line 418
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 419
    aget-object v2, p0, v1

    invoke-virtual {v2}, Lnet/time4j/tz/ZonalTransition;->getPreviousOffset()I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 427
    aget-object v0, p0, v1

    invoke-virtual {v0}, Lnet/time4j/tz/ZonalTransition;->getTotalOffset()I

    move-result v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 420
    :cond_0
    aget-object v0, p0, v1

    .line 421
    invoke-virtual {v0}, Lnet/time4j/tz/ZonalTransition;->getPosixTime()J

    move-result-wide v2

    sget-object v0, Lnet/time4j/scale/TimeScale;->POSIX:Lnet/time4j/scale/TimeScale;

    invoke-static {v2, v3, v0}, Lnet/time4j/Moment;->of(JLnet/time4j/scale/TimeScale;)Lnet/time4j/Moment;

    move-result-object v0

    .line 422
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Model inconsistency detected at: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, p0, v1

    .line 424
    invoke-virtual {p0}, Lnet/time4j/tz/ZonalTransition;->getPosixTime()J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ") "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " in transitions: "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    return-void
.end method

.method private static getTransitions([Lnet/time4j/tz/ZonalTransition;JJ)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lnet/time4j/tz/ZonalTransition;",
            "JJ)",
            "Ljava/util/List<",
            "Lnet/time4j/tz/ZonalTransition;",
            ">;"
        }
    .end annotation

    cmp-long v0, p1, p3

    if-gtz v0, :cond_5

    .line 443
    invoke-static {p1, p2, p0}, Lnet/time4j/tz/model/ArrayTransitionModel;->search(J[Lnet/time4j/tz/ZonalTransition;)I

    move-result v0

    .line 444
    invoke-static {p3, p4, p0}, Lnet/time4j/tz/model/ArrayTransitionModel;->search(J[Lnet/time4j/tz/ZonalTransition;)I

    move-result v1

    if-nez v1, :cond_0

    .line 447
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    if-lez v0, :cond_1

    add-int/lit8 v2, v0, -0x1

    .line 448
    aget-object v2, p0, v2

    invoke-virtual {v2}, Lnet/time4j/tz/ZonalTransition;->getPosixTime()J

    move-result-wide v2

    cmp-long p1, v2, p1

    if-nez p1, :cond_1

    add-int/lit8 v0, v0, -0x1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    .line 454
    aget-object p1, p0, v1

    invoke-virtual {p1}, Lnet/time4j/tz/ZonalTransition;->getPosixTime()J

    move-result-wide p1

    cmp-long p1, p1, p3

    if-nez p1, :cond_2

    add-int/lit8 v1, v1, -0x1

    :cond_2
    if-le v0, v1, :cond_3

    .line 459
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 461
    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    sub-int p2, v1, v0

    add-int/lit8 p2, p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    if-gt v0, v1, :cond_4

    .line 463
    aget-object p2, p0, v0

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 465
    :cond_4
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 440
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Start after end."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 543
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Serialization proxy required."

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static search(J[Lnet/time4j/tz/ZonalTransition;)I
    .locals 5

    .line 477
    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-gt v1, v0, :cond_1

    add-int v2, v1, v0

    .line 480
    div-int/lit8 v2, v2, 0x2

    .line 482
    aget-object v3, p2, v2

    invoke-virtual {v3}, Lnet/time4j/tz/ZonalTransition;->getPosixTime()J

    move-result-wide v3

    cmp-long v3, v3, p0

    if-gtz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    move v1, v2

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v2, -0x1

    move v0, v2

    goto :goto_0

    :cond_1
    return v1
.end method

.method private static searchLocal(J[Lnet/time4j/tz/ZonalTransition;)I
    .locals 7

    .line 500
    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-gt v1, v0, :cond_1

    add-int v2, v1, v0

    .line 503
    div-int/lit8 v2, v2, 0x2

    .line 504
    aget-object v3, p2, v2

    .line 505
    invoke-virtual {v3}, Lnet/time4j/tz/ZonalTransition;->getTotalOffset()I

    move-result v4

    invoke-virtual {v3}, Lnet/time4j/tz/ZonalTransition;->getPreviousOffset()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 507
    invoke-virtual {v3}, Lnet/time4j/tz/ZonalTransition;->getPosixTime()J

    move-result-wide v5

    int-to-long v3, v4

    add-long/2addr v5, v3

    cmp-long v3, v5, p0

    if-gtz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    move v1, v2

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v2, -0x1

    move v0, v2

    goto :goto_0

    :cond_1
    return v1
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 531
    new-instance v0, Lnet/time4j/tz/model/SPX;

    const/16 v1, 0x7e

    invoke-direct {v0, p0, v1}, Lnet/time4j/tz/model/SPX;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method


# virtual methods
.method dump(ILjava/lang/Appendable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 338
    iget-object v1, p0, Lnet/time4j/tz/model/ArrayTransitionModel;->transitions:[Lnet/time4j/tz/ZonalTransition;

    aget-object v1, v1, v0

    .line 339
    invoke-static {v1, p2}, Lnet/time4j/tz/model/TransitionModel;->dump(Lnet/time4j/tz/ZonalTransition;Ljava/lang/Appendable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public dump(Ljava/lang/Appendable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lnet/time4j/tz/model/ArrayTransitionModel;->transitions:[Lnet/time4j/tz/ZonalTransition;

    array-length v0, v0

    invoke-virtual {p0, v0, p1}, Lnet/time4j/tz/model/ArrayTransitionModel;->dump(ILjava/lang/Appendable;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 202
    :cond_0
    instance-of v0, p1, Lnet/time4j/tz/model/ArrayTransitionModel;

    if-eqz v0, :cond_1

    .line 203
    check-cast p1, Lnet/time4j/tz/model/ArrayTransitionModel;

    .line 204
    iget-object v0, p0, Lnet/time4j/tz/model/ArrayTransitionModel;->transitions:[Lnet/time4j/tz/ZonalTransition;

    iget-object p1, p1, Lnet/time4j/tz/model/ArrayTransitionModel;->transitions:[Lnet/time4j/tz/ZonalTransition;

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method equals(Lnet/time4j/tz/model/ArrayTransitionModel;II)Z
    .locals 3

    .line 358
    iget-object v0, p0, Lnet/time4j/tz/model/ArrayTransitionModel;->transitions:[Lnet/time4j/tz/ZonalTransition;

    array-length v0, v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 359
    iget-object v0, p1, Lnet/time4j/tz/model/ArrayTransitionModel;->transitions:[Lnet/time4j/tz/ZonalTransition;

    array-length v0, v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    const/4 v0, 0x0

    if-eq p2, p3, :cond_0

    return v0

    :cond_0
    move p3, v0

    :goto_0
    if-ge p3, p2, :cond_2

    .line 366
    iget-object v1, p0, Lnet/time4j/tz/model/ArrayTransitionModel;->transitions:[Lnet/time4j/tz/ZonalTransition;

    aget-object v1, v1, p3

    iget-object v2, p1, Lnet/time4j/tz/model/ArrayTransitionModel;->transitions:[Lnet/time4j/tz/ZonalTransition;

    aget-object v2, v2, p3

    invoke-virtual {v1, v2}, Lnet/time4j/tz/ZonalTransition;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public getConflictTransition(Lnet/time4j/base/GregorianDate;Lnet/time4j/base/WallTime;)Lnet/time4j/tz/ZonalTransition;
    .locals 1

    const/4 v0, 0x0

    .line 137
    invoke-virtual {p0, p1, p2, v0}, Lnet/time4j/tz/model/ArrayTransitionModel;->getConflictTransition(Lnet/time4j/base/GregorianDate;Lnet/time4j/base/WallTime;Lnet/time4j/tz/model/RuleBasedTransitionModel;)Lnet/time4j/tz/ZonalTransition;

    move-result-object p1

    return-object p1
.end method

.method getConflictTransition(Lnet/time4j/base/GregorianDate;Lnet/time4j/base/WallTime;Lnet/time4j/tz/model/RuleBasedTransitionModel;)Lnet/time4j/tz/ZonalTransition;
    .locals 5

    .line 255
    invoke-static {p1, p2}, Lnet/time4j/tz/model/TransitionModel;->toLocalSecs(Lnet/time4j/base/GregorianDate;Lnet/time4j/base/WallTime;)J

    move-result-wide v0

    .line 256
    iget-object p2, p0, Lnet/time4j/tz/model/ArrayTransitionModel;->transitions:[Lnet/time4j/tz/ZonalTransition;

    invoke-static {v0, v1, p2}, Lnet/time4j/tz/model/ArrayTransitionModel;->searchLocal(J[Lnet/time4j/tz/ZonalTransition;)I

    move-result p2

    .line 258
    iget-object v2, p0, Lnet/time4j/tz/model/ArrayTransitionModel;->transitions:[Lnet/time4j/tz/ZonalTransition;

    array-length v3, v2

    const/4 v4, 0x0

    if-ne p2, v3, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 262
    :cond_0
    invoke-virtual {p3, p1, v0, v1}, Lnet/time4j/tz/model/RuleBasedTransitionModel;->getConflictTransition(Lnet/time4j/base/GregorianDate;J)Lnet/time4j/tz/ZonalTransition;

    move-result-object v4

    :goto_0
    return-object v4

    .line 265
    :cond_1
    aget-object p1, v2, p2

    .line 267
    invoke-virtual {p1}, Lnet/time4j/tz/ZonalTransition;->isGap()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 269
    invoke-virtual {p1}, Lnet/time4j/tz/ZonalTransition;->getPosixTime()J

    move-result-wide p2

    invoke-virtual {p1}, Lnet/time4j/tz/ZonalTransition;->getPreviousOffset()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr p2, v2

    cmp-long p2, p2, v0

    if-gtz p2, :cond_3

    return-object p1

    .line 272
    :cond_2
    invoke-virtual {p1}, Lnet/time4j/tz/ZonalTransition;->isOverlap()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 274
    invoke-virtual {p1}, Lnet/time4j/tz/ZonalTransition;->getPosixTime()J

    move-result-wide p2

    invoke-virtual {p1}, Lnet/time4j/tz/ZonalTransition;->getTotalOffset()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr p2, v2

    cmp-long p2, p2, v0

    if-gtz p2, :cond_3

    return-object p1

    :cond_3
    return-object v4
.end method

.method public getInitialOffset()Lnet/time4j/tz/ZonalOffset;
    .locals 2

    .line 114
    iget-object v0, p0, Lnet/time4j/tz/model/ArrayTransitionModel;->transitions:[Lnet/time4j/tz/ZonalTransition;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 115
    invoke-virtual {v0}, Lnet/time4j/tz/ZonalTransition;->getPreviousOffset()I

    move-result v0

    .line 114
    invoke-static {v0}, Lnet/time4j/tz/ZonalOffset;->ofTotalSeconds(I)Lnet/time4j/tz/ZonalOffset;

    move-result-object v0

    return-object v0
.end method

.method getLastTransition()Lnet/time4j/tz/ZonalTransition;
    .locals 2

    .line 347
    iget-object v0, p0, Lnet/time4j/tz/model/ArrayTransitionModel;->transitions:[Lnet/time4j/tz/ZonalTransition;

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getNextTransition(Lnet/time4j/base/UnixTime;)Lnet/time4j/tz/ZonalTransition;
    .locals 2

    .line 144
    invoke-interface {p1}, Lnet/time4j/base/UnixTime;->getPosixTime()J

    move-result-wide v0

    iget-object p1, p0, Lnet/time4j/tz/model/ArrayTransitionModel;->transitions:[Lnet/time4j/tz/ZonalTransition;

    invoke-static {v0, v1, p1}, Lnet/time4j/tz/model/ArrayTransitionModel;->search(J[Lnet/time4j/tz/ZonalTransition;)I

    move-result p1

    .line 146
    iget-object v0, p0, Lnet/time4j/tz/model/ArrayTransitionModel;->transitions:[Lnet/time4j/tz/ZonalTransition;

    array-length v1, v0

    if-ne p1, v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    aget-object p1, v0, p1

    :goto_0
    return-object p1
.end method

.method public getStartTransition(Lnet/time4j/base/UnixTime;)Lnet/time4j/tz/ZonalTransition;
    .locals 2

    .line 122
    invoke-interface {p1}, Lnet/time4j/base/UnixTime;->getPosixTime()J

    move-result-wide v0

    iget-object p1, p0, Lnet/time4j/tz/model/ArrayTransitionModel;->transitions:[Lnet/time4j/tz/ZonalTransition;

    invoke-static {v0, v1, p1}, Lnet/time4j/tz/model/ArrayTransitionModel;->search(J[Lnet/time4j/tz/ZonalTransition;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 124
    :cond_0
    iget-object v0, p0, Lnet/time4j/tz/model/ArrayTransitionModel;->transitions:[Lnet/time4j/tz/ZonalTransition;

    add-int/lit8 p1, p1, -0x1

    aget-object p1, v0, p1

    :goto_0
    return-object p1
.end method

.method public getStdTransitions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/time4j/tz/ZonalTransition;",
            ">;"
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lnet/time4j/tz/model/ArrayTransitionModel;->stdTransitions:Ljava/util/List;

    return-object v0
.end method

.method public getTransitions(Lnet/time4j/base/UnixTime;Lnet/time4j/base/UnixTime;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/base/UnixTime;",
            "Lnet/time4j/base/UnixTime;",
            ")",
            "Ljava/util/List<",
            "Lnet/time4j/tz/ZonalTransition;",
            ">;"
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lnet/time4j/tz/model/ArrayTransitionModel;->transitions:[Lnet/time4j/tz/ZonalTransition;

    .line 178
    invoke-interface {p1}, Lnet/time4j/base/UnixTime;->getPosixTime()J

    move-result-wide v1

    .line 179
    invoke-interface {p2}, Lnet/time4j/base/UnixTime;->getPosixTime()J

    move-result-wide p1

    .line 176
    invoke-static {v0, v1, v2, p1, p2}, Lnet/time4j/tz/model/ArrayTransitionModel;->getTransitions([Lnet/time4j/tz/ZonalTransition;JJ)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getValidOffsets(Lnet/time4j/base/GregorianDate;Lnet/time4j/base/WallTime;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/base/GregorianDate;",
            "Lnet/time4j/base/WallTime;",
            ")",
            "Ljava/util/List<",
            "Lnet/time4j/tz/ZonalOffset;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 159
    invoke-virtual {p0, p1, p2, v0}, Lnet/time4j/tz/model/ArrayTransitionModel;->getValidOffsets(Lnet/time4j/base/GregorianDate;Lnet/time4j/base/WallTime;Lnet/time4j/tz/model/RuleBasedTransitionModel;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method getValidOffsets(Lnet/time4j/base/GregorianDate;Lnet/time4j/base/WallTime;Lnet/time4j/tz/model/RuleBasedTransitionModel;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/base/GregorianDate;",
            "Lnet/time4j/base/WallTime;",
            "Lnet/time4j/tz/model/RuleBasedTransitionModel;",
            ")",
            "Ljava/util/List<",
            "Lnet/time4j/tz/ZonalOffset;",
            ">;"
        }
    .end annotation

    .line 298
    invoke-static {p1, p2}, Lnet/time4j/tz/model/TransitionModel;->toLocalSecs(Lnet/time4j/base/GregorianDate;Lnet/time4j/base/WallTime;)J

    move-result-wide v0

    .line 299
    iget-object p2, p0, Lnet/time4j/tz/model/ArrayTransitionModel;->transitions:[Lnet/time4j/tz/ZonalTransition;

    invoke-static {v0, v1, p2}, Lnet/time4j/tz/model/ArrayTransitionModel;->searchLocal(J[Lnet/time4j/tz/ZonalTransition;)I

    move-result p2

    .line 301
    iget-object v2, p0, Lnet/time4j/tz/model/ArrayTransitionModel;->transitions:[Lnet/time4j/tz/ZonalTransition;

    array-length v3, v2

    if-ne p2, v3, :cond_1

    if-nez p3, :cond_0

    .line 303
    array-length p1, v2

    add-int/lit8 p1, p1, -0x1

    aget-object p1, v2, p1

    .line 305
    invoke-virtual {p1}, Lnet/time4j/tz/ZonalTransition;->getTotalOffset()I

    move-result p1

    invoke-static {p1}, Lnet/time4j/tz/model/TransitionModel;->toList(I)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 307
    :cond_0
    invoke-virtual {p3, p1, v0, v1}, Lnet/time4j/tz/model/RuleBasedTransitionModel;->getValidOffsets(Lnet/time4j/base/GregorianDate;J)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 311
    :cond_1
    aget-object p1, v2, p2

    .line 313
    invoke-virtual {p1}, Lnet/time4j/tz/ZonalTransition;->isGap()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 315
    invoke-virtual {p1}, Lnet/time4j/tz/ZonalTransition;->getPosixTime()J

    move-result-wide p2

    invoke-virtual {p1}, Lnet/time4j/tz/ZonalTransition;->getPreviousOffset()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr p2, v2

    cmp-long p2, p2, v0

    if-gtz p2, :cond_3

    .line 316
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 318
    :cond_2
    invoke-virtual {p1}, Lnet/time4j/tz/ZonalTransition;->isOverlap()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 320
    invoke-virtual {p1}, Lnet/time4j/tz/ZonalTransition;->getPosixTime()J

    move-result-wide p2

    invoke-virtual {p1}, Lnet/time4j/tz/ZonalTransition;->getTotalOffset()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr p2, v2

    cmp-long p2, p2, v0

    if-gtz p2, :cond_3

    .line 322
    invoke-virtual {p1}, Lnet/time4j/tz/ZonalTransition;->getTotalOffset()I

    move-result p2

    .line 323
    invoke-virtual {p1}, Lnet/time4j/tz/ZonalTransition;->getPreviousOffset()I

    move-result p1

    .line 321
    invoke-static {p2, p1}, Lnet/time4j/tz/model/TransitionModel;->toList(II)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 327
    :cond_3
    invoke-virtual {p1}, Lnet/time4j/tz/ZonalTransition;->getPreviousOffset()I

    move-result p1

    invoke-static {p1}, Lnet/time4j/tz/model/TransitionModel;->toList(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public hasNegativeDST()Z
    .locals 1

    .line 193
    iget-boolean v0, p0, Lnet/time4j/tz/model/ArrayTransitionModel;->negativeDST:Z

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 214
    iget v0, p0, Lnet/time4j/tz/model/ArrayTransitionModel;->hash:I

    if-nez v0, :cond_0

    .line 217
    iget-object v0, p0, Lnet/time4j/tz/model/ArrayTransitionModel;->transitions:[Lnet/time4j/tz/ZonalTransition;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 218
    iput v0, p0, Lnet/time4j/tz/model/ArrayTransitionModel;->hash:I

    :cond_0
    return v0
.end method

.method hashCode(I)I
    .locals 3

    .line 378
    iget-object v0, p0, Lnet/time4j/tz/model/ArrayTransitionModel;->transitions:[Lnet/time4j/tz/ZonalTransition;

    array-length v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 379
    new-array v0, p1, [Lnet/time4j/tz/ZonalTransition;

    .line 380
    iget-object v1, p0, Lnet/time4j/tz/model/ArrayTransitionModel;->transitions:[Lnet/time4j/tz/ZonalTransition;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 381
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 229
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[transition-count="

    .line 230
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    iget-object v1, p0, Lnet/time4j/tz/model/ArrayTransitionModel;->transitions:[Lnet/time4j/tz/ZonalTransition;

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",hash="

    .line 232
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    invoke-virtual {p0}, Lnet/time4j/tz/model/ArrayTransitionModel;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    .line 234
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 235
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method writeTransitions(ILjava/io/ObjectOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 407
    iget-object v0, p0, Lnet/time4j/tz/model/ArrayTransitionModel;->transitions:[Lnet/time4j/tz/ZonalTransition;

    invoke-static {v0, p1, p2}, Lnet/time4j/tz/model/SPX;->writeTransitions([Lnet/time4j/tz/ZonalTransition;ILjava/io/DataOutput;)V

    return-void
.end method

.method writeTransitions(Ljava/io/ObjectOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 392
    iget-object v0, p0, Lnet/time4j/tz/model/ArrayTransitionModel;->transitions:[Lnet/time4j/tz/ZonalTransition;

    array-length v0, v0

    invoke-virtual {p0, v0, p1}, Lnet/time4j/tz/model/ArrayTransitionModel;->writeTransitions(ILjava/io/ObjectOutput;)V

    return-void
.end method
