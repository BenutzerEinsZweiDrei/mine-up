.class Lnet/time4j/format/TimeSpanFormatter$OptionalSectionItem;
.super Lnet/time4j/format/TimeSpanFormatter$FormatItem;
.source "TimeSpanFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/format/TimeSpanFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OptionalSectionItem"
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
.field private final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/time4j/format/TimeSpanFormatter$FormatItem<",
            "TU;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/time4j/format/TimeSpanFormatter$FormatItem<",
            "TU;>;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1344
    invoke-direct {p0, v0}, Lnet/time4j/format/TimeSpanFormatter$FormatItem;-><init>(I)V

    .line 1346
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1349
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lnet/time4j/format/TimeSpanFormatter$OrItem;->INSTANCE:Lnet/time4j/format/TimeSpanFormatter$OrItem;

    if-eq v0, v1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lnet/time4j/format/TimeSpanFormatter$OrItem;->INSTANCE:Lnet/time4j/format/TimeSpanFormatter$OrItem;

    if-eq v0, v1, :cond_0

    .line 1354
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/format/TimeSpanFormatter$OptionalSectionItem;->items:Ljava/util/List;

    return-void

    .line 1350
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Optional section must not start or end with an or-operator."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1347
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Optional section is empty."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic constructor <init>(Ljava/util/List;Lnet/time4j/format/TimeSpanFormatter$1;)V
    .locals 0

    .line 1334
    invoke-direct {p0, p1}, Lnet/time4j/format/TimeSpanFormatter$OptionalSectionItem;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method getMinWidth()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method isZero(Lnet/time4j/engine/TimeSpan;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/TimeSpan<",
            "-TU;>;)Z"
        }
    .end annotation

    .line 1446
    iget-object v0, p0, Lnet/time4j/format/TimeSpanFormatter$OptionalSectionItem;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/time4j/format/TimeSpanFormatter$FormatItem;

    .line 1447
    invoke-virtual {v1, p1}, Lnet/time4j/format/TimeSpanFormatter$FormatItem;->isZero(Lnet/time4j/engine/TimeSpan;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

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

    .line 1385
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1387
    iget-object v1, p0, Lnet/time4j/format/TimeSpanFormatter$OptionalSectionItem;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, p3

    :goto_0
    if-ge v2, v1, :cond_5

    .line 1388
    iget-object v4, p0, Lnet/time4j/format/TimeSpanFormatter$OptionalSectionItem;->items:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/time4j/format/TimeSpanFormatter$FormatItem;

    .line 1390
    sget-object v5, Lnet/time4j/format/TimeSpanFormatter$OrItem;->INSTANCE:Lnet/time4j/format/TimeSpanFormatter$OrItem;

    if-ne v4, v5, :cond_0

    goto :goto_3

    .line 1394
    :cond_0
    invoke-virtual {v4, v0, p2, v3}, Lnet/time4j/format/TimeSpanFormatter$FormatItem;->parse(Ljava/util/Map;Ljava/lang/CharSequence;I)I

    move-result v4

    if-gez v4, :cond_4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    const/4 v4, -0x1

    if-ge v2, v1, :cond_2

    .line 1399
    iget-object v5, p0, Lnet/time4j/format/TimeSpanFormatter$OptionalSectionItem;->items:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lnet/time4j/format/TimeSpanFormatter$OrItem;->INSTANCE:Lnet/time4j/format/TimeSpanFormatter$OrItem;

    if-ne v5, v6, :cond_1

    goto :goto_1

    :cond_2
    move v2, v4

    :goto_1
    if-ne v2, v4, :cond_3

    return p3

    .line 1407
    :cond_3
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    goto :goto_2

    :cond_4
    move v3, v4

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1415
    :cond_5
    :goto_3
    invoke-interface {p1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return v3
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

    .line 1366
    invoke-virtual {p0, p1}, Lnet/time4j/format/TimeSpanFormatter$OptionalSectionItem;->isZero(Lnet/time4j/engine/TimeSpan;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1367
    iget-object v0, p0, Lnet/time4j/format/TimeSpanFormatter$OptionalSectionItem;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/time4j/format/TimeSpanFormatter$FormatItem;

    .line 1368
    sget-object v2, Lnet/time4j/format/TimeSpanFormatter$OrItem;->INSTANCE:Lnet/time4j/format/TimeSpanFormatter$OrItem;

    if-ne v1, v2, :cond_0

    goto :goto_1

    .line 1371
    :cond_0
    invoke-virtual {v1, p1, p2}, Lnet/time4j/format/TimeSpanFormatter$FormatItem;->print(Lnet/time4j/engine/TimeSpan;Ljava/lang/Appendable;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
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

    .line 1430
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lnet/time4j/format/TimeSpanFormatter$OptionalSectionItem;->items:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1431
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 1434
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/time4j/format/TimeSpanFormatter$FormatItem;

    .line 1435
    invoke-virtual {v2, p1}, Lnet/time4j/format/TimeSpanFormatter$FormatItem;->update(I)Lnet/time4j/format/TimeSpanFormatter$FormatItem;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1436
    invoke-virtual {v2}, Lnet/time4j/format/TimeSpanFormatter$FormatItem;->getMinWidth()I

    move-result v2

    add-int/2addr p1, v2

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1439
    :cond_0
    new-instance p1, Lnet/time4j/format/TimeSpanFormatter$OptionalSectionItem;

    invoke-direct {p1, v0}, Lnet/time4j/format/TimeSpanFormatter$OptionalSectionItem;-><init>(Ljava/util/List;)V

    return-object p1
.end method
