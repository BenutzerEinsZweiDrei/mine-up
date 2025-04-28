.class Lnet/time4j/tz/NamedID;
.super Ljava/lang/Object;
.source "NamedID.java"

# interfaces
.implements Lnet/time4j/tz/TZID;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x43db7668d9733797L


# instance fields
.field private final tzid:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lnet/time4j/tz/NamedID;->tzid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public canonical()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lnet/time4j/tz/NamedID;->tzid:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 66
    instance-of v0, p1, Lnet/time4j/tz/NamedID;

    if-eqz v0, :cond_0

    .line 67
    check-cast p1, Lnet/time4j/tz/NamedID;

    .line 68
    iget-object v0, p0, Lnet/time4j/tz/NamedID;->tzid:Ljava/lang/String;

    iget-object p1, p1, Lnet/time4j/tz/NamedID;->tzid:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 78
    iget-object v0, p0, Lnet/time4j/tz/NamedID;->tzid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/time4j/tz/NamedID;->tzid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
