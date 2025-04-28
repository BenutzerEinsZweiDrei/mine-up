.class public final Lnet/time4j/MachineTime$Formatter;
.super Lnet/time4j/format/TimeSpanFormatter;
.source "MachineTime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/MachineTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Formatter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/time4j/format/TimeSpanFormatter<",
        "Ljava/util/concurrent/TimeUnit;",
        "Lnet/time4j/MachineTime<",
        "Ljava/util/concurrent/TimeUnit;",
        ">;>;"
    }
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1215
    const-class v0, Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0, v0, p1}, Lnet/time4j/format/TimeSpanFormatter;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public static ofPattern(Ljava/lang/String;)Lnet/time4j/MachineTime$Formatter;
    .locals 1

    .line 1433
    new-instance v0, Lnet/time4j/MachineTime$Formatter;

    invoke-direct {v0, p0}, Lnet/time4j/MachineTime$Formatter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method protected convert(Ljava/util/Map;Z)Lnet/time4j/MachineTime;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/lang/Long;",
            ">;Z)",
            "Lnet/time4j/MachineTime<",
            "Ljava/util/concurrent/TimeUnit;",
            ">;"
        }
    .end annotation

    .line 1520
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1521
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lnet/time4j/base/MathUtils;->safeCast(J)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1524
    :goto_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/16 v1, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1526
    sget-object v4, Lnet/time4j/MachineTime$1;->$SwitchMap$java$util$concurrent$TimeUnit:[I

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5}, Ljava/util/concurrent/TimeUnit;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    const/4 v6, 0x2

    if-eq v4, v6, :cond_2

    const/4 v6, 0x3

    if-eq v4, v6, :cond_1

    const/4 v6, 0x4

    if-eq v4, v6, :cond_4

    goto :goto_1

    :cond_1
    const/16 v5, 0x3c

    goto :goto_2

    :cond_2
    const/16 v5, 0xe10

    goto :goto_2

    :cond_3
    const v5, 0x15180

    .line 1542
    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    int-to-long v5, v5

    invoke-static {v3, v4, v5, v6}, Lnet/time4j/base/MathUtils;->safeMultiply(JJ)J

    move-result-wide v3

    add-long/2addr v1, v3

    goto :goto_1

    :cond_5
    if-eqz p2, :cond_6

    .line 1546
    invoke-static {v1, v2}, Lnet/time4j/base/MathUtils;->safeNegate(J)J

    move-result-wide v1

    neg-int v0, v0

    .line 1550
    :cond_6
    invoke-static {v1, v2, v0}, Lnet/time4j/MachineTime;->ofPosixUnits(JI)Lnet/time4j/MachineTime;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic convert(Ljava/util/Map;Z)Lnet/time4j/engine/TimeSpan;
    .locals 0

    .line 1209
    invoke-virtual {p0, p1, p2}, Lnet/time4j/MachineTime$Formatter;->convert(Ljava/util/Map;Z)Lnet/time4j/MachineTime;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic getUnit(C)Ljava/lang/Object;
    .locals 0

    .line 1209
    invoke-virtual {p0, p1}, Lnet/time4j/MachineTime$Formatter;->getUnit(C)Ljava/util/concurrent/TimeUnit;

    move-result-object p1

    return-object p1
.end method

.method protected getUnit(C)Ljava/util/concurrent/TimeUnit;
    .locals 3

    const/16 v0, 0x44

    if-eq p1, v0, :cond_4

    const/16 v0, 0x66

    if-eq p1, v0, :cond_3

    const/16 v0, 0x68

    if-eq p1, v0, :cond_2

    const/16 v0, 0x6d

    if-eq p1, v0, :cond_1

    const/16 v0, 0x73

    if-ne p1, v0, :cond_0

    .line 1565
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    return-object p1

    .line 1569
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported pattern symbol: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1563
    :cond_1
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    return-object p1

    .line 1561
    :cond_2
    sget-object p1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    return-object p1

    .line 1567
    :cond_3
    sget-object p1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    return-object p1

    .line 1559
    :cond_4
    sget-object p1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    return-object p1
.end method

.method public print(Lnet/time4j/engine/TimeSpan;Ljava/lang/Appendable;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/TimeSpan<",
            "-",
            "Ljava/util/concurrent/TimeUnit;",
            ">;",
            "Ljava/lang/Appendable;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1467
    invoke-virtual {p0}, Lnet/time4j/MachineTime$Formatter;->getPattern()Ljava/lang/String;

    move-result-object v0

    .line 1468
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1469
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    .line 1472
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x27

    if-ne v4, v5, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    if-ge v3, v1, :cond_2

    .line 1477
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_0

    add-int/lit8 v4, v3, 0x1

    if-ge v4, v1, :cond_2

    .line 1478
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v5, :cond_2

    move v3, v4

    goto :goto_1

    .line 1487
    :cond_1
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1491
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1492
    const-class v1, Ljava/util/concurrent/TimeUnit;

    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    const-string v2, "D"

    .line 1494
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1495
    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_4
    const-string v2, "h"

    .line 1497
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1498
    sget-object v2, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_5
    const-string v2, "m"

    .line 1500
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1501
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_6
    const-string v2, "s"

    .line 1503
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1504
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_7
    const-string v2, "f"

    .line 1506
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1507
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1510
    :cond_8
    new-instance v0, Lnet/time4j/MachineTime$Normalized;

    invoke-direct {v0, p1, v1}, Lnet/time4j/MachineTime$Normalized;-><init>(Lnet/time4j/engine/TimeSpan;Ljava/util/Set;)V

    invoke-super {p0, v0, p2}, Lnet/time4j/format/TimeSpanFormatter;->print(Lnet/time4j/engine/TimeSpan;Ljava/lang/Appendable;)V

    return-void
.end method
