.class public final Lnet/time4j/engine/TimeSpan$Item;
.super Ljava/lang/Object;
.source "TimeSpan.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/engine/TimeSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Item"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x15b74dc1556904ecL


# instance fields
.field private final amount:J

.field private final unit:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(JLjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTU;)V"
        }
    .end annotation

    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Missing chronological unit."

    .line 302
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 308
    iput-wide p1, p0, Lnet/time4j/engine/TimeSpan$Item;->amount:J

    .line 309
    iput-object p3, p0, Lnet/time4j/engine/TimeSpan$Item;->unit:Ljava/lang/Object;

    return-void

    .line 304
    :cond_0
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Temporal amount must be positive or zero: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public static of(JLjava/lang/Object;)Lnet/time4j/engine/TimeSpan$Item;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(JTU;)",
            "Lnet/time4j/engine/TimeSpan$Item<",
            "TU;>;"
        }
    .end annotation

    .line 338
    new-instance v0, Lnet/time4j/engine/TimeSpan$Item;

    invoke-direct {v0, p0, p1, p2}, Lnet/time4j/engine/TimeSpan$Item;-><init>(JLjava/lang/Object;)V

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 434
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 436
    iget-object p1, p0, Lnet/time4j/engine/TimeSpan$Item;->unit:Ljava/lang/Object;

    if-eqz p1, :cond_0

    iget-wide v0, p0, Lnet/time4j/engine/TimeSpan$Item;->amount:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-ltz p1, :cond_0

    return-void

    .line 440
    :cond_0
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Inconsistent state."

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 379
    :cond_0
    instance-of v1, p1, Lnet/time4j/engine/TimeSpan$Item;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 380
    const-class v1, Lnet/time4j/engine/TimeSpan$Item;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/engine/TimeSpan$Item;

    .line 381
    iget-wide v3, p0, Lnet/time4j/engine/TimeSpan$Item;->amount:J

    iget-wide v5, p1, Lnet/time4j/engine/TimeSpan$Item;->amount:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    iget-object v1, p0, Lnet/time4j/engine/TimeSpan$Item;->unit:Ljava/lang/Object;

    iget-object p1, p1, Lnet/time4j/engine/TimeSpan$Item;->unit:Ljava/lang/Object;

    .line 383
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public getAmount()J
    .locals 2

    .line 354
    iget-wide v0, p0, Lnet/time4j/engine/TimeSpan$Item;->amount:J

    return-wide v0
.end method

.method public getUnit()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TU;"
        }
    .end annotation

    .line 370
    iget-object v0, p0, Lnet/time4j/engine/TimeSpan$Item;->unit:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 394
    iget-object v0, p0, Lnet/time4j/engine/TimeSpan$Item;->unit:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1d

    .line 395
    iget-wide v1, p0, Lnet/time4j/engine/TimeSpan$Item;->amount:J

    const/16 v3, 0x20

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x50

    .line 416
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 417
    iget-wide v1, p0, Lnet/time4j/engine/TimeSpan$Item;->amount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7b

    .line 418
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 419
    iget-object v1, p0, Lnet/time4j/engine/TimeSpan$Item;->unit:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    .line 420
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 421
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
