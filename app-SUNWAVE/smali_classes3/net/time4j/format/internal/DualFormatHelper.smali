.class public Lnet/time4j/format/internal/DualFormatHelper;
.super Ljava/lang/Object;
.source "DualFormatHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toNumeral(Lnet/time4j/format/NumberSystem;CI)Ljava/lang/String;
    .locals 3

    .line 56
    invoke-virtual {p0}, Lnet/time4j/format/NumberSystem;->isDecimal()Z

    move-result v0

    if-eqz v0, :cond_2

    add-int/lit8 p1, p1, -0x30

    .line 58
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    if-nez p1, :cond_0

    return-object p0

    .line 64
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    .line 66
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 67
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/2addr v2, p1

    int-to-char v2, v2

    .line 68
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 71
    :cond_1
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 73
    :cond_2
    invoke-virtual {p0, p2}, Lnet/time4j/format/NumberSystem;->toNumeral(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
