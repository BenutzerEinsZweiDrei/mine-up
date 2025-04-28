.class Lnet/time4j/format/TimeSpanFormatter$LiteralItem;
.super Lnet/time4j/format/TimeSpanFormatter$FormatItem;
.source "TimeSpanFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/format/TimeSpanFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LiteralItem"
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
.field private final literal:Ljava/lang/String;


# direct methods
.method private constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 1168
    invoke-direct {p0, p1}, Lnet/time4j/format/TimeSpanFormatter$FormatItem;-><init>(I)V

    .line 1170
    iput-object p2, p0, Lnet/time4j/format/TimeSpanFormatter$LiteralItem;->literal:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1146
    invoke-direct {p0, p1, v0}, Lnet/time4j/format/TimeSpanFormatter$LiteralItem;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lnet/time4j/format/TimeSpanFormatter$1;)V
    .locals 0

    .line 1136
    invoke-direct {p0, p1}, Lnet/time4j/format/TimeSpanFormatter$LiteralItem;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1154
    invoke-direct {p0, v0}, Lnet/time4j/format/TimeSpanFormatter$FormatItem;-><init>(I)V

    if-nez p2, :cond_1

    .line 1156
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 1157
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Literal is empty."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1160
    :cond_1
    :goto_0
    iput-object p1, p0, Lnet/time4j/format/TimeSpanFormatter$LiteralItem;->literal:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ZLnet/time4j/format/TimeSpanFormatter$1;)V
    .locals 0

    .line 1136
    invoke-direct {p0, p1, p2}, Lnet/time4j/format/TimeSpanFormatter$LiteralItem;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method getMinWidth()I
    .locals 1

    .line 1212
    iget-object v0, p0, Lnet/time4j/format/TimeSpanFormatter$LiteralItem;->literal:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method parse(Ljava/util/Map;Ljava/lang/CharSequence;I)I
    .locals 4
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

    .line 1193
    iget-object p1, p0, Lnet/time4j/format/TimeSpanFormatter$LiteralItem;->literal:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, p3

    .line 1195
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {p0}, Lnet/time4j/format/TimeSpanFormatter$LiteralItem;->getReserved()I

    move-result v1

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_0

    not-int p1, p3

    return p1

    :cond_0
    move v0, p3

    :goto_0
    if-ge v0, p1, :cond_2

    .line 1200
    invoke-interface {p2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    iget-object v2, p0, Lnet/time4j/format/TimeSpanFormatter$LiteralItem;->literal:Ljava/lang/String;

    sub-int v3, v0, p3

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v1, v2, :cond_1

    not-int p1, p3

    return p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return p1
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

    .line 1182
    iget-object p1, p0, Lnet/time4j/format/TimeSpanFormatter$LiteralItem;->literal:Ljava/lang/String;

    invoke-interface {p2, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void
.end method

.method update(I)Lnet/time4j/format/TimeSpanFormatter$FormatItem;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lnet/time4j/format/TimeSpanFormatter$FormatItem<",
            "TU;>;"
        }
    .end annotation

    .line 1219
    new-instance v0, Lnet/time4j/format/TimeSpanFormatter$LiteralItem;

    iget-object v1, p0, Lnet/time4j/format/TimeSpanFormatter$LiteralItem;->literal:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lnet/time4j/format/TimeSpanFormatter$LiteralItem;-><init>(ILjava/lang/String;)V

    return-object v0
.end method
