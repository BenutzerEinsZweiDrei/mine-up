.class Lnet/time4j/format/TimeSpanFormatter$NumberItem;
.super Lnet/time4j/format/TimeSpanFormatter$FormatItem;
.source "TimeSpanFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/format/TimeSpanFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NumberItem"
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
.field private final maxWidth:I

.field private final minWidth:I

.field private final unit:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(IIILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIITU;)V"
        }
    .end annotation

    .line 630
    invoke-direct {p0, p1}, Lnet/time4j/format/TimeSpanFormatter$FormatItem;-><init>(I)V

    const/4 p1, 0x1

    if-lt p2, p1, :cond_2

    const/16 p1, 0x12

    if-gt p2, p1, :cond_2

    if-lt p3, p2, :cond_1

    if-gt p3, p1, :cond_0

    const-string p1, "Missing unit."

    .line 639
    invoke-static {p4, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 642
    iput p2, p0, Lnet/time4j/format/TimeSpanFormatter$NumberItem;->minWidth:I

    .line 643
    iput p3, p0, Lnet/time4j/format/TimeSpanFormatter$NumberItem;->maxWidth:I

    .line 644
    iput-object p4, p0, Lnet/time4j/format/TimeSpanFormatter$NumberItem;->unit:Ljava/lang/Object;

    return-void

    .line 637
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Max width out of bounds: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 635
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Max width smaller than min width."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 633
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Min width out of bounds: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic constructor <init>(IIILjava/lang/Object;Lnet/time4j/format/TimeSpanFormatter$1;)V
    .locals 0

    .line 613
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/time4j/format/TimeSpanFormatter$NumberItem;-><init>(IIILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method getAmount(Lnet/time4j/engine/TimeSpan;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/TimeSpan<",
            "-TU;>;)J"
        }
    .end annotation

    .line 732
    iget-object v0, p0, Lnet/time4j/format/TimeSpanFormatter$NumberItem;->unit:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lnet/time4j/engine/TimeSpan;->getPartialAmount(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method getMinWidth()I
    .locals 1

    .line 712
    iget v0, p0, Lnet/time4j/format/TimeSpanFormatter$NumberItem;->minWidth:I

    return v0
.end method

.method getUnit()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TU;"
        }
    .end annotation

    .line 738
    iget-object v0, p0, Lnet/time4j/format/TimeSpanFormatter$NumberItem;->unit:Ljava/lang/Object;

    return-object v0
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

    .line 726
    invoke-virtual {p0, p1}, Lnet/time4j/format/TimeSpanFormatter$NumberItem;->getAmount(Lnet/time4j/engine/TimeSpan;)J

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
    .locals 8
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

    .line 680
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {p0}, Lnet/time4j/format/TimeSpanFormatter$NumberItem;->getReserved()I

    move-result v1

    sub-int/2addr v0, v1

    const-wide/16 v1, 0x0

    move v3, p3

    move v4, v3

    :goto_0
    if-ge v3, v0, :cond_1

    .line 681
    invoke-interface {p2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0x30

    if-lt v5, v6, :cond_1

    const/16 v6, 0x39

    if-gt v5, v6, :cond_1

    sub-int v6, v3, p3

    .line 683
    iget v7, p0, Lnet/time4j/format/TimeSpanFormatter$NumberItem;->maxWidth:I

    if-lt v6, v7, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, -0x30

    const-wide/16 v6, 0xa

    mul-long/2addr v1, v6

    int-to-long v5, v5

    add-long/2addr v1, v5

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ne v4, p3, :cond_2

    not-int p1, p3

    return p1

    .line 698
    :cond_2
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    .line 699
    iget-object v0, p0, Lnet/time4j/format/TimeSpanFormatter$NumberItem;->unit:Ljava/lang/Object;

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 701
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    not-int p1, p3

    return p1

    :cond_4
    :goto_2
    return v4
.end method

.method print(Lnet/time4j/engine/TimeSpan;Ljava/lang/Appendable;)V
    .locals 3
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

    .line 656
    invoke-virtual {p0, p1}, Lnet/time4j/format/TimeSpanFormatter$NumberItem;->getAmount(Lnet/time4j/engine/TimeSpan;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 658
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget v2, p0, Lnet/time4j/format/TimeSpanFormatter$NumberItem;->maxWidth:I

    if-gt v1, v2, :cond_1

    .line 662
    iget p1, p0, Lnet/time4j/format/TimeSpanFormatter$NumberItem;->minWidth:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr p1, v1

    :goto_0
    if-lez p1, :cond_0

    const/16 v1, 0x30

    .line 663
    invoke-interface {p2, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 666
    :cond_0
    invoke-interface {p2, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void

    .line 659
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Too many digits for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/time4j/format/TimeSpanFormatter$NumberItem;->unit:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method update(I)Lnet/time4j/format/TimeSpanFormatter$FormatItem;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lnet/time4j/format/TimeSpanFormatter$FormatItem<",
            "TU;>;"
        }
    .end annotation

    .line 719
    new-instance v0, Lnet/time4j/format/TimeSpanFormatter$NumberItem;

    iget v1, p0, Lnet/time4j/format/TimeSpanFormatter$NumberItem;->minWidth:I

    iget v2, p0, Lnet/time4j/format/TimeSpanFormatter$NumberItem;->maxWidth:I

    iget-object v3, p0, Lnet/time4j/format/TimeSpanFormatter$NumberItem;->unit:Ljava/lang/Object;

    invoke-direct {v0, p1, v1, v2, v3}, Lnet/time4j/format/TimeSpanFormatter$NumberItem;-><init>(IIILjava/lang/Object;)V

    return-object v0
.end method
