.class final enum Lnet/time4j/format/NumberSystem$2;
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

    .line 106
    invoke-direct {p0, p1, p2, p3, v0}, Lnet/time4j/format/NumberSystem;-><init>(Ljava/lang/String;ILjava/lang/String;Lnet/time4j/format/NumberSystem$1;)V

    return-void
.end method


# virtual methods
.method public getDigits()Ljava/lang/String;
    .locals 1

    const-string v0, "\u0660\u0661\u0662\u0663\u0664\u0665\u0666\u0667\u0668\u0669"

    return-object v0
.end method

.method public isDecimal()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
