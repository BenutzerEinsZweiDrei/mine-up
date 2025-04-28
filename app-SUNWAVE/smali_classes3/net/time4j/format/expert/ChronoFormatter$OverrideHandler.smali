.class Lnet/time4j/format/expert/ChronoFormatter$OverrideHandler;
.super Ljava/lang/Object;
.source "ChronoFormatter.java"

# interfaces
.implements Lnet/time4j/engine/ChronoMerger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/format/expert/ChronoFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OverrideHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/ChronoMerger<",
        "Lnet/time4j/GeneralTimestamp<",
        "TC;>;>;"
    }
.end annotation


# instance fields
.field private final extensions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/time4j/engine/ChronoExtension;",
            ">;"
        }
    .end annotation
.end field

.field private final override:Lnet/time4j/engine/Chronology;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/Chronology<",
            "TC;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lnet/time4j/engine/Chronology;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/Chronology<",
            "TC;>;)V"
        }
    .end annotation

    .line 7216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7218
    iput-object p1, p0, Lnet/time4j/format/expert/ChronoFormatter$OverrideHandler;->override:Lnet/time4j/engine/Chronology;

    .line 7220
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7221
    invoke-virtual {p1}, Lnet/time4j/engine/Chronology;->getExtensions()Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 7222
    invoke-static {}, Lnet/time4j/PlainTime;->axis()Lnet/time4j/engine/TimeAxis;

    move-result-object p1

    invoke-virtual {p1}, Lnet/time4j/engine/TimeAxis;->getExtensions()Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 7223
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/format/expert/ChronoFormatter$OverrideHandler;->extensions:Ljava/util/List;

    return-void
.end method

.method static of(Lnet/time4j/engine/Chronology;)Lnet/time4j/format/expert/ChronoFormatter$OverrideHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/time4j/engine/Chronology<",
            "TC;>;)",
            "Lnet/time4j/format/expert/ChronoFormatter$OverrideHandler<",
            "TC;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 7235
    :cond_0
    new-instance v0, Lnet/time4j/format/expert/ChronoFormatter$OverrideHandler;

    invoke-direct {v0, p0}, Lnet/time4j/format/expert/ChronoFormatter$OverrideHandler;-><init>(Lnet/time4j/engine/Chronology;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic createFrom(Lnet/time4j/base/TimeSource;Lnet/time4j/engine/AttributeQuery;)Ljava/lang/Object;
    .locals 0

    .line 7205
    invoke-virtual {p0, p1, p2}, Lnet/time4j/format/expert/ChronoFormatter$OverrideHandler;->createFrom(Lnet/time4j/base/TimeSource;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/GeneralTimestamp;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFrom(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/engine/AttributeQuery;ZZ)Ljava/lang/Object;
    .locals 0

    .line 7205
    invoke-virtual {p0, p1, p2, p3, p4}, Lnet/time4j/format/expert/ChronoFormatter$OverrideHandler;->createFrom(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/engine/AttributeQuery;ZZ)Lnet/time4j/GeneralTimestamp;

    move-result-object p1

    return-object p1
.end method

.method public createFrom(Lnet/time4j/base/TimeSource;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/GeneralTimestamp;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/base/TimeSource<",
            "*>;",
            "Lnet/time4j/engine/AttributeQuery;",
            ")",
            "Lnet/time4j/GeneralTimestamp<",
            "TC;>;"
        }
    .end annotation

    .line 7336
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Not used."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createFrom(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/engine/AttributeQuery;ZZ)Lnet/time4j/GeneralTimestamp;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoEntity<",
            "*>;",
            "Lnet/time4j/engine/AttributeQuery;",
            "ZZ)",
            "Lnet/time4j/GeneralTimestamp<",
            "TC;>;"
        }
    .end annotation

    .line 7248
    iget-object v0, p0, Lnet/time4j/format/expert/ChronoFormatter$OverrideHandler;->override:Lnet/time4j/engine/Chronology;

    invoke-virtual {v0, p1, p2, p3, p4}, Lnet/time4j/engine/Chronology;->createFrom(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/engine/AttributeQuery;ZZ)Ljava/lang/Object;

    move-result-object v0

    .line 7249
    invoke-static {}, Lnet/time4j/PlainTime;->axis()Lnet/time4j/engine/TimeAxis;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Lnet/time4j/engine/TimeAxis;->createFrom(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/engine/AttributeQuery;ZZ)Lnet/time4j/engine/TimePoint;

    move-result-object p1

    check-cast p1, Lnet/time4j/PlainTime;

    .line 7252
    instance-of p2, v0, Lnet/time4j/engine/CalendarVariant;

    if-eqz p2, :cond_0

    .line 7253
    const-class p2, Lnet/time4j/engine/CalendarVariant;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/time4j/engine/CalendarVariant;

    invoke-static {p2, p1}, Lnet/time4j/GeneralTimestamp;->of(Lnet/time4j/engine/CalendarVariant;Lnet/time4j/PlainTime;)Lnet/time4j/GeneralTimestamp;

    move-result-object p1

    goto :goto_0

    .line 7254
    :cond_0
    instance-of p2, v0, Lnet/time4j/engine/Calendrical;

    if-eqz p2, :cond_1

    .line 7255
    const-class p2, Lnet/time4j/engine/Calendrical;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/time4j/engine/Calendrical;

    invoke-static {p2, p1}, Lnet/time4j/GeneralTimestamp;->of(Lnet/time4j/engine/Calendrical;Lnet/time4j/PlainTime;)Lnet/time4j/GeneralTimestamp;

    move-result-object p1

    .line 7260
    :goto_0
    invoke-static {p1}, Lnet/time4j/format/expert/ChronoFormatter;->access$900(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/GeneralTimestamp;

    return-object p1

    .line 7257
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Cannot determine calendar type: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 7295
    :cond_0
    instance-of v0, p1, Lnet/time4j/format/expert/ChronoFormatter$OverrideHandler;

    if-eqz v0, :cond_1

    .line 7296
    check-cast p1, Lnet/time4j/format/expert/ChronoFormatter$OverrideHandler;

    .line 7297
    iget-object v0, p0, Lnet/time4j/format/expert/ChronoFormatter$OverrideHandler;->override:Lnet/time4j/engine/Chronology;

    iget-object p1, p1, Lnet/time4j/format/expert/ChronoFormatter$OverrideHandler;->override:Lnet/time4j/engine/Chronology;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getCalendarOverride()Lnet/time4j/engine/Chronology;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/Chronology<",
            "*>;"
        }
    .end annotation

    .line 7286
    iget-object v0, p0, Lnet/time4j/format/expert/ChronoFormatter$OverrideHandler;->override:Lnet/time4j/engine/Chronology;

    return-object v0
.end method

.method public getDefaultPivotYear()I
    .locals 1

    .line 7274
    iget-object v0, p0, Lnet/time4j/format/expert/ChronoFormatter$OverrideHandler;->override:Lnet/time4j/engine/Chronology;

    invoke-virtual {v0}, Lnet/time4j/engine/Chronology;->getDefaultPivotYear()I

    move-result v0

    return v0
.end method

.method public getDefaultStartOfDay()Lnet/time4j/engine/StartOfDay;
    .locals 1

    .line 7267
    iget-object v0, p0, Lnet/time4j/format/expert/ChronoFormatter$OverrideHandler;->override:Lnet/time4j/engine/Chronology;

    invoke-virtual {v0}, Lnet/time4j/engine/Chronology;->getDefaultStartOfDay()Lnet/time4j/engine/StartOfDay;

    move-result-object v0

    return-object v0
.end method

.method public getExtensions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/time4j/engine/ChronoExtension;",
            ">;"
        }
    .end annotation

    .line 7280
    iget-object v0, p0, Lnet/time4j/format/expert/ChronoFormatter$OverrideHandler;->extensions:Ljava/util/List;

    return-object v0
.end method

.method public getFormatPattern(Lnet/time4j/engine/DisplayStyle;Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    .line 7344
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Not used."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public hashCode()I
    .locals 1

    .line 7307
    iget-object v0, p0, Lnet/time4j/format/expert/ChronoFormatter$OverrideHandler;->override:Lnet/time4j/engine/Chronology;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic preformat(Ljava/lang/Object;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/engine/ChronoDisplay;
    .locals 0

    .line 7205
    check-cast p1, Lnet/time4j/GeneralTimestamp;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/format/expert/ChronoFormatter$OverrideHandler;->preformat(Lnet/time4j/GeneralTimestamp;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/engine/ChronoDisplay;

    move-result-object p1

    return-object p1
.end method

.method public preformat(Lnet/time4j/GeneralTimestamp;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/engine/ChronoDisplay;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/GeneralTimestamp<",
            "TC;>;",
            "Lnet/time4j/engine/AttributeQuery;",
            ")",
            "Lnet/time4j/engine/ChronoDisplay;"
        }
    .end annotation

    .line 7323
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Not used."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public preparser()Lnet/time4j/engine/Chronology;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/Chronology<",
            "*>;"
        }
    .end annotation

    .line 7328
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not used."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 7314
    iget-object v0, p0, Lnet/time4j/format/expert/ChronoFormatter$OverrideHandler;->override:Lnet/time4j/engine/Chronology;

    invoke-virtual {v0}, Lnet/time4j/engine/Chronology;->getChronoType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
