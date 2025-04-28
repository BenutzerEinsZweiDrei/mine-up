.class Lnet/time4j/format/TimeSpanFormatter$SeparatorItem;
.super Lnet/time4j/format/TimeSpanFormatter$FormatItem;
.source "TimeSpanFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/format/TimeSpanFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SeparatorItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U:",
        "Ljava/lang/Object;",
        ">",
        "Lnet/time4j/format/TimeSpanFormatter$FormatItem<",
        "TU;>;"
    }
.end annotation


# instance fields
.field private final alt:C

.field private final separator:C


# direct methods
.method private constructor <init>(CC)V
    .locals 1

    const/4 v0, 0x0

    .line 1011
    invoke-direct {p0, v0, p1, p2}, Lnet/time4j/format/TimeSpanFormatter$SeparatorItem;-><init>(ICC)V

    return-void
.end method

.method synthetic constructor <init>(CCLnet/time4j/format/TimeSpanFormatter$1;)V
    .locals 0

    .line 997
    invoke-direct {p0, p1, p2}, Lnet/time4j/format/TimeSpanFormatter$SeparatorItem;-><init>(CC)V

    return-void
.end method

.method private constructor <init>(ICC)V
    .locals 0

    .line 1020
    invoke-direct {p0, p1}, Lnet/time4j/format/TimeSpanFormatter$FormatItem;-><init>(I)V

    .line 1022
    iput-char p2, p0, Lnet/time4j/format/TimeSpanFormatter$SeparatorItem;->separator:C

    .line 1023
    iput-char p3, p0, Lnet/time4j/format/TimeSpanFormatter$SeparatorItem;->alt:C

    return-void
.end method


# virtual methods
.method getMinWidth()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method parse(Ljava/util/Map;Ljava/lang/CharSequence;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/CharSequence;",
            "I)I"
        }
    .end annotation

    .line 1046
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-virtual {p0}, Lnet/time4j/format/TimeSpanFormatter$SeparatorItem;->getReserved()I

    move-result v0

    sub-int/2addr p1, v0

    if-lt p3, p1, :cond_0

    not-int p1, p3

    return p1

    .line 1050
    :cond_0
    invoke-interface {p2, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    .line 1052
    iget-char p2, p0, Lnet/time4j/format/TimeSpanFormatter$SeparatorItem;->separator:C

    if-eq p1, p2, :cond_1

    iget-char p2, p0, Lnet/time4j/format/TimeSpanFormatter$SeparatorItem;->alt:C

    if-eq p1, p2, :cond_1

    not-int p1, p3

    return p1

    :cond_1
    add-int/lit8 p3, p3, 0x1

    return p3
.end method

.method print(Lnet/time4j/engine/TimeSpan;Ljava/lang/Appendable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/TimeSpan<",
            "-TU;>;",
            "Ljava/lang/Appendable;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1035
    iget-char p1, p0, Lnet/time4j/format/TimeSpanFormatter$SeparatorItem;->separator:C

    invoke-interface {p2, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    return-void
.end method

.method update(I)Lnet/time4j/format/TimeSpanFormatter$FormatItem;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lnet/time4j/format/TimeSpanFormatter$FormatItem<",
            "TU;>;"
        }
    .end annotation

    .line 1070
    new-instance v0, Lnet/time4j/format/TimeSpanFormatter$SeparatorItem;

    iget-char v1, p0, Lnet/time4j/format/TimeSpanFormatter$SeparatorItem;->separator:C

    iget-char v2, p0, Lnet/time4j/format/TimeSpanFormatter$SeparatorItem;->alt:C

    invoke-direct {v0, p1, v1, v2}, Lnet/time4j/format/TimeSpanFormatter$SeparatorItem;-><init>(ICC)V

    return-object v0
.end method
