.class Lnet/time4j/format/TimeSpanFormatter$FractionItem;
.super Lnet/time4j/format/TimeSpanFormatter$FormatItem;
.source "TimeSpanFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/format/TimeSpanFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FractionItem"
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
.field private final nanosecond:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field

.field private final width:I


# direct methods
.method private constructor <init>(IILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITU;)V"
        }
    .end annotation

    .line 759
    invoke-direct {p0, p1}, Lnet/time4j/format/TimeSpanFormatter$FormatItem;-><init>(I)V

    const/4 p1, 0x1

    if-lt p2, p1, :cond_0

    const/16 p1, 0x9

    if-gt p2, p1, :cond_0

    .line 766
    iput p2, p0, Lnet/time4j/format/TimeSpanFormatter$FractionItem;->width:I

    .line 767
    iput-object p3, p0, Lnet/time4j/format/TimeSpanFormatter$FractionItem;->nanosecond:Ljava/lang/Object;

    return-void

    .line 762
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Fraction width out of bounds: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic constructor <init>(IILjava/lang/Object;Lnet/time4j/format/TimeSpanFormatter$1;)V
    .locals 0

    .line 744
    invoke-direct {p0, p1, p2, p3}, Lnet/time4j/format/TimeSpanFormatter$FractionItem;-><init>(IILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method getMinWidth()I
    .locals 1

    .line 844
    iget v0, p0, Lnet/time4j/format/TimeSpanFormatter$FractionItem;->width:I

    return v0
.end method

.method isZero(Lnet/time4j/engine/TimeSpan;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/TimeSpan<",
            "-TU;>;)Z"
        }
    .end annotation

    .line 858
    iget-object v0, p0, Lnet/time4j/format/TimeSpanFormatter$FractionItem;->nanosecond:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lnet/time4j/engine/TimeSpan;->getPartialAmount(Ljava/lang/Object;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method parse(Ljava/util/Map;Ljava/lang/CharSequence;I)I
    .locals 7
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

    .line 805
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 809
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0}, Lnet/time4j/format/TimeSpanFormatter$FractionItem;->getReserved()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lnet/time4j/format/TimeSpanFormatter$FractionItem;->width:I

    add-int/2addr v2, p3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    move v2, p3

    move v3, v2

    :goto_0
    const/16 v4, 0x30

    if-ge v2, v1, :cond_0

    .line 813
    invoke-interface {p2, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-lt v5, v4, :cond_0

    const/16 v6, 0x39

    if-gt v5, v6, :cond_0

    .line 815
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-ne v3, p3, :cond_1

    not-int p1, p3

    return p1

    :cond_1
    const/4 p2, 0x0

    sub-int v1, v3, p3

    :goto_1
    rsub-int/lit8 v2, v1, 0x9

    if-ge p2, v2, :cond_2

    .line 827
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 830
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    .line 831
    iget-object v0, p0, Lnet/time4j/format/TimeSpanFormatter$FractionItem;->nanosecond:Ljava/lang/Object;

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 833
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    not-int p1, p3

    return p1

    :cond_4
    :goto_2
    return v3
.end method

.method print(Lnet/time4j/engine/TimeSpan;Ljava/lang/Appendable;)V
    .locals 6
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

    .line 779
    iget-object v0, p0, Lnet/time4j/format/TimeSpanFormatter$FractionItem;->nanosecond:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lnet/time4j/engine/TimeSpan;->getPartialAmount(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 780
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x9

    if-gt v1, v2, :cond_1

    .line 787
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    rsub-int/lit8 v5, v1, 0x9

    if-ge v4, v5, :cond_0

    const/16 v5, 0x30

    .line 790
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 793
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 794
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget v0, p0, Lnet/time4j/format/TimeSpanFormatter$FractionItem;->width:I

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void

    .line 783
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Too many nanoseconds, consider normalization: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
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

    .line 851
    new-instance v0, Lnet/time4j/format/TimeSpanFormatter$FractionItem;

    iget v1, p0, Lnet/time4j/format/TimeSpanFormatter$FractionItem;->width:I

    iget-object v2, p0, Lnet/time4j/format/TimeSpanFormatter$FractionItem;->nanosecond:Ljava/lang/Object;

    invoke-direct {v0, p1, v1, v2}, Lnet/time4j/format/TimeSpanFormatter$FractionItem;-><init>(IILjava/lang/Object;)V

    return-object v0
.end method
