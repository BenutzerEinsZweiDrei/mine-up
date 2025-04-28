.class Lnet/time4j/format/TimeSpanFormatter$PluralItem;
.super Lnet/time4j/format/TimeSpanFormatter$FormatItem;
.source "TimeSpanFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/format/TimeSpanFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PluralItem"
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
.field private final minWidth:I

.field private final numItem:Lnet/time4j/format/TimeSpanFormatter$NumberItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/format/TimeSpanFormatter$NumberItem<",
            "TU;>;"
        }
    .end annotation
.end field

.field private final pluralForms:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lnet/time4j/format/PluralCategory;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final rules:Lnet/time4j/format/PluralRules;

.field private final sepItem:Lnet/time4j/format/TimeSpanFormatter$FormatItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/format/TimeSpanFormatter$FormatItem<",
            "TU;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(ILnet/time4j/format/TimeSpanFormatter$NumberItem;Lnet/time4j/format/TimeSpanFormatter$FormatItem;Lnet/time4j/format/PluralRules;Ljava/util/Map;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lnet/time4j/format/TimeSpanFormatter$NumberItem<",
            "TU;>;",
            "Lnet/time4j/format/TimeSpanFormatter$FormatItem<",
            "TU;>;",
            "Lnet/time4j/format/PluralRules;",
            "Ljava/util/Map<",
            "Lnet/time4j/format/PluralCategory;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 910
    invoke-direct {p0, p1}, Lnet/time4j/format/TimeSpanFormatter$FormatItem;-><init>(I)V

    .line 912
    iput-object p2, p0, Lnet/time4j/format/TimeSpanFormatter$PluralItem;->numItem:Lnet/time4j/format/TimeSpanFormatter$NumberItem;

    .line 913
    iput-object p3, p0, Lnet/time4j/format/TimeSpanFormatter$PluralItem;->sepItem:Lnet/time4j/format/TimeSpanFormatter$FormatItem;

    .line 914
    iput-object p4, p0, Lnet/time4j/format/TimeSpanFormatter$PluralItem;->rules:Lnet/time4j/format/PluralRules;

    .line 915
    iput-object p5, p0, Lnet/time4j/format/TimeSpanFormatter$PluralItem;->pluralForms:Ljava/util/Map;

    .line 916
    iput p6, p0, Lnet/time4j/format/TimeSpanFormatter$PluralItem;->minWidth:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Ljava/lang/String;Lnet/time4j/format/PluralRules;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;",
            "Ljava/lang/String;",
            "Lnet/time4j/format/PluralRules;",
            "Ljava/util/Map<",
            "Lnet/time4j/format/PluralCategory;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 883
    invoke-direct {p0, v0}, Lnet/time4j/format/TimeSpanFormatter$FormatItem;-><init>(I)V

    .line 885
    new-instance v0, Lnet/time4j/format/TimeSpanFormatter$NumberItem;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x12

    const/4 v6, 0x0

    move-object v1, v0

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lnet/time4j/format/TimeSpanFormatter$NumberItem;-><init>(IIILjava/lang/Object;Lnet/time4j/format/TimeSpanFormatter$1;)V

    iput-object v0, p0, Lnet/time4j/format/TimeSpanFormatter$PluralItem;->numItem:Lnet/time4j/format/TimeSpanFormatter$NumberItem;

    .line 886
    new-instance p1, Lnet/time4j/format/TimeSpanFormatter$LiteralItem;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p1, p2, v0, v1}, Lnet/time4j/format/TimeSpanFormatter$LiteralItem;-><init>(Ljava/lang/String;ZLnet/time4j/format/TimeSpanFormatter$1;)V

    iput-object p1, p0, Lnet/time4j/format/TimeSpanFormatter$PluralItem;->sepItem:Lnet/time4j/format/TimeSpanFormatter$FormatItem;

    .line 887
    iput-object p3, p0, Lnet/time4j/format/TimeSpanFormatter$PluralItem;->rules:Lnet/time4j/format/PluralRules;

    .line 888
    iput-object p4, p0, Lnet/time4j/format/TimeSpanFormatter$PluralItem;->pluralForms:Ljava/util/Map;

    .line 892
    invoke-interface {p4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const p2, 0x7fffffff

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 893
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p4

    if-ge p4, p2, :cond_0

    .line 894
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p2

    goto :goto_0

    .line 898
    :cond_1
    iput p2, p0, Lnet/time4j/format/TimeSpanFormatter$PluralItem;->minWidth:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/String;Lnet/time4j/format/PluralRules;Ljava/util/Map;Lnet/time4j/format/TimeSpanFormatter$1;)V
    .locals 0

    .line 864
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/time4j/format/TimeSpanFormatter$PluralItem;-><init>(Ljava/lang/Object;Ljava/lang/String;Lnet/time4j/format/PluralRules;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method getMinWidth()I
    .locals 1

    .line 976
    iget v0, p0, Lnet/time4j/format/TimeSpanFormatter$PluralItem;->minWidth:I

    return v0
.end method

.method isZero(Lnet/time4j/engine/TimeSpan;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/TimeSpan<",
            "-TU;>;)Z"
        }
    .end annotation

    .line 991
    iget-object v0, p0, Lnet/time4j/format/TimeSpanFormatter$PluralItem;->numItem:Lnet/time4j/format/TimeSpanFormatter$NumberItem;

    invoke-virtual {v0, p1}, Lnet/time4j/format/TimeSpanFormatter$NumberItem;->isZero(Lnet/time4j/engine/TimeSpan;)Z

    move-result p1

    return p1
.end method

.method parse(Ljava/util/Map;Ljava/lang/CharSequence;I)I
    .locals 6
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

    .line 943
    iget-object v0, p0, Lnet/time4j/format/TimeSpanFormatter$PluralItem;->numItem:Lnet/time4j/format/TimeSpanFormatter$NumberItem;

    invoke-virtual {v0, p1, p2, p3}, Lnet/time4j/format/TimeSpanFormatter$NumberItem;->parse(Ljava/util/Map;Ljava/lang/CharSequence;I)I

    move-result v0

    if-gez v0, :cond_0

    return v0

    .line 949
    :cond_0
    iget-object v1, p0, Lnet/time4j/format/TimeSpanFormatter$PluralItem;->sepItem:Lnet/time4j/format/TimeSpanFormatter$FormatItem;

    invoke-virtual {v1, p1, p2, v0}, Lnet/time4j/format/TimeSpanFormatter$FormatItem;->parse(Ljava/util/Map;Ljava/lang/CharSequence;I)I

    move-result v0

    if-gez v0, :cond_1

    return v0

    .line 955
    :cond_1
    iget-object v1, p0, Lnet/time4j/format/TimeSpanFormatter$PluralItem;->numItem:Lnet/time4j/format/TimeSpanFormatter$NumberItem;

    invoke-virtual {v1}, Lnet/time4j/format/TimeSpanFormatter$NumberItem;->getUnit()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 956
    iget-object p1, p0, Lnet/time4j/format/TimeSpanFormatter$PluralItem;->pluralForms:Ljava/util/Map;

    iget-object v3, p0, Lnet/time4j/format/TimeSpanFormatter$PluralItem;->rules:Lnet/time4j/format/PluralRules;

    invoke-virtual {v3, v1, v2}, Lnet/time4j/format/PluralRules;->getCategory(J)Lnet/time4j/format/PluralCategory;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 957
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int v2, v0, v1

    .line 959
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {p0}, Lnet/time4j/format/TimeSpanFormatter$PluralItem;->getReserved()I

    move-result v4

    sub-int/2addr v3, v4

    if-le v2, v3, :cond_2

    not-int p1, p3

    return p1

    :cond_2
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_4

    .line 964
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int v5, v0, v3

    invoke-interface {p2, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_3

    not-int p1, p3

    return p1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return v2
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

    .line 928
    iget-object v0, p0, Lnet/time4j/format/TimeSpanFormatter$PluralItem;->numItem:Lnet/time4j/format/TimeSpanFormatter$NumberItem;

    invoke-virtual {v0, p1, p2}, Lnet/time4j/format/TimeSpanFormatter$NumberItem;->print(Lnet/time4j/engine/TimeSpan;Ljava/lang/Appendable;)V

    .line 929
    iget-object v0, p0, Lnet/time4j/format/TimeSpanFormatter$PluralItem;->sepItem:Lnet/time4j/format/TimeSpanFormatter$FormatItem;

    invoke-virtual {v0, p1, p2}, Lnet/time4j/format/TimeSpanFormatter$FormatItem;->print(Lnet/time4j/engine/TimeSpan;Ljava/lang/Appendable;)V

    .line 930
    iget-object v0, p0, Lnet/time4j/format/TimeSpanFormatter$PluralItem;->rules:Lnet/time4j/format/PluralRules;

    iget-object v1, p0, Lnet/time4j/format/TimeSpanFormatter$PluralItem;->numItem:Lnet/time4j/format/TimeSpanFormatter$NumberItem;

    invoke-virtual {v1, p1}, Lnet/time4j/format/TimeSpanFormatter$NumberItem;->getAmount(Lnet/time4j/engine/TimeSpan;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lnet/time4j/format/PluralRules;->getCategory(J)Lnet/time4j/format/PluralCategory;

    move-result-object p1

    .line 931
    iget-object v0, p0, Lnet/time4j/format/TimeSpanFormatter$PluralItem;->pluralForms:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p2, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void
.end method

.method update(I)Lnet/time4j/format/TimeSpanFormatter$FormatItem;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lnet/time4j/format/TimeSpanFormatter$FormatItem<",
            "TU;>;"
        }
    .end annotation

    .line 983
    new-instance v7, Lnet/time4j/format/TimeSpanFormatter$PluralItem;

    iget-object v2, p0, Lnet/time4j/format/TimeSpanFormatter$PluralItem;->numItem:Lnet/time4j/format/TimeSpanFormatter$NumberItem;

    iget-object v3, p0, Lnet/time4j/format/TimeSpanFormatter$PluralItem;->sepItem:Lnet/time4j/format/TimeSpanFormatter$FormatItem;

    iget-object v4, p0, Lnet/time4j/format/TimeSpanFormatter$PluralItem;->rules:Lnet/time4j/format/PluralRules;

    iget-object v5, p0, Lnet/time4j/format/TimeSpanFormatter$PluralItem;->pluralForms:Ljava/util/Map;

    iget v6, p0, Lnet/time4j/format/TimeSpanFormatter$PluralItem;->minWidth:I

    move-object v0, v7

    move v1, p1

    invoke-direct/range {v0 .. v6}, Lnet/time4j/format/TimeSpanFormatter$PluralItem;-><init>(ILnet/time4j/format/TimeSpanFormatter$NumberItem;Lnet/time4j/format/TimeSpanFormatter$FormatItem;Lnet/time4j/format/PluralRules;Ljava/util/Map;I)V

    return-object v7
.end method
