.class final enum Lnet/time4j/format/NumberSystem$15;
.super Lnet/time4j/format/NumberSystem;
.source "NumberSystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/format/NumberSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 774
    invoke-direct {p0, p1, p2, p3, v0}, Lnet/time4j/format/NumberSystem;-><init>(Ljava/lang/String;ILjava/lang/String;Lnet/time4j/format/NumberSystem$1;)V

    return-void
.end method


# virtual methods
.method public getDigits()Ljava/lang/String;
    .locals 1

    const-string v0, "\u0e50\u0e51\u0e52\u0e53\u0e54\u0e55\u0e56\u0e57\u0e58\u0e59"

    return-object v0
.end method

.method public isDecimal()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
