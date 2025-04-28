.class final Lnet/time4j/tz/spi/WinZoneID;
.super Ljava/lang/Object;
.source "WinZoneID.java"

# interfaces
.implements Lnet/time4j/tz/TZID;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x38953c91e34abb05L


# instance fields
.field private final id:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-static {p1}, Lnet/time4j/tz/spi/WinZoneID;->check(Ljava/lang/String;)V

    .line 56
    iput-object p1, p0, Lnet/time4j/tz/spi/WinZoneID;->id:Ljava/lang/String;

    return-void
.end method

.method private static check(Ljava/lang/String;)V
    .locals 3

    const-string v0, "WINDOWS~"

    .line 99
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 100
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a windows zone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 112
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 113
    iget-object p1, p0, Lnet/time4j/tz/spi/WinZoneID;->id:Ljava/lang/String;

    invoke-static {p1}, Lnet/time4j/tz/spi/WinZoneID;->check(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public canonical()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lnet/time4j/tz/spi/WinZoneID;->id:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 74
    :cond_0
    instance-of v0, p1, Lnet/time4j/tz/spi/WinZoneID;

    if-eqz v0, :cond_1

    .line 75
    check-cast p1, Lnet/time4j/tz/spi/WinZoneID;

    .line 76
    iget-object v0, p0, Lnet/time4j/tz/spi/WinZoneID;->id:Ljava/lang/String;

    iget-object p1, p1, Lnet/time4j/tz/spi/WinZoneID;->id:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 86
    iget-object v0, p0, Lnet/time4j/tz/spi/WinZoneID;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lnet/time4j/tz/spi/WinZoneID;->id:Ljava/lang/String;

    return-object v0
.end method
