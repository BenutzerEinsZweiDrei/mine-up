.class public final Lnet/time4j/format/expert/ChronoFormatter;
.super Ljava/lang/Object;
.source "ChronoFormatter.java"

# interfaces
.implements Lnet/time4j/format/expert/ChronoPrinter;
.implements Lnet/time4j/format/expert/ChronoParser;
.implements Lnet/time4j/format/TemporalFormatter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/time4j/format/expert/ChronoFormatter$ZonalDisplay;,
        Lnet/time4j/format/expert/ChronoFormatter$OverrideHandler;,
        Lnet/time4j/format/expert/ChronoFormatter$TraditionalFormat;,
        Lnet/time4j/format/expert/ChronoFormatter$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lnet/time4j/format/expert/ChronoPrinter<",
        "TT;>;",
        "Lnet/time4j/format/expert/ChronoParser<",
        "TT;>;",
        "Lnet/time4j/format/TemporalFormatter<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final RFC_1123:Lnet/time4j/format/expert/ChronoFormatter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/format/expert/ChronoFormatter<",
            "Lnet/time4j/Moment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final chronology:Lnet/time4j/engine/Chronology;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/Chronology<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final countOfElements:I

.field private final deepestParser:Lnet/time4j/engine/Chronology;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/Chronology<",
            "*>;"
        }
    .end annotation
.end field

.field private final defaults:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final fracproc:Lnet/time4j/format/expert/FractionProcessor;

.field private final globalAttributes:Lnet/time4j/format/expert/AttributeSet;

.field private final hasOptionals:Z

.field private final hasOrMarkers:Z

.field private final indexable:Z

.field private final leniency:Lnet/time4j/format/Leniency;

.field private final needsExtensions:Z

.field private final noPreparser:Z

.field private final overrideHandler:Lnet/time4j/format/expert/ChronoFormatter$OverrideHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/format/expert/ChronoFormatter$OverrideHandler<",
            "*>;"
        }
    .end annotation
.end field

.field private final singleStepMode:Z

.field private final stepCount:I

.field private final steps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/time4j/format/expert/FormatStep;",
            ">;"
        }
    .end annotation
.end field

.field private final trailing:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 199
    invoke-static {}, Lnet/time4j/format/expert/ChronoFormatter;->rfc1123()Lnet/time4j/format/expert/ChronoFormatter;

    move-result-object v0

    sput-object v0, Lnet/time4j/format/expert/ChronoFormatter;->RFC_1123:Lnet/time4j/format/expert/ChronoFormatter;

    return-void
.end method

.method private constructor <init>(Lnet/time4j/engine/Chronology;Lnet/time4j/engine/Chronology;Ljava/util/Locale;Ljava/util/List;Ljava/util/Map;Lnet/time4j/format/Attributes;Lnet/time4j/engine/Chronology;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/Chronology<",
            "TT;>;",
            "Lnet/time4j/engine/Chronology<",
            "*>;",
            "Ljava/util/Locale;",
            "Ljava/util/List<",
            "Lnet/time4j/format/expert/FormatStep;",
            ">;",
            "Ljava/util/Map<",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;",
            "Ljava/lang/Object;",
            ">;",
            "Lnet/time4j/format/Attributes;",
            "Lnet/time4j/engine/Chronology<",
            "*>;)V"
        }
    .end annotation

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Missing chronology."

    .line 238
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 239
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 243
    iput-object p1, p0, Lnet/time4j/format/expert/ChronoFormatter;->chronology:Lnet/time4j/engine/Chronology;

    .line 244
    invoke-static {p2}, Lnet/time4j/format/expert/ChronoFormatter$OverrideHandler;->of(Lnet/time4j/engine/Chronology;)Lnet/time4j/format/expert/ChronoFormatter$OverrideHandler;

    move-result-object v0

    iput-object v0, p0, Lnet/time4j/format/expert/ChronoFormatter;->overrideHandler:Lnet/time4j/format/expert/ChronoFormatter$OverrideHandler;

    .line 245
    iput-object p7, p0, Lnet/time4j/format/expert/ChronoFormatter;->deepestParser:Lnet/time4j/engine/Chronology;

    if-nez p2, :cond_0

    move-object p7, p1

    goto :goto_0

    :cond_0
    move-object p7, p2

    .line 247
    :goto_0
    invoke-static {p7, p6, p3}, Lnet/time4j/format/expert/AttributeSet;->createDefaults(Lnet/time4j/engine/Chronology;Lnet/time4j/format/Attributes;Ljava/util/Locale;)Lnet/time4j/format/expert/AttributeSet;

    move-result-object p3

    iput-object p3, p0, Lnet/time4j/format/expert/ChronoFormatter;->globalAttributes:Lnet/time4j/format/expert/AttributeSet;

    .line 248
    sget-object p6, Lnet/time4j/format/Attributes;->LENIENCY:Lnet/time4j/engine/AttributeKey;

    sget-object p7, Lnet/time4j/format/Leniency;->SMART:Lnet/time4j/format/Leniency;

    invoke-virtual {p3, p6, p7}, Lnet/time4j/format/expert/AttributeSet;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lnet/time4j/format/Leniency;

    iput-object p3, p0, Lnet/time4j/format/expert/ChronoFormatter;->leniency:Lnet/time4j/format/Leniency;

    .line 249
    invoke-static {p5}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p3

    iput-object p3, p0, Lnet/time4j/format/expert/ChronoFormatter;->defaults:Ljava/util/Map;

    const/4 p3, 0x0

    .line 258
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p5

    const/4 p6, 0x1

    const/4 p7, 0x0

    move v4, p6

    move v0, p7

    move v1, v0

    move v2, v1

    move v3, v2

    :cond_1
    :goto_1
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/time4j/format/expert/FormatStep;

    .line 259
    invoke-virtual {v5}, Lnet/time4j/format/expert/FormatStep;->isNewOrBlockStarted()Z

    move-result v6

    if-eqz v6, :cond_2

    move v1, p6

    :cond_2
    if-nez p3, :cond_3

    .line 262
    invoke-virtual {v5}, Lnet/time4j/format/expert/FormatStep;->getProcessor()Lnet/time4j/format/expert/FormatProcessor;

    move-result-object v6

    instance-of v6, v6, Lnet/time4j/format/expert/FractionProcessor;

    if-eqz v6, :cond_3

    .line 263
    const-class p3, Lnet/time4j/format/expert/FractionProcessor;

    invoke-virtual {v5}, Lnet/time4j/format/expert/FormatStep;->getProcessor()Lnet/time4j/format/expert/FormatProcessor;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lnet/time4j/format/expert/FractionProcessor;

    :cond_3
    if-nez v0, :cond_4

    .line 265
    invoke-virtual {v5}, Lnet/time4j/format/expert/FormatStep;->getLevel()I

    move-result v6

    if-lez v6, :cond_4

    move v0, p6

    .line 268
    :cond_4
    invoke-virtual {v5}, Lnet/time4j/format/expert/FormatStep;->getProcessor()Lnet/time4j/format/expert/FormatProcessor;

    move-result-object v5

    invoke-interface {v5}, Lnet/time4j/format/expert/FormatProcessor;->getElement()Lnet/time4j/engine/ChronoElement;

    move-result-object v5

    if-eqz v5, :cond_1

    add-int/lit8 v3, v3, 0x1

    if-eqz v4, :cond_5

    .line 271
    invoke-static {v5}, Lnet/time4j/format/expert/ParsedValues;->isIndexed(Lnet/time4j/engine/ChronoElement;)Z

    move-result v6

    if-nez v6, :cond_5

    move v4, p7

    :cond_5
    if-nez v2, :cond_1

    .line 275
    invoke-static {p1, p2, v5}, Lnet/time4j/format/expert/ChronoFormatter;->needsExtension(Lnet/time4j/engine/Chronology;Lnet/time4j/engine/Chronology;Lnet/time4j/engine/ChronoElement;)Z

    move-result v2

    goto :goto_1

    .line 280
    :cond_6
    iput-object p3, p0, Lnet/time4j/format/expert/ChronoFormatter;->fracproc:Lnet/time4j/format/expert/FractionProcessor;

    .line 281
    iput-boolean v0, p0, Lnet/time4j/format/expert/ChronoFormatter;->hasOptionals:Z

    .line 282
    iput-boolean v1, p0, Lnet/time4j/format/expert/ChronoFormatter;->hasOrMarkers:Z

    .line 283
    iput-boolean v2, p0, Lnet/time4j/format/expert/ChronoFormatter;->needsExtensions:Z

    .line 284
    iput v3, p0, Lnet/time4j/format/expert/ChronoFormatter;->countOfElements:I

    .line 285
    iput-boolean v4, p0, Lnet/time4j/format/expert/ChronoFormatter;->indexable:Z

    .line 287
    iget-object p1, p0, Lnet/time4j/format/expert/ChronoFormatter;->globalAttributes:Lnet/time4j/format/expert/AttributeSet;

    sget-object p2, Lnet/time4j/format/Attributes;->TRAILING_CHARACTERS:Lnet/time4j/engine/AttributeKey;

    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2, p3}, Lnet/time4j/format/expert/AttributeSet;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lnet/time4j/format/expert/ChronoFormatter;->trailing:Z

    .line 288
    invoke-direct {p0}, Lnet/time4j/format/expert/ChronoFormatter;->hasNoPreparser()Z

    move-result p1

    iput-boolean p1, p0, Lnet/time4j/format/expert/ChronoFormatter;->noPreparser:Z

    .line 289
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lnet/time4j/format/expert/ChronoFormatter;->stepCount:I

    .line 290
    invoke-direct {p0, p4}, Lnet/time4j/format/expert/ChronoFormatter;->freeze(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/format/expert/ChronoFormatter;->steps:Ljava/util/List;

    .line 291
    invoke-direct {p0}, Lnet/time4j/format/expert/ChronoFormatter;->getSingleStepMode()Z

    move-result p1

    iput-boolean p1, p0, Lnet/time4j/format/expert/ChronoFormatter;->singleStepMode:Z

    return-void

    .line 240
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No format processors defined."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic constructor <init>(Lnet/time4j/engine/Chronology;Lnet/time4j/engine/Chronology;Ljava/util/Locale;Ljava/util/List;Ljava/util/Map;Lnet/time4j/format/Attributes;Lnet/time4j/engine/Chronology;Lnet/time4j/format/expert/ChronoFormatter$1;)V
    .locals 0

    .line 172
    invoke-direct/range {p0 .. p7}, Lnet/time4j/format/expert/ChronoFormatter;-><init>(Lnet/time4j/engine/Chronology;Lnet/time4j/engine/Chronology;Ljava/util/Locale;Ljava/util/List;Ljava/util/Map;Lnet/time4j/format/Attributes;Lnet/time4j/engine/Chronology;)V

    return-void
.end method

.method private constructor <init>(Lnet/time4j/format/expert/ChronoFormatter;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/format/expert/ChronoFormatter<",
            "TT;>;",
            "Ljava/util/Map<",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 419
    iget-object v0, p1, Lnet/time4j/format/expert/ChronoFormatter;->overrideHandler:Lnet/time4j/format/expert/ChronoFormatter$OverrideHandler;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 422
    :cond_0
    invoke-virtual {v0}, Lnet/time4j/format/expert/ChronoFormatter$OverrideHandler;->getCalendarOverride()Lnet/time4j/engine/Chronology;

    move-result-object v0

    .line 424
    :goto_0
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/time4j/engine/ChronoElement;

    .line 425
    iget-object v3, p1, Lnet/time4j/format/expert/ChronoFormatter;->chronology:Lnet/time4j/engine/Chronology;

    invoke-static {v3, v0, v2}, Lnet/time4j/format/expert/ChronoFormatter;->checkElement(Lnet/time4j/engine/Chronology;Lnet/time4j/engine/Chronology;Lnet/time4j/engine/ChronoElement;)Lnet/time4j/engine/Chronology;

    goto :goto_1

    .line 428
    :cond_1
    iget-object v0, p1, Lnet/time4j/format/expert/ChronoFormatter;->chronology:Lnet/time4j/engine/Chronology;

    iput-object v0, p0, Lnet/time4j/format/expert/ChronoFormatter;->chronology:Lnet/time4j/engine/Chronology;

    .line 429
    iget-object v0, p1, Lnet/time4j/format/expert/ChronoFormatter;->overrideHandler:Lnet/time4j/format/expert/ChronoFormatter$OverrideHandler;

    iput-object v0, p0, Lnet/time4j/format/expert/ChronoFormatter;->overrideHandler:Lnet/time4j/format/expert/ChronoFormatter$OverrideHandler;

    .line 430
    iget-object v0, p1, Lnet/time4j/format/expert/ChronoFormatter;->deepestParser:Lnet/time4j/engine/Chronology;

    iput-object v0, p0, Lnet/time4j/format/expert/ChronoFormatter;->deepestParser:Lnet/time4j/engine/Chronology;

    .line 431
    iget-object v0, p1, Lnet/time4j/format/expert/ChronoFormatter;->globalAttributes:Lnet/time4j/format/expert/AttributeSet;

    iput-object v0, p0, Lnet/time4j/format/expert/ChronoFormatter;->globalAttributes:Lnet/time4j/format/expert/AttributeSet;

    .line 432
    iget-object v0, p1, Lnet/time4j/format/expert/ChronoFormatter;->leniency:Lnet/time4j/format/Leniency;

    iput-object v0, p0, Lnet/time4j/format/expert/ChronoFormatter;->leniency:Lnet/time4j/format/Leniency;

    .line 433
    iget-object v0, p1, Lnet/time4j/format/expert/ChronoFormatter;->fracproc:Lnet/time4j/format/expert/FractionProcessor;

    iput-object v0, p0, Lnet/time4j/format/expert/ChronoFormatter;->fracproc:Lnet/time4j/format/expert/FractionProcessor;

    .line 434
    iget-boolean v0, p1, Lnet/time4j/format/expert/ChronoFormatter;->hasOptionals:Z

    iput-boolean v0, p0, Lnet/time4j/format/expert/ChronoFormatter;->hasOptionals:Z

    .line 435
    iget-boolean v0, p1, Lnet/time4j/format/expert/ChronoFormatter;->hasOrMarkers:Z

    iput-boolean v0, p0, Lnet/time4j/format/expert/ChronoFormatter;->hasOrMarkers:Z

    .line 436
    iget-boolean v0, p1, Lnet/time4j/format/expert/ChronoFormatter;->needsExtensions:Z

    iput-boolean v0, p0, Lnet/time4j/format/expert/ChronoFormatter;->needsExtensions:Z

    .line 437
    iget v0, p1, Lnet/time4j/format/expert/ChronoFormatter;->countOfElements:I

    iput v0, p0, Lnet/time4j/format/expert/ChronoFormatter;->countOfElements:I

    .line 438
    iget-boolean v0, p1, Lnet/time4j/format/expert/ChronoFormatter;->trailing:Z

    iput-boolean v0, p0, Lnet/time4j/format/expert/ChronoFormatter;->trailing:Z

    .line 440
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p1, Lnet/time4j/format/expert/ChronoFormatter;->defaults:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 441
    iget-boolean v1, p1, Lnet/time4j/format/expert/ChronoFormatter;->indexable:Z

    .line 443
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/time4j/engine/ChronoElement;

    .line 444
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    .line 446
    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 448
    :cond_2
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_3

    .line 449
    invoke-static {v3}, Lnet/time4j/format/expert/ParsedValues;->isIndexed(Lnet/time4j/engine/ChronoElement;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    .line 453
    :cond_4
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    iput-object p2, p0, Lnet/time4j/format/expert/ChronoFormatter;->defaults:Ljava/util/Map;

    .line 454
    iput-boolean v1, p0, Lnet/time4j/format/expert/ChronoFormatter;->indexable:Z

    .line 455
    invoke-direct {p0}, Lnet/time4j/format/expert/ChronoFormatter;->hasNoPreparser()Z

    move-result p2

    iput-boolean p2, p0, Lnet/time4j/format/expert/ChronoFormatter;->noPreparser:Z

    .line 456
    iget p2, p1, Lnet/time4j/format/expert/ChronoFormatter;->stepCount:I

    iput p2, p0, Lnet/time4j/format/expert/ChronoFormatter;->stepCount:I

    .line 457
    iget-object p1, p1, Lnet/time4j/format/expert/ChronoFormatter;->steps:Ljava/util/List;

    invoke-direct {p0, p1}, Lnet/time4j/format/expert/ChronoFormatter;->freeze(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/format/expert/ChronoFormatter;->steps:Ljava/util/List;

    .line 458
    invoke-direct {p0}, Lnet/time4j/format/expert/ChronoFormatter;->getSingleStepMode()Z

    move-result p1

    iput-boolean p1, p0, Lnet/time4j/format/expert/ChronoFormatter;->singleStepMode:Z

    return-void
.end method

.method private constructor <init>(Lnet/time4j/format/expert/ChronoFormatter;Lnet/time4j/format/Attributes;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/format/expert/ChronoFormatter<",
            "TT;>;",
            "Lnet/time4j/format/Attributes;",
            ")V"
        }
    .end annotation

    .line 300
    iget-object v0, p1, Lnet/time4j/format/expert/ChronoFormatter;->globalAttributes:Lnet/time4j/format/expert/AttributeSet;

    invoke-virtual {v0, p2}, Lnet/time4j/format/expert/AttributeSet;->withAttributes(Lnet/time4j/format/Attributes;)Lnet/time4j/format/expert/AttributeSet;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/time4j/format/expert/ChronoFormatter;-><init>(Lnet/time4j/format/expert/ChronoFormatter;Lnet/time4j/format/expert/AttributeSet;Lnet/time4j/history/ChronoHistory;)V

    return-void
.end method

.method private constructor <init>(Lnet/time4j/format/expert/ChronoFormatter;Lnet/time4j/format/expert/AttributeSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/format/expert/ChronoFormatter<",
            "TT;>;",
            "Lnet/time4j/format/expert/AttributeSet;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 309
    invoke-direct {p0, p1, p2, v0}, Lnet/time4j/format/expert/ChronoFormatter;-><init>(Lnet/time4j/format/expert/ChronoFormatter;Lnet/time4j/format/expert/AttributeSet;Lnet/time4j/history/ChronoHistory;)V

    return-void
.end method

.method synthetic constructor <init>(Lnet/time4j/format/expert/ChronoFormatter;Lnet/time4j/format/expert/AttributeSet;Lnet/time4j/format/expert/ChronoFormatter$1;)V
    .locals 0

    .line 172
    invoke-direct {p0, p1, p2}, Lnet/time4j/format/expert/ChronoFormatter;-><init>(Lnet/time4j/format/expert/ChronoFormatter;Lnet/time4j/format/expert/AttributeSet;)V

    return-void
.end method

.method private constructor <init>(Lnet/time4j/format/expert/ChronoFormatter;Lnet/time4j/format/expert/AttributeSet;Lnet/time4j/history/ChronoHistory;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/format/expert/ChronoFormatter<",
            "TT;>;",
            "Lnet/time4j/format/expert/AttributeSet;",
            "Lnet/time4j/history/ChronoHistory;",
            ")V"
        }
    .end annotation

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Missing global format attributes."

    .line 322
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 325
    iget-object v0, p1, Lnet/time4j/format/expert/ChronoFormatter;->chronology:Lnet/time4j/engine/Chronology;

    iput-object v0, p0, Lnet/time4j/format/expert/ChronoFormatter;->chronology:Lnet/time4j/engine/Chronology;

    .line 326
    iget-object v0, p1, Lnet/time4j/format/expert/ChronoFormatter;->overrideHandler:Lnet/time4j/format/expert/ChronoFormatter$OverrideHandler;

    iput-object v0, p0, Lnet/time4j/format/expert/ChronoFormatter;->overrideHandler:Lnet/time4j/format/expert/ChronoFormatter$OverrideHandler;

    .line 327
    iget-object v0, p1, Lnet/time4j/format/expert/ChronoFormatter;->deepestParser:Lnet/time4j/engine/Chronology;

    iput-object v0, p0, Lnet/time4j/format/expert/ChronoFormatter;->deepestParser:Lnet/time4j/engine/Chronology;

    .line 328
    iput-object p2, p0, Lnet/time4j/format/expert/ChronoFormatter;->globalAttributes:Lnet/time4j/format/expert/AttributeSet;

    .line 329
    sget-object v0, Lnet/time4j/format/Attributes;->LENIENCY:Lnet/time4j/engine/AttributeKey;

    sget-object v1, Lnet/time4j/format/Leniency;->SMART:Lnet/time4j/format/Leniency;

    invoke-virtual {p2, v0, v1}, Lnet/time4j/format/expert/AttributeSet;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/format/Leniency;

    iput-object v0, p0, Lnet/time4j/format/expert/ChronoFormatter;->leniency:Lnet/time4j/format/Leniency;

    .line 330
    new-instance v0, Lnet/time4j/format/expert/NonAmbivalentMap;

    iget-object v1, p1, Lnet/time4j/format/expert/ChronoFormatter;->defaults:Ljava/util/Map;

    invoke-direct {v0, v1}, Lnet/time4j/format/expert/NonAmbivalentMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lnet/time4j/format/expert/ChronoFormatter;->defaults:Ljava/util/Map;

    .line 331
    iget-object v0, p1, Lnet/time4j/format/expert/ChronoFormatter;->fracproc:Lnet/time4j/format/expert/FractionProcessor;

    iput-object v0, p0, Lnet/time4j/format/expert/ChronoFormatter;->fracproc:Lnet/time4j/format/expert/FractionProcessor;

    .line 332
    iget-boolean v0, p1, Lnet/time4j/format/expert/ChronoFormatter;->hasOptionals:Z

    iput-boolean v0, p0, Lnet/time4j/format/expert/ChronoFormatter;->hasOptionals:Z

    .line 333
    iget-boolean v0, p1, Lnet/time4j/format/expert/ChronoFormatter;->hasOrMarkers:Z

    iput-boolean v0, p0, Lnet/time4j/format/expert/ChronoFormatter;->hasOrMarkers:Z

    .line 334
    iget-boolean v0, p1, Lnet/time4j/format/expert/ChronoFormatter;->needsExtensions:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lnet/time4j/format/expert/ChronoFormatter;->needsExtensions:Z

    .line 335
    iget v0, p1, Lnet/time4j/format/expert/ChronoFormatter;->countOfElements:I

    iput v0, p0, Lnet/time4j/format/expert/ChronoFormatter;->countOfElements:I

    .line 338
    iget-object v0, p1, Lnet/time4j/format/expert/ChronoFormatter;->steps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 339
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p1, Lnet/time4j/format/expert/ChronoFormatter;->steps:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 340
    iget-boolean v3, p1, Lnet/time4j/format/expert/ChronoFormatter;->indexable:Z

    move v4, v1

    :goto_2
    if-ge v4, v0, :cond_e

    .line 343
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/time4j/format/expert/FormatStep;

    .line 344
    invoke-virtual {v5}, Lnet/time4j/format/expert/FormatStep;->getProcessor()Lnet/time4j/format/expert/FormatProcessor;

    move-result-object v6

    invoke-interface {v6}, Lnet/time4j/format/expert/FormatProcessor;->getElement()Lnet/time4j/engine/ChronoElement;

    move-result-object v6

    .line 345
    iget-object v7, p0, Lnet/time4j/format/expert/ChronoFormatter;->chronology:Lnet/time4j/engine/Chronology;

    .line 347
    :goto_3
    instance-of v8, v7, Lnet/time4j/engine/BridgeChronology;

    if-eqz v8, :cond_2

    .line 348
    invoke-virtual {v7}, Lnet/time4j/engine/Chronology;->preparser()Lnet/time4j/engine/Chronology;

    move-result-object v7

    goto :goto_3

    .line 351
    :cond_2
    invoke-static {}, Lnet/time4j/Moment;->axis()Lnet/time4j/engine/TimeAxis;

    move-result-object v8

    if-ne v7, v8, :cond_3

    .line 352
    invoke-virtual {v7}, Lnet/time4j/engine/Chronology;->preparser()Lnet/time4j/engine/Chronology;

    move-result-object v7

    :cond_3
    if-eqz v6, :cond_6

    .line 358
    invoke-virtual {v7, v6}, Lnet/time4j/engine/Chronology;->isRegistered(Lnet/time4j/engine/ChronoElement;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 361
    invoke-virtual {v7}, Lnet/time4j/engine/Chronology;->getExtensions()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lnet/time4j/engine/ChronoExtension;

    .line 362
    invoke-virtual {p1}, Lnet/time4j/format/expert/ChronoFormatter;->getLocale()Ljava/util/Locale;

    move-result-object v9

    iget-object v10, p1, Lnet/time4j/format/expert/ChronoFormatter;->globalAttributes:Lnet/time4j/format/expert/AttributeSet;

    invoke-interface {v8, v9, v10}, Lnet/time4j/engine/ChronoExtension;->getElements(Ljava/util/Locale;Lnet/time4j/engine/AttributeQuery;)Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 364
    invoke-virtual {p2}, Lnet/time4j/format/expert/AttributeSet;->getLocale()Ljava/util/Locale;

    move-result-object v7

    invoke-interface {v8, v7, p2}, Lnet/time4j/engine/ChronoExtension;->getElements(Ljava/util/Locale;Lnet/time4j/engine/AttributeQuery;)Ljava/util/Set;

    move-result-object v7

    .line 366
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lnet/time4j/engine/ChronoElement;

    .line 367
    invoke-interface {v8}, Lnet/time4j/engine/ChronoElement;->name()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6}, Lnet/time4j/engine/ChronoElement;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    if-eq v8, v6, :cond_6

    .line 369
    invoke-virtual {v5, v8}, Lnet/time4j/format/expert/FormatStep;->updateElement(Lnet/time4j/engine/ChronoElement;)Lnet/time4j/format/expert/FormatStep;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v3, v1

    :cond_6
    if-eqz p3, :cond_d

    const/4 v3, 0x0

    .line 385
    sget-object v7, Lnet/time4j/PlainDate;->YEAR:Lnet/time4j/AdjustableElement;

    if-ne v6, v7, :cond_7

    .line 386
    invoke-virtual {p3}, Lnet/time4j/history/ChronoHistory;->yearOfEra()Lnet/time4j/format/TextElement;

    move-result-object v3

    goto :goto_5

    .line 387
    :cond_7
    sget-object v7, Lnet/time4j/PlainDate;->MONTH_OF_YEAR:Lnet/time4j/NavigableElement;

    if-eq v6, v7, :cond_a

    sget-object v7, Lnet/time4j/PlainDate;->MONTH_AS_NUMBER:Lnet/time4j/ProportionalElement;

    if-ne v6, v7, :cond_8

    goto :goto_4

    .line 392
    :cond_8
    sget-object v7, Lnet/time4j/PlainDate;->DAY_OF_MONTH:Lnet/time4j/ProportionalElement;

    if-ne v6, v7, :cond_9

    .line 393
    invoke-virtual {p3}, Lnet/time4j/history/ChronoHistory;->dayOfMonth()Lnet/time4j/engine/ChronoElement;

    move-result-object v3

    goto :goto_5

    .line 394
    :cond_9
    sget-object v7, Lnet/time4j/PlainDate;->DAY_OF_YEAR:Lnet/time4j/ProportionalElement;

    if-ne v6, v7, :cond_b

    .line 395
    invoke-virtual {p3}, Lnet/time4j/history/ChronoHistory;->dayOfYear()Lnet/time4j/engine/ChronoElement;

    move-result-object v3

    goto :goto_5

    .line 391
    :cond_a
    :goto_4
    invoke-virtual {p3}, Lnet/time4j/history/ChronoHistory;->month()Lnet/time4j/format/TextElement;

    move-result-object v3

    :cond_b
    :goto_5
    if-eqz v3, :cond_c

    .line 398
    invoke-virtual {v5, v3}, Lnet/time4j/format/expert/FormatStep;->updateElement(Lnet/time4j/engine/ChronoElement;)Lnet/time4j/format/expert/FormatStep;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_c
    move v3, v1

    :cond_d
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 403
    :cond_e
    iput-boolean v3, p0, Lnet/time4j/format/expert/ChronoFormatter;->indexable:Z

    .line 404
    iget-object p1, p0, Lnet/time4j/format/expert/ChronoFormatter;->globalAttributes:Lnet/time4j/format/expert/AttributeSet;

    sget-object p2, Lnet/time4j/format/Attributes;->TRAILING_CHARACTERS:Lnet/time4j/engine/AttributeKey;

    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2, p3}, Lnet/time4j/format/expert/AttributeSet;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lnet/time4j/format/expert/ChronoFormatter;->trailing:Z

    .line 405
    invoke-direct {p0}, Lnet/time4j/format/expert/ChronoFormatter;->hasNoPreparser()Z

    move-result p1

    iput-boolean p1, p0, Lnet/time4j/format/expert/ChronoFormatter;->noPreparser:Z

    .line 406
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lnet/time4j/format/expert/ChronoFormatter;->stepCount:I

    .line 407
    invoke-direct {p0, v2}, Lnet/time4j/format/expert/ChronoFormatter;->freeze(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/format/expert/ChronoFormatter;->steps:Ljava/util/List;

    .line 408
    invoke-direct {p0}, Lnet/time4j/format/expert/ChronoFormatter;->getSingleStepMode()Z

    move-result p1

    iput-boolean p1, p0, Lnet/time4j/format/expert/ChronoFormatter;->singleStepMode:Z

    return-void
.end method

.method static synthetic access$1000(Lnet/time4j/engine/Chronology;Lnet/time4j/engine/Chronology;Lnet/time4j/engine/ChronoElement;)Lnet/time4j/engine/Chronology;
    .locals 0

    .line 172
    invoke-static {p0, p1, p2}, Lnet/time4j/format/expert/ChronoFormatter;->checkElement(Lnet/time4j/engine/Chronology;Lnet/time4j/engine/Chronology;Lnet/time4j/engine/ChronoElement;)Lnet/time4j/engine/Chronology;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1100(Lnet/time4j/engine/Chronology;Lnet/time4j/engine/Chronology;Lnet/time4j/engine/Chronology;)I
    .locals 0

    .line 172
    invoke-static {p0, p1, p2}, Lnet/time4j/format/expert/ChronoFormatter;->getDepth(Lnet/time4j/engine/Chronology;Lnet/time4j/engine/Chronology;Lnet/time4j/engine/Chronology;)I

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lnet/time4j/format/expert/ChronoFormatter;)Lnet/time4j/format/expert/AttributeSet;
    .locals 0

    .line 172
    iget-object p0, p0, Lnet/time4j/format/expert/ChronoFormatter;->globalAttributes:Lnet/time4j/format/expert/AttributeSet;

    return-object p0
.end method

.method static synthetic access$900(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 172
    invoke-static {p0}, Lnet/time4j/format/expert/ChronoFormatter;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static addPattern(Lnet/time4j/format/expert/ChronoFormatter$Builder;Ljava/lang/String;Lnet/time4j/format/expert/PatternType;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/time4j/format/expert/ChronoFormatter$Builder<",
            "TT;>;",
            "Ljava/lang/String;",
            "Lnet/time4j/format/expert/PatternType;",
            ")V"
        }
    .end annotation

    .line 3216
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 3217
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v0, :cond_6

    .line 3220
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x27

    if-ne v5, v6, :cond_5

    add-int/lit8 v5, v3, 0x1

    .line 3224
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x5a

    if-ne v7, v8, :cond_0

    move v7, v4

    goto :goto_1

    :cond_0
    move v7, v2

    :goto_1
    if-ge v5, v0, :cond_4

    .line 3226
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v6, :cond_3

    add-int/lit8 v8, v5, 0x1

    if-ge v8, v0, :cond_1

    .line 3227
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v6, :cond_1

    move v5, v8

    goto :goto_2

    :cond_1
    if-eqz v7, :cond_4

    add-int/lit8 v3, v3, 0x2

    if-ne v5, v3, :cond_4

    .line 3230
    invoke-static {p0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->access$400(Lnet/time4j/format/expert/ChronoFormatter$Builder;)Lnet/time4j/engine/Chronology;

    move-result-object v3

    invoke-static {v3}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->access$500(Lnet/time4j/engine/Chronology;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_3

    .line 3231
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Z-literal (=UTC+00) should not be escaped: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_2
    add-int/2addr v5, v4

    goto :goto_1

    :cond_4
    :goto_3
    move v3, v5

    goto :goto_4

    .line 3241
    :cond_5
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_4
    add-int/2addr v3, v4

    goto :goto_0

    .line 3245
    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3247
    sget-object v1, Lnet/time4j/format/expert/ChronoFormatter$3;->$SwitchMap$net$time4j$format$expert$PatternType:[I

    invoke-virtual {p2}, Lnet/time4j/format/expert/PatternType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    if-eq v1, v4, :cond_7

    const/4 v2, 0x2

    if-eq v1, v2, :cond_7

    const/4 v2, 0x3

    if-eq v1, v2, :cond_7

    const/4 v2, 0x4

    if-eq v1, v2, :cond_7

    goto/16 :goto_7

    :cond_7
    const-string v1, "h"

    .line 3252
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "K"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_8
    const-string v1, "a"

    .line 3253
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "b"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "B"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_5

    .line 3254
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "12-hour-clock requires am/pm-marker or dayperiod: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    :goto_5
    const-string v1, "Y"

    .line 3258
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "L"

    const-string v3, "M"

    if-eqz v1, :cond_d

    .line 3259
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    :cond_b
    const-string v1, "w"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_6

    .line 3260
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Y as week-based-year requires a week-date-format: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    :goto_6
    const-string v1, "D"

    .line 3264
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 3265
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    :cond_e
    const-string v1, "d"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_7

    .line 3266
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "D is the day of year but not the day of month: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3275
    :cond_10
    :goto_7
    invoke-virtual {p0, p1, p2}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addPattern(Ljava/lang/String;Lnet/time4j/format/expert/PatternType;)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    return-void
.end method

.method private static cast(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    return-object p0
.end method

.method private static checkConsistency(Lnet/time4j/engine/ChronoEntity;Ljava/lang/Object;Ljava/lang/CharSequence;Lnet/time4j/format/expert/ParseLog;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/time4j/engine/ChronoEntity<",
            "*>;TT;",
            "Ljava/lang/CharSequence;",
            "Lnet/time4j/format/expert/ParseLog;",
            ")TT;"
        }
    .end annotation

    .line 3288
    instance-of v0, p1, Lnet/time4j/base/UnixTime;

    const-string v1, "}."

    const-string v2, "Conflict found: "

    const/16 v3, 0x100

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    .line 3289
    const-class v0, Lnet/time4j/base/UnixTime;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/base/UnixTime;

    .line 3292
    sget-object v5, Lnet/time4j/format/expert/TimezoneElement;->TIMEZONE_ID:Lnet/time4j/format/expert/TimezoneElement;

    .line 3293
    invoke-virtual {p0, v5}, Lnet/time4j/engine/ChronoEntity;->contains(Lnet/time4j/engine/ChronoElement;)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lnet/time4j/format/expert/TimezoneElement;->TIMEZONE_OFFSET:Lnet/time4j/format/expert/TimezoneElement;

    .line 3294
    invoke-virtual {p0, v5}, Lnet/time4j/engine/ChronoEntity;->contains(Lnet/time4j/engine/ChronoElement;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3296
    sget-object v5, Lnet/time4j/format/expert/TimezoneElement;->TIMEZONE_ID:Lnet/time4j/format/expert/TimezoneElement;

    invoke-virtual {p0, v5}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/time4j/tz/TZID;

    .line 3297
    sget-object v6, Lnet/time4j/format/expert/TimezoneElement;->TIMEZONE_OFFSET:Lnet/time4j/format/expert/TimezoneElement;

    invoke-virtual {p0, v6}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/time4j/tz/TZID;

    .line 3298
    invoke-static {v5}, Lnet/time4j/tz/Timezone;->of(Lnet/time4j/tz/TZID;)Lnet/time4j/tz/Timezone;

    move-result-object v7

    invoke-virtual {v7, v0}, Lnet/time4j/tz/Timezone;->getOffset(Lnet/time4j/base/UnixTime;)Lnet/time4j/tz/ZonalOffset;

    move-result-object v7

    invoke-virtual {v7, v6}, Lnet/time4j/tz/ZonalOffset;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 3299
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Ambivalent offset information: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " versus "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p0, p1}, Lnet/time4j/format/expert/ParseLog;->setError(ILjava/lang/String;)V

    return-object v4

    .line 3305
    :cond_0
    sget-object v5, Lnet/time4j/engine/FlagElement;->DAYLIGHT_SAVING:Lnet/time4j/engine/FlagElement;

    invoke-virtual {p0, v5}, Lnet/time4j/engine/ChronoEntity;->contains(Lnet/time4j/engine/ChronoElement;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 3306
    invoke-virtual {p0}, Lnet/time4j/engine/ChronoEntity;->getTimezone()Lnet/time4j/tz/TZID;

    move-result-object v5

    .line 3308
    :try_start_0
    invoke-static {v5}, Lnet/time4j/tz/Timezone;->of(Lnet/time4j/tz/TZID;)Lnet/time4j/tz/Timezone;

    move-result-object v5

    invoke-virtual {v5, v0}, Lnet/time4j/tz/Timezone;->isDaylightSaving(Lnet/time4j/base/UnixTime;)Z

    move-result v0

    .line 3309
    sget-object v5, Lnet/time4j/engine/FlagElement;->DAYLIGHT_SAVING:Lnet/time4j/engine/FlagElement;

    invoke-virtual {p0, v5}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eq v0, p0, :cond_b

    .line 3310
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3311
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Parsed entity is "

    .line 3312
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_1

    const-string p1, "not "

    .line 3314
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string p1, "daylight-saving, but timezone name"

    .line 3316
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " has not the appropriate form in {"

    .line 3317
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3318
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3319
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3320
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p1, p0}, Lnet/time4j/format/expert/ParseLog;->setError(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v4

    goto/16 :goto_4

    :catch_0
    move-exception p0

    .line 3324
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Unable to check timezone name: "

    .line 3325
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3326
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3327
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p0

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p0, p1}, Lnet/time4j/format/expert/ParseLog;->setError(ILjava/lang/String;)V

    return-object v4

    .line 3331
    :cond_2
    instance-of v0, p1, Lnet/time4j/engine/ChronoDisplay;

    if-eqz v0, :cond_b

    .line 3333
    move-object v0, p1

    check-cast v0, Lnet/time4j/engine/ChronoDisplay;

    .line 3335
    instance-of v5, p1, Lnet/time4j/PlainTimestamp;

    if-eqz v5, :cond_4

    const-class v5, Lnet/time4j/PlainTimestamp;

    .line 3337
    invoke-virtual {v5, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/time4j/PlainTimestamp;

    invoke-virtual {v5}, Lnet/time4j/PlainTimestamp;->getHour()I

    move-result v5

    if-nez v5, :cond_4

    sget-object v5, Lnet/time4j/PlainTime;->HOUR_FROM_0_TO_24:Lnet/time4j/ProportionalElement;

    .line 3339
    invoke-virtual {p0, v5}, Lnet/time4j/engine/ChronoEntity;->getInt(Lnet/time4j/engine/ChronoElement;)I

    move-result v5

    const/16 v6, 0x18

    if-eq v5, v6, :cond_3

    sget-object v5, Lnet/time4j/PlainTime;->COMPONENT:Lnet/time4j/WallTimeElement;

    .line 3340
    invoke-virtual {p0, v5}, Lnet/time4j/engine/ChronoEntity;->contains(Lnet/time4j/engine/ChronoElement;)Z

    move-result v5

    if-eqz v5, :cond_4

    sget-object v5, Lnet/time4j/PlainTime;->COMPONENT:Lnet/time4j/WallTimeElement;

    invoke-virtual {p0, v5}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/time4j/PlainTime;

    invoke-virtual {v5}, Lnet/time4j/PlainTime;->getHour()I

    move-result v5

    if-ne v5, v6, :cond_4

    .line 3343
    :cond_3
    const-class v5, Lnet/time4j/PlainTimestamp;

    invoke-virtual {v5, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/time4j/PlainTimestamp;

    invoke-virtual {v5}, Lnet/time4j/PlainTimestamp;->toDate()Lnet/time4j/PlainDate;

    move-result-object v5

    const-wide/16 v6, 0x1

    sget-object v8, Lnet/time4j/CalendarUnit;->DAYS:Lnet/time4j/CalendarUnit;

    invoke-virtual {v5, v6, v7, v8}, Lnet/time4j/PlainDate;->minus(JLjava/lang/Object;)Lnet/time4j/engine/TimePoint;

    move-result-object v5

    goto :goto_0

    :cond_4
    move-object v5, v4

    .line 3346
    :goto_0
    invoke-virtual {p0}, Lnet/time4j/engine/ChronoEntity;->getRegisteredElements()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnet/time4j/engine/ChronoElement;

    .line 3347
    sget-object v8, Lnet/time4j/PlainTime;->SECOND_OF_MINUTE:Lnet/time4j/ProportionalElement;

    if-ne v7, v8, :cond_6

    sget-object v8, Lnet/time4j/PlainTime;->SECOND_OF_MINUTE:Lnet/time4j/ProportionalElement;

    invoke-virtual {p0, v8}, Lnet/time4j/engine/ChronoEntity;->getInt(Lnet/time4j/engine/ChronoElement;)I

    move-result v8

    const/16 v9, 0x3c

    if-ne v8, v9, :cond_6

    goto :goto_1

    :cond_6
    if-eqz v5, :cond_8

    .line 3352
    invoke-interface {v7}, Lnet/time4j/engine/ChronoElement;->isDateElement()Z

    move-result v8

    if-eqz v8, :cond_7

    move-object v0, v5

    goto :goto_2

    .line 3354
    :cond_7
    invoke-interface {v7}, Lnet/time4j/engine/ChronoElement;->isTimeElement()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 3355
    invoke-static {}, Lnet/time4j/PlainTime;->midnightAtEndOfDay()Lnet/time4j/PlainTime;

    move-result-object v0

    .line 3359
    :cond_8
    :goto_2
    invoke-interface {v0, v7}, Lnet/time4j/engine/ChronoDisplay;->contains(Lnet/time4j/engine/ChronoElement;)Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v8, 0x1

    .line 3363
    invoke-interface {v7}, Lnet/time4j/engine/ChronoElement;->getType()Ljava/lang/Class;

    move-result-object v9

    const-class v10, Ljava/lang/Integer;

    if-ne v9, v10, :cond_a

    .line 3364
    invoke-static {v7}, Lnet/time4j/format/expert/ChronoFormatter;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lnet/time4j/engine/ChronoElement;

    .line 3365
    invoke-virtual {p0, v9}, Lnet/time4j/engine/ChronoEntity;->getInt(Lnet/time4j/engine/ChronoElement;)I

    move-result v10

    .line 3366
    invoke-interface {v0, v9}, Lnet/time4j/engine/ChronoDisplay;->getInt(Lnet/time4j/engine/ChronoElement;)I

    move-result v9

    if-eq v9, v10, :cond_9

    .line 3367
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    move v11, v9

    move-object v9, v8

    move v8, v11

    goto :goto_3

    :cond_9
    move-object v9, v4

    goto :goto_3

    .line 3371
    :cond_a
    invoke-virtual {p0, v7}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v9

    .line 3372
    invoke-interface {v0, v7}, Lnet/time4j/engine/ChronoDisplay;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    :goto_3
    if-nez v8, :cond_5

    .line 3376
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3377
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Text {"

    .line 3378
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3379
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "} with element "

    .line 3380
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3381
    invoke-interface {v7}, Lnet/time4j/engine/ChronoElement;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " {"

    .line 3382
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3383
    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "}, but parsed entity "

    .line 3384
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "has element value {"

    .line 3385
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3386
    invoke-interface {v0, v7}, Lnet/time4j/engine/ChronoDisplay;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3387
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3388
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p1, p0}, Lnet/time4j/format/expert/ParseLog;->setError(ILjava/lang/String;)V

    return-object v4

    :cond_b
    :goto_4
    return-object p1
.end method

.method private static checkElement(Lnet/time4j/engine/Chronology;Lnet/time4j/engine/Chronology;Lnet/time4j/engine/ChronoElement;)Lnet/time4j/engine/Chronology;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/Chronology<",
            "*>;",
            "Lnet/time4j/engine/Chronology<",
            "*>;",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;)",
            "Lnet/time4j/engine/Chronology<",
            "*>;"
        }
    .end annotation

    .line 3595
    invoke-virtual {p0, p2}, Lnet/time4j/engine/Chronology;->isSupported(Lnet/time4j/engine/ChronoElement;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    if-nez p1, :cond_2

    .line 3603
    :cond_1
    invoke-virtual {p0}, Lnet/time4j/engine/Chronology;->preparser()Lnet/time4j/engine/Chronology;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 3604
    invoke-virtual {p0, p2}, Lnet/time4j/engine/Chronology;->isSupported(Lnet/time4j/engine/ChronoElement;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object p0

    .line 3608
    :cond_2
    invoke-interface {p2}, Lnet/time4j/engine/ChronoElement;->isDateElement()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {p1, p2}, Lnet/time4j/engine/Chronology;->isSupported(Lnet/time4j/engine/ChronoElement;)Z

    move-result p0

    if-eqz p0, :cond_3

    return-object p1

    .line 3610
    :cond_3
    invoke-interface {p2}, Lnet/time4j/engine/ChronoElement;->isTimeElement()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-static {}, Lnet/time4j/PlainTime;->axis()Lnet/time4j/engine/TimeAxis;

    move-result-object p0

    invoke-virtual {p0, p2}, Lnet/time4j/engine/TimeAxis;->isSupported(Lnet/time4j/engine/ChronoElement;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 3611
    invoke-static {}, Lnet/time4j/PlainTime;->axis()Lnet/time4j/engine/TimeAxis;

    move-result-object p0

    return-object p0

    .line 3614
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported element: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lnet/time4j/engine/ChronoElement;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private display(Ljava/lang/Object;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/engine/ChronoDisplay;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lnet/time4j/engine/AttributeQuery;",
            ")",
            "Lnet/time4j/engine/ChronoDisplay;"
        }
    .end annotation

    .line 2926
    iget-object v0, p0, Lnet/time4j/format/expert/ChronoFormatter;->overrideHandler:Lnet/time4j/format/expert/ChronoFormatter$OverrideHandler;

    if-nez v0, :cond_0

    .line 2927
    iget-object v0, p0, Lnet/time4j/format/expert/ChronoFormatter;->chronology:Lnet/time4j/engine/Chronology;

    invoke-virtual {v0, p1, p2}, Lnet/time4j/engine/Chronology;->preformat(Ljava/lang/Object;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/engine/ChronoDisplay;

    move-result-object p1

    return-object p1

    .line 2931
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lnet/time4j/format/expert/ChronoFormatter$OverrideHandler;->getCalendarOverride()Lnet/time4j/engine/Chronology;

    move-result-object v0

    invoke-virtual {v0}, Lnet/time4j/engine/Chronology;->getChronoType()Ljava/lang/Class;

    move-result-object v0

    .line 2932
    sget-object v1, Lnet/time4j/format/Attributes;->START_OF_DAY:Lnet/time4j/engine/AttributeKey;

    iget-object v2, p0, Lnet/time4j/format/expert/ChronoFormatter;->overrideHandler:Lnet/time4j/format/expert/ChronoFormatter$OverrideHandler;

    invoke-virtual {v2}, Lnet/time4j/format/expert/ChronoFormatter$OverrideHandler;->getDefaultStartOfDay()Lnet/time4j/engine/StartOfDay;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/time4j/engine/StartOfDay;

    .line 2933
    const-class v2, Lnet/time4j/Moment;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/time4j/Moment;

    .line 2934
    sget-object v3, Lnet/time4j/format/Attributes;->TIMEZONE_ID:Lnet/time4j/engine/AttributeKey;

    invoke-interface {p2, v3}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/time4j/tz/TZID;

    const-string v4, ""

    .line 2938
    const-class v5, Lnet/time4j/engine/CalendarVariant;

    invoke-virtual {v5, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2939
    iget-object v0, p0, Lnet/time4j/format/expert/ChronoFormatter;->overrideHandler:Lnet/time4j/format/expert/ChronoFormatter$OverrideHandler;

    invoke-virtual {v0}, Lnet/time4j/format/expert/ChronoFormatter$OverrideHandler;->getCalendarOverride()Lnet/time4j/engine/Chronology;

    move-result-object v0

    invoke-static {v0}, Lnet/time4j/format/expert/ChronoFormatter;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/engine/CalendarFamily;

    .line 2940
    sget-object v4, Lnet/time4j/format/Attributes;->CALENDAR_VARIANT:Lnet/time4j/engine/AttributeKey;

    invoke-interface {p2, v4}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;)Ljava/lang/Object;

    move-result-object p2

    move-object v4, p2

    check-cast v4, Ljava/lang/String;

    .line 2941
    invoke-virtual {v2, v0, v4, v3, v1}, Lnet/time4j/Moment;->toGeneralTimestamp(Lnet/time4j/engine/CalendarFamily;Ljava/lang/String;Lnet/time4j/tz/TZID;Lnet/time4j/engine/StartOfDay;)Lnet/time4j/GeneralTimestamp;

    move-result-object p2

    goto :goto_0

    .line 2942
    :cond_1
    const-class p2, Lnet/time4j/engine/Calendrical;

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 2943
    iget-object p2, p0, Lnet/time4j/format/expert/ChronoFormatter;->overrideHandler:Lnet/time4j/format/expert/ChronoFormatter$OverrideHandler;

    .line 2944
    invoke-virtual {p2}, Lnet/time4j/format/expert/ChronoFormatter$OverrideHandler;->getCalendarOverride()Lnet/time4j/engine/Chronology;

    move-result-object p2

    .line 2945
    invoke-virtual {v2, p2, v3, v1}, Lnet/time4j/Moment;->toGeneralTimestamp(Lnet/time4j/engine/Chronology;Lnet/time4j/tz/TZID;Lnet/time4j/engine/StartOfDay;)Lnet/time4j/GeneralTimestamp;

    move-result-object p2

    .line 2950
    :goto_0
    new-instance v0, Lnet/time4j/format/expert/ChronoFormatter$ZonalDisplay;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v4, v3, v1}, Lnet/time4j/format/expert/ChronoFormatter$ZonalDisplay;-><init>(Lnet/time4j/GeneralTimestamp;Ljava/lang/String;Lnet/time4j/tz/TZID;Lnet/time4j/format/expert/ChronoFormatter$1;)V

    return-object v0

    .line 2947
    :cond_2
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected calendar override: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 2954
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/util/NoSuchElementException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p2

    .line 2952
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not formattable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private format0(Lnet/time4j/engine/ChronoDisplay;)Ljava/lang/String;
    .locals 3

    .line 2821
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/time4j/format/expert/ChronoFormatter;->steps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2824
    :try_start_0
    iget-object v1, p0, Lnet/time4j/format/expert/ChronoFormatter;->globalAttributes:Lnet/time4j/format/expert/AttributeSet;

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lnet/time4j/format/expert/ChronoFormatter;->print(Lnet/time4j/engine/ChronoDisplay;Ljava/lang/Appendable;Lnet/time4j/engine/AttributeQuery;Z)Ljava/util/Set;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2829
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 2826
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private freeze(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/time4j/format/expert/FormatStep;",
            ">;)",
            "Ljava/util/List<",
            "Lnet/time4j/format/expert/FormatStep;",
            ">;"
        }
    .end annotation

    .line 3688
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3690
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/time4j/format/expert/FormatStep;

    .line 3691
    invoke-virtual {v1, p0}, Lnet/time4j/format/expert/FormatStep;->quickPath(Lnet/time4j/format/expert/ChronoFormatter;)Lnet/time4j/format/expert/FormatStep;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3694
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private static getDepth(Lnet/time4j/engine/Chronology;Lnet/time4j/engine/Chronology;Lnet/time4j/engine/Chronology;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/Chronology<",
            "*>;",
            "Lnet/time4j/engine/Chronology<",
            "*>;",
            "Lnet/time4j/engine/Chronology<",
            "*>;)I"
        }
    .end annotation

    if-eqz p2, :cond_0

    const/4 p0, -0x1

    return p0

    .line 3668
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    return v0

    .line 3675
    :cond_1
    invoke-virtual {p1}, Lnet/time4j/engine/Chronology;->preparser()Lnet/time4j/engine/Chronology;

    move-result-object p1

    if-eqz p1, :cond_2

    add-int/lit8 v0, v0, 0x1

    .line 3677
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return v0

    :cond_2
    const p0, 0x7fffffff

    return p0
.end method

.method private static getDescription(Lnet/time4j/engine/ChronoEntity;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoEntity<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 3567
    invoke-virtual {p0}, Lnet/time4j/engine/ChronoEntity;->getRegisteredElements()Ljava/util/Set;

    move-result-object v0

    .line 3568
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x10

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, " [parsed={"

    .line 3569
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3572
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/time4j/engine/ChronoElement;

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :cond_0
    const-string v4, ", "

    .line 3576
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3579
    :goto_1
    invoke-interface {v3}, Lnet/time4j/engine/ChronoElement;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x3d

    .line 3580
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3581
    invoke-virtual {p0, v3}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string p0, "}]"

    .line 3584
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3585
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getPattern0(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 2815
    iget-object v0, p0, Lnet/time4j/format/expert/ChronoFormatter;->globalAttributes:Lnet/time4j/format/expert/AttributeSet;

    sget-object v1, Lnet/time4j/format/Attributes;->FORMAT_PATTERN:Lnet/time4j/engine/AttributeKey;

    invoke-virtual {v0, v1, p1}, Lnet/time4j/format/expert/AttributeSet;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method private static getReason(Lnet/time4j/engine/ChronoEntity;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoEntity<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 3188
    sget-object v0, Lnet/time4j/engine/ValidationElement;->ERROR_MESSAGE:Lnet/time4j/engine/ValidationElement;

    invoke-virtual {p0, v0}, Lnet/time4j/engine/ChronoEntity;->contains(Lnet/time4j/engine/ChronoElement;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Validation failed => "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lnet/time4j/engine/ValidationElement;->ERROR_MESSAGE:Lnet/time4j/engine/ValidationElement;

    .line 3191
    invoke-virtual {p0, v1}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3192
    sget-object v1, Lnet/time4j/engine/ValidationElement;->ERROR_MESSAGE:Lnet/time4j/engine/ValidationElement;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lnet/time4j/engine/ChronoEntity;->with(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Lnet/time4j/engine/ChronoEntity;

    goto :goto_0

    :cond_0
    const-string v0, "Insufficient data:"

    :goto_0
    return-object v0
.end method

.method private getSingleStepMode()Z
    .locals 4

    .line 2798
    invoke-virtual {p0}, Lnet/time4j/format/expert/ChronoFormatter;->isSingleStepOptimizationPossible()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2801
    iget-object v2, p0, Lnet/time4j/format/expert/ChronoFormatter;->steps:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/time4j/format/expert/FormatStep;

    invoke-virtual {v2}, Lnet/time4j/format/expert/FormatStep;->getProcessor()Lnet/time4j/format/expert/FormatProcessor;

    move-result-object v2

    .line 2802
    instance-of v3, v2, Lnet/time4j/format/expert/CustomizedProcessor;

    if-eqz v3, :cond_0

    .line 2803
    const-class v0, Lnet/time4j/format/expert/CustomizedProcessor;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/format/expert/CustomizedProcessor;

    invoke-virtual {v0}, Lnet/time4j/format/expert/CustomizedProcessor;->isSingleStepMode()Z

    move-result v0

    goto :goto_0

    .line 2804
    :cond_0
    instance-of v2, v2, Lnet/time4j/format/expert/StyleProcessor;

    if-nez v2, :cond_1

    move v0, v1

    :cond_1
    :goto_0
    return v0
.end method

.method private hasNoPreparser()Z
    .locals 1

    .line 3700
    iget-object v0, p0, Lnet/time4j/format/expert/ChronoFormatter;->chronology:Lnet/time4j/engine/Chronology;

    invoke-virtual {v0}, Lnet/time4j/engine/Chronology;->preparser()Lnet/time4j/engine/Chronology;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/time4j/format/expert/ChronoFormatter;->overrideHandler:Lnet/time4j/format/expert/ChronoFormatter$OverrideHandler;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    .line 3206
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method private static needsExtension(Lnet/time4j/engine/Chronology;Lnet/time4j/engine/Chronology;Lnet/time4j/engine/ChronoElement;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/Chronology<",
            "*>;",
            "Lnet/time4j/engine/Chronology<",
            "*>;",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;)Z"
        }
    .end annotation

    .line 3624
    invoke-virtual {p0}, Lnet/time4j/engine/Chronology;->getExtensions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/time4j/engine/ChronoExtension;

    .line 3625
    invoke-interface {v1, p2}, Lnet/time4j/engine/ChronoExtension;->canResolve(Lnet/time4j/engine/ChronoElement;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    :cond_1
    if-nez p1, :cond_4

    .line 3632
    :cond_2
    invoke-virtual {p0}, Lnet/time4j/engine/Chronology;->preparser()Lnet/time4j/engine/Chronology;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 3633
    invoke-virtual {p0}, Lnet/time4j/engine/Chronology;->getExtensions()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/engine/ChronoExtension;

    .line 3634
    invoke-interface {v0, p2}, Lnet/time4j/engine/ChronoExtension;->canResolve(Lnet/time4j/engine/ChronoElement;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    .line 3639
    :cond_4
    invoke-interface {p2}, Lnet/time4j/engine/ChronoElement;->isDateElement()Z

    move-result p0

    if-eqz p0, :cond_7

    .line 3640
    :goto_0
    instance-of p0, p1, Lnet/time4j/engine/BridgeChronology;

    if-eqz p0, :cond_5

    .line 3641
    invoke-virtual {p1}, Lnet/time4j/engine/Chronology;->preparser()Lnet/time4j/engine/Chronology;

    move-result-object p1

    goto :goto_0

    .line 3643
    :cond_5
    invoke-virtual {p1}, Lnet/time4j/engine/Chronology;->getExtensions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/engine/ChronoExtension;

    .line 3644
    invoke-interface {p1, p2}, Lnet/time4j/engine/ChronoExtension;->canResolve(Lnet/time4j/engine/ChronoElement;)Z

    move-result p1

    if-eqz p1, :cond_6

    return v2

    .line 3648
    :cond_7
    invoke-interface {p2}, Lnet/time4j/engine/ChronoElement;->isTimeElement()Z

    move-result p0

    if-eqz p0, :cond_9

    invoke-static {}, Lnet/time4j/PlainTime;->axis()Lnet/time4j/engine/TimeAxis;

    move-result-object p0

    invoke-virtual {p0, p2}, Lnet/time4j/engine/TimeAxis;->isSupported(Lnet/time4j/engine/ChronoElement;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 3649
    invoke-static {}, Lnet/time4j/PlainTime;->axis()Lnet/time4j/engine/TimeAxis;

    move-result-object p0

    invoke-virtual {p0}, Lnet/time4j/engine/TimeAxis;->getExtensions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/engine/ChronoExtension;

    .line 3650
    invoke-interface {p1, p2}, Lnet/time4j/engine/ChronoExtension;->canResolve(Lnet/time4j/engine/ChronoElement;)Z

    move-result p1

    if-eqz p1, :cond_8

    return v2

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public static ofDatePattern(Ljava/lang/String;Lnet/time4j/format/expert/PatternType;Ljava/util/Locale;)Lnet/time4j/format/expert/ChronoFormatter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lnet/time4j/format/expert/PatternType;",
            "Ljava/util/Locale;",
            ")",
            "Lnet/time4j/format/expert/ChronoFormatter<",
            "Lnet/time4j/PlainDate;",
            ">;"
        }
    .end annotation

    .line 2124
    new-instance v0, Lnet/time4j/format/expert/ChronoFormatter$Builder;

    invoke-static {}, Lnet/time4j/PlainDate;->axis()Lnet/time4j/engine/TimeAxis;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p2, v2}, Lnet/time4j/format/expert/ChronoFormatter$Builder;-><init>(Lnet/time4j/engine/Chronology;Ljava/util/Locale;Lnet/time4j/format/expert/ChronoFormatter$1;)V

    .line 2125
    invoke-static {v0, p0, p1}, Lnet/time4j/format/expert/ChronoFormatter;->addPattern(Lnet/time4j/format/expert/ChronoFormatter$Builder;Ljava/lang/String;Lnet/time4j/format/expert/PatternType;)V

    .line 2128
    :try_start_0
    invoke-virtual {v0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->build()Lnet/time4j/format/expert/ChronoFormatter;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2130
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static ofDateStyle(Lnet/time4j/format/DisplayMode;Ljava/util/Locale;)Lnet/time4j/format/expert/ChronoFormatter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/format/DisplayMode;",
            "Ljava/util/Locale;",
            ")",
            "Lnet/time4j/format/expert/ChronoFormatter<",
            "Lnet/time4j/PlainDate;",
            ">;"
        }
    .end annotation

    .line 2410
    new-instance v0, Lnet/time4j/format/expert/ChronoFormatter$Builder;

    invoke-static {}, Lnet/time4j/PlainDate;->axis()Lnet/time4j/engine/TimeAxis;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lnet/time4j/format/expert/ChronoFormatter$Builder;-><init>(Lnet/time4j/engine/Chronology;Ljava/util/Locale;Lnet/time4j/format/expert/ChronoFormatter$1;)V

    .line 2411
    new-instance p1, Lnet/time4j/format/expert/StyleProcessor;

    invoke-direct {p1, p0, p0}, Lnet/time4j/format/expert/StyleProcessor;-><init>(Lnet/time4j/engine/DisplayStyle;Lnet/time4j/engine/DisplayStyle;)V

    invoke-static {v0, p1}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->access$100(Lnet/time4j/format/expert/ChronoFormatter$Builder;Lnet/time4j/format/expert/FormatProcessor;)V

    .line 2412
    invoke-virtual {v0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->build()Lnet/time4j/format/expert/ChronoFormatter;

    move-result-object p0

    return-object p0
.end method

.method public static ofMomentPattern(Ljava/lang/String;Lnet/time4j/format/expert/PatternType;Ljava/util/Locale;Lnet/time4j/tz/TZID;)Lnet/time4j/format/expert/ChronoFormatter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lnet/time4j/format/expert/PatternType;",
            "Ljava/util/Locale;",
            "Lnet/time4j/tz/TZID;",
            ")",
            "Lnet/time4j/format/expert/ChronoFormatter<",
            "Lnet/time4j/Moment;",
            ">;"
        }
    .end annotation

    .line 2299
    new-instance v0, Lnet/time4j/format/expert/ChronoFormatter$Builder;

    invoke-static {}, Lnet/time4j/Moment;->axis()Lnet/time4j/engine/TimeAxis;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p2, v2}, Lnet/time4j/format/expert/ChronoFormatter$Builder;-><init>(Lnet/time4j/engine/Chronology;Ljava/util/Locale;Lnet/time4j/format/expert/ChronoFormatter$1;)V

    .line 2300
    invoke-static {v0, p0, p1}, Lnet/time4j/format/expert/ChronoFormatter;->addPattern(Lnet/time4j/format/expert/ChronoFormatter$Builder;Ljava/lang/String;Lnet/time4j/format/expert/PatternType;)V

    .line 2303
    :try_start_0
    invoke-virtual {v0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->build()Lnet/time4j/format/expert/ChronoFormatter;

    move-result-object p0

    invoke-virtual {p0, p3}, Lnet/time4j/format/expert/ChronoFormatter;->withTimezone(Lnet/time4j/tz/TZID;)Lnet/time4j/format/expert/ChronoFormatter;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2305
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static ofMomentPattern(Ljava/lang/String;Lnet/time4j/format/expert/PatternType;Ljava/util/Locale;)Lnet/time4j/format/expert/ChronoParser;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lnet/time4j/format/expert/PatternType;",
            "Ljava/util/Locale;",
            ")",
            "Lnet/time4j/format/expert/ChronoParser<",
            "Lnet/time4j/Moment;",
            ">;"
        }
    .end annotation

    .line 2246
    new-instance v0, Lnet/time4j/format/expert/ChronoFormatter$Builder;

    invoke-static {}, Lnet/time4j/Moment;->axis()Lnet/time4j/engine/TimeAxis;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p2, v2}, Lnet/time4j/format/expert/ChronoFormatter$Builder;-><init>(Lnet/time4j/engine/Chronology;Ljava/util/Locale;Lnet/time4j/format/expert/ChronoFormatter$1;)V

    .line 2247
    invoke-static {v0, p0, p1}, Lnet/time4j/format/expert/ChronoFormatter;->addPattern(Lnet/time4j/format/expert/ChronoFormatter$Builder;Ljava/lang/String;Lnet/time4j/format/expert/PatternType;)V

    .line 2250
    :try_start_0
    invoke-virtual {v0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->build()Lnet/time4j/format/expert/ChronoFormatter;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2252
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static ofMomentStyle(Lnet/time4j/format/DisplayMode;Lnet/time4j/format/DisplayMode;Ljava/util/Locale;Lnet/time4j/tz/TZID;)Lnet/time4j/format/expert/ChronoFormatter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/format/DisplayMode;",
            "Lnet/time4j/format/DisplayMode;",
            "Ljava/util/Locale;",
            "Lnet/time4j/tz/TZID;",
            ")",
            "Lnet/time4j/format/expert/ChronoFormatter<",
            "Lnet/time4j/Moment;",
            ">;"
        }
    .end annotation

    .line 2508
    new-instance v0, Lnet/time4j/format/expert/ChronoFormatter$Builder;

    invoke-static {}, Lnet/time4j/Moment;->axis()Lnet/time4j/engine/TimeAxis;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p2, v2}, Lnet/time4j/format/expert/ChronoFormatter$Builder;-><init>(Lnet/time4j/engine/Chronology;Ljava/util/Locale;Lnet/time4j/format/expert/ChronoFormatter$1;)V

    .line 2509
    new-instance p2, Lnet/time4j/format/expert/StyleProcessor;

    invoke-direct {p2, p0, p1}, Lnet/time4j/format/expert/StyleProcessor;-><init>(Lnet/time4j/engine/DisplayStyle;Lnet/time4j/engine/DisplayStyle;)V

    invoke-static {v0, p2}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->access$100(Lnet/time4j/format/expert/ChronoFormatter$Builder;Lnet/time4j/format/expert/FormatProcessor;)V

    .line 2510
    invoke-virtual {v0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->build()Lnet/time4j/format/expert/ChronoFormatter;

    move-result-object p0

    invoke-virtual {p0, p3}, Lnet/time4j/format/expert/ChronoFormatter;->withTimezone(Lnet/time4j/tz/TZID;)Lnet/time4j/format/expert/ChronoFormatter;

    move-result-object p0

    return-object p0
.end method

.method public static ofPattern(Ljava/lang/String;Lnet/time4j/format/expert/PatternType;Ljava/util/Locale;Lnet/time4j/engine/Chronology;)Lnet/time4j/format/expert/ChronoFormatter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lnet/time4j/format/expert/PatternType;",
            "Ljava/util/Locale;",
            "Lnet/time4j/engine/Chronology<",
            "TT;>;)",
            "Lnet/time4j/format/expert/ChronoFormatter<",
            "TT;>;"
        }
    .end annotation

    .line 2375
    new-instance v0, Lnet/time4j/format/expert/ChronoFormatter$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p3, p2, v1}, Lnet/time4j/format/expert/ChronoFormatter$Builder;-><init>(Lnet/time4j/engine/Chronology;Ljava/util/Locale;Lnet/time4j/format/expert/ChronoFormatter$1;)V

    .line 2376
    invoke-static {v0, p0, p1}, Lnet/time4j/format/expert/ChronoFormatter;->addPattern(Lnet/time4j/format/expert/ChronoFormatter$Builder;Ljava/lang/String;Lnet/time4j/format/expert/PatternType;)V

    .line 2379
    :try_start_0
    invoke-virtual {v0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->build()Lnet/time4j/format/expert/ChronoFormatter;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2381
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static ofStyle(Lnet/time4j/engine/DisplayStyle;Ljava/util/Locale;Lnet/time4j/engine/Chronology;)Lnet/time4j/format/expert/ChronoFormatter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lnet/time4j/format/LocalizedPatternSupport;",
            ">(",
            "Lnet/time4j/engine/DisplayStyle;",
            "Ljava/util/Locale;",
            "Lnet/time4j/engine/Chronology<",
            "TT;>;)",
            "Lnet/time4j/format/expert/ChronoFormatter<",
            "TT;>;"
        }
    .end annotation

    .line 2544
    const-class v0, Lnet/time4j/format/LocalizedPatternSupport;

    invoke-virtual {p2}, Lnet/time4j/engine/Chronology;->getChronoType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2545
    new-instance v0, Lnet/time4j/format/expert/ChronoFormatter$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p1, v1}, Lnet/time4j/format/expert/ChronoFormatter$Builder;-><init>(Lnet/time4j/engine/Chronology;Ljava/util/Locale;Lnet/time4j/format/expert/ChronoFormatter$1;)V

    .line 2546
    new-instance p1, Lnet/time4j/format/expert/StyleProcessor;

    invoke-direct {p1, p0, p0}, Lnet/time4j/format/expert/StyleProcessor;-><init>(Lnet/time4j/engine/DisplayStyle;Lnet/time4j/engine/DisplayStyle;)V

    invoke-static {v0, p1}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->access$100(Lnet/time4j/format/expert/ChronoFormatter$Builder;Lnet/time4j/format/expert/FormatProcessor;)V

    .line 2547
    invoke-virtual {v0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->build()Lnet/time4j/format/expert/ChronoFormatter;

    move-result-object p0

    return-object p0

    .line 2548
    :cond_0
    invoke-static {}, Lnet/time4j/Moment;->axis()Lnet/time4j/engine/TimeAxis;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 2549
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Timezone required, use \'ofMomentStyle()\' instead."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2551
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Localized format patterns not available: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static ofTimePattern(Ljava/lang/String;Lnet/time4j/format/expert/PatternType;Ljava/util/Locale;)Lnet/time4j/format/expert/ChronoFormatter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lnet/time4j/format/expert/PatternType;",
            "Ljava/util/Locale;",
            ")",
            "Lnet/time4j/format/expert/ChronoFormatter<",
            "Lnet/time4j/PlainTime;",
            ">;"
        }
    .end annotation

    .line 2163
    new-instance v0, Lnet/time4j/format/expert/ChronoFormatter$Builder;

    invoke-static {}, Lnet/time4j/PlainTime;->axis()Lnet/time4j/engine/TimeAxis;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p2, v2}, Lnet/time4j/format/expert/ChronoFormatter$Builder;-><init>(Lnet/time4j/engine/Chronology;Ljava/util/Locale;Lnet/time4j/format/expert/ChronoFormatter$1;)V

    .line 2164
    invoke-static {v0, p0, p1}, Lnet/time4j/format/expert/ChronoFormatter;->addPattern(Lnet/time4j/format/expert/ChronoFormatter$Builder;Ljava/lang/String;Lnet/time4j/format/expert/PatternType;)V

    .line 2167
    :try_start_0
    invoke-virtual {v0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->build()Lnet/time4j/format/expert/ChronoFormatter;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2169
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static ofTimeStyle(Lnet/time4j/format/DisplayMode;Ljava/util/Locale;)Lnet/time4j/format/expert/ChronoFormatter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/format/DisplayMode;",
            "Ljava/util/Locale;",
            ")",
            "Lnet/time4j/format/expert/ChronoFormatter<",
            "Lnet/time4j/PlainTime;",
            ">;"
        }
    .end annotation

    .line 2439
    new-instance v0, Lnet/time4j/format/expert/ChronoFormatter$Builder;

    invoke-static {}, Lnet/time4j/PlainTime;->axis()Lnet/time4j/engine/TimeAxis;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lnet/time4j/format/expert/ChronoFormatter$Builder;-><init>(Lnet/time4j/engine/Chronology;Ljava/util/Locale;Lnet/time4j/format/expert/ChronoFormatter$1;)V

    .line 2440
    new-instance p1, Lnet/time4j/format/expert/StyleProcessor;

    invoke-direct {p1, p0, p0}, Lnet/time4j/format/expert/StyleProcessor;-><init>(Lnet/time4j/engine/DisplayStyle;Lnet/time4j/engine/DisplayStyle;)V

    invoke-static {v0, p1}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->access$100(Lnet/time4j/format/expert/ChronoFormatter$Builder;Lnet/time4j/format/expert/FormatProcessor;)V

    .line 2441
    invoke-virtual {v0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->build()Lnet/time4j/format/expert/ChronoFormatter;

    move-result-object p0

    return-object p0
.end method

.method public static ofTimestampPattern(Ljava/lang/String;Lnet/time4j/format/expert/PatternType;Ljava/util/Locale;)Lnet/time4j/format/expert/ChronoFormatter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lnet/time4j/format/expert/PatternType;",
            "Ljava/util/Locale;",
            ")",
            "Lnet/time4j/format/expert/ChronoFormatter<",
            "Lnet/time4j/PlainTimestamp;",
            ">;"
        }
    .end annotation

    .line 2202
    new-instance v0, Lnet/time4j/format/expert/ChronoFormatter$Builder;

    invoke-static {}, Lnet/time4j/PlainTimestamp;->axis()Lnet/time4j/engine/TimeAxis;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p2, v2}, Lnet/time4j/format/expert/ChronoFormatter$Builder;-><init>(Lnet/time4j/engine/Chronology;Ljava/util/Locale;Lnet/time4j/format/expert/ChronoFormatter$1;)V

    .line 2203
    invoke-static {v0, p0, p1}, Lnet/time4j/format/expert/ChronoFormatter;->addPattern(Lnet/time4j/format/expert/ChronoFormatter$Builder;Ljava/lang/String;Lnet/time4j/format/expert/PatternType;)V

    .line 2206
    :try_start_0
    invoke-virtual {v0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->build()Lnet/time4j/format/expert/ChronoFormatter;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2208
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static ofTimestampStyle(Lnet/time4j/format/DisplayMode;Lnet/time4j/format/DisplayMode;Ljava/util/Locale;)Lnet/time4j/format/expert/ChronoFormatter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/format/DisplayMode;",
            "Lnet/time4j/format/DisplayMode;",
            "Ljava/util/Locale;",
            ")",
            "Lnet/time4j/format/expert/ChronoFormatter<",
            "Lnet/time4j/PlainTimestamp;",
            ">;"
        }
    .end annotation

    .line 2471
    new-instance v0, Lnet/time4j/format/expert/ChronoFormatter$Builder;

    invoke-static {}, Lnet/time4j/PlainTimestamp;->axis()Lnet/time4j/engine/TimeAxis;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p2, v2}, Lnet/time4j/format/expert/ChronoFormatter$Builder;-><init>(Lnet/time4j/engine/Chronology;Ljava/util/Locale;Lnet/time4j/format/expert/ChronoFormatter$1;)V

    .line 2472
    new-instance p2, Lnet/time4j/format/expert/StyleProcessor;

    invoke-direct {p2, p0, p1}, Lnet/time4j/format/expert/StyleProcessor;-><init>(Lnet/time4j/engine/DisplayStyle;Lnet/time4j/engine/DisplayStyle;)V

    invoke-static {v0, p2}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->access$100(Lnet/time4j/format/expert/ChronoFormatter$Builder;Lnet/time4j/format/expert/FormatProcessor;)V

    .line 2473
    invoke-virtual {v0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->build()Lnet/time4j/format/expert/ChronoFormatter;

    move-result-object p0

    return-object p0
.end method

.method private static parse(Lnet/time4j/format/expert/ChronoFormatter;Lnet/time4j/engine/ChronoMerger;Ljava/util/List;Ljava/lang/CharSequence;Lnet/time4j/format/expert/ParseLog;Lnet/time4j/engine/AttributeQuery;Lnet/time4j/format/Leniency;ZZ)Ljava/lang/Object;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/time4j/format/expert/ChronoFormatter<",
            "*>;",
            "Lnet/time4j/engine/ChronoMerger<",
            "TT;>;",
            "Ljava/util/List<",
            "Lnet/time4j/engine/ChronoExtension;",
            ">;",
            "Ljava/lang/CharSequence;",
            "Lnet/time4j/format/expert/ParseLog;",
            "Lnet/time4j/engine/AttributeQuery;",
            "Lnet/time4j/format/Leniency;",
            "ZZ)TT;"
        }
    .end annotation

    move-object v7, p0

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p7

    .line 3051
    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    move-result v11

    .line 3053
    invoke-virtual/range {p4 .. p4}, Lnet/time4j/format/expert/ParseLog;->getPosition()I

    move-result v0

    if-ge v0, v11, :cond_10

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 3062
    :try_start_0
    iget-boolean v0, v7, Lnet/time4j/format/expert/ChronoFormatter;->singleStepMode:Z

    if-eqz v0, :cond_2

    if-nez v10, :cond_2

    .line 3063
    new-instance v14, Lnet/time4j/format/expert/ParsedValue;

    invoke-direct {v14}, Lnet/time4j/format/expert/ParsedValue;-><init>()V

    .line 3064
    iget-object v0, v7, Lnet/time4j/format/expert/ChronoFormatter;->steps:Ljava/util/List;

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lnet/time4j/format/expert/FormatStep;

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object v5, v14

    move/from16 v6, p8

    invoke-virtual/range {v1 .. v6}, Lnet/time4j/format/expert/FormatStep;->parse(Ljava/lang/CharSequence;Lnet/time4j/format/expert/ParseLog;Lnet/time4j/engine/AttributeQuery;Lnet/time4j/format/expert/ParsedEntity;Z)V

    .line 3065
    invoke-virtual/range {p4 .. p4}, Lnet/time4j/format/expert/ParseLog;->isError()Z

    move-result v0
    :try_end_0
    .catch Lnet/time4j/format/expert/AmbivalentValueException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v0, :cond_0

    return-object v13

    .line 3069
    :cond_0
    :try_start_1
    invoke-virtual {v14}, Lnet/time4j/format/expert/ParsedValue;->getResult()Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lnet/time4j/format/expert/AmbivalentValueException; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v0, :cond_1

    return-object v0

    .line 3077
    :catch_0
    :cond_1
    :try_start_2
    invoke-virtual {v8, v14}, Lnet/time4j/format/expert/ParseLog;->setRawValues(Lnet/time4j/engine/ChronoEntity;)V
    :try_end_2
    .catch Lnet/time4j/format/expert/AmbivalentValueException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 3079
    :cond_2
    :try_start_3
    iget v6, v7, Lnet/time4j/format/expert/ChronoFormatter;->countOfElements:I

    move-object v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move/from16 v5, p8

    invoke-direct/range {v1 .. v6}, Lnet/time4j/format/expert/ChronoFormatter;->parseElements(Ljava/lang/CharSequence;Lnet/time4j/format/expert/ParseLog;Lnet/time4j/engine/AttributeQuery;ZI)Lnet/time4j/engine/ChronoEntity;

    move-result-object v14
    :try_end_3
    .catch Lnet/time4j/format/expert/AmbivalentValueException; {:try_start_3 .. :try_end_3} :catch_2

    .line 3080
    :try_start_4
    invoke-virtual {v8, v14}, Lnet/time4j/format/expert/ParseLog;->setRawValues(Lnet/time4j/engine/ChronoEntity;)V
    :try_end_4
    .catch Lnet/time4j/format/expert/AmbivalentValueException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    move-object v14, v13

    .line 3083
    :goto_0
    invoke-virtual/range {p4 .. p4}, Lnet/time4j/format/expert/ParseLog;->isError()Z

    move-result v1

    if-nez v1, :cond_3

    .line 3084
    invoke-virtual/range {p4 .. p4}, Lnet/time4j/format/expert/ParseLog;->getPosition()I

    move-result v1

    invoke-virtual {v0}, Lnet/time4j/format/expert/AmbivalentValueException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v1, v0}, Lnet/time4j/format/expert/ParseLog;->setError(ILjava/lang/String;)V

    :cond_3
    :goto_1
    if-eqz v14, :cond_f

    .line 3088
    invoke-virtual/range {p4 .. p4}, Lnet/time4j/format/expert/ParseLog;->isError()Z

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_4

    .line 3093
    :cond_4
    iget-object v0, v7, Lnet/time4j/format/expert/ChronoFormatter;->defaults:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 3095
    iget-object v0, v7, Lnet/time4j/format/expert/ChronoFormatter;->defaults:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v1, v13

    :cond_5
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/time4j/engine/ChronoElement;

    .line 3096
    invoke-virtual {v14, v2}, Lnet/time4j/engine/ChronoEntity;->contains(Lnet/time4j/engine/ChronoElement;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 3097
    invoke-interface {v2}, Lnet/time4j/engine/ChronoElement;->getSymbol()C

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_8

    if-nez v1, :cond_6

    .line 3101
    invoke-virtual {v14}, Lnet/time4j/engine/ChronoEntity;->getRegisteredElements()Ljava/util/Set;

    move-result-object v1

    .line 3103
    :cond_6
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/time4j/engine/ChronoElement;

    .line 3104
    invoke-interface {v6}, Lnet/time4j/engine/ChronoElement;->getSymbol()C

    move-result v6

    if-ne v6, v3, :cond_7

    move v4, v12

    :cond_8
    if-eqz v4, :cond_5

    .line 3111
    iget-object v3, v7, Lnet/time4j/format/expert/ChronoFormatter;->defaults:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v14, v2, v3}, Lnet/time4j/format/expert/ChronoFormatter;->setValue(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)V

    goto :goto_2

    .line 3118
    :cond_9
    iget-boolean v0, v7, Lnet/time4j/format/expert/ChronoFormatter;->needsExtensions:Z

    if-eqz v0, :cond_a

    .line 3120
    :try_start_5
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/time4j/engine/ChronoExtension;

    .line 3121
    invoke-virtual {p0}, Lnet/time4j/format/expert/ChronoFormatter;->getLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-interface {v1, v14, v2, v9}, Lnet/time4j/engine/ChronoExtension;->resolve(Lnet/time4j/engine/ChronoEntity;Ljava/util/Locale;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/engine/ChronoEntity;

    move-result-object v14
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    .line 3124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3126
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v14}, Lnet/time4j/format/expert/ChronoFormatter;->getDescription(Lnet/time4j/engine/ChronoEntity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3124
    invoke-virtual {v8, v11, v0}, Lnet/time4j/format/expert/ParseLog;->setError(ILjava/lang/String;)V

    return-object v13

    .line 3135
    :cond_a
    :try_start_6
    invoke-virtual/range {p6 .. p6}, Lnet/time4j/format/Leniency;->isLax()Z

    move-result v0

    move-object/from16 v1, p1

    invoke-interface {v1, v14, v9, v0, v10}, Lnet/time4j/engine/ChronoMerger;->createFrom(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/engine/AttributeQuery;ZZ)Ljava/lang/Object;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_4

    .line 3143
    iget-object v1, v7, Lnet/time4j/format/expert/ChronoFormatter;->fracproc:Lnet/time4j/format/expert/FractionProcessor;

    if-eqz v1, :cond_b

    instance-of v1, v0, Lnet/time4j/engine/ChronoEntity;

    if-eqz v1, :cond_b

    .line 3147
    const-class v1, Lnet/time4j/engine/ChronoEntity;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/engine/ChronoEntity;

    .line 3148
    iget-object v1, v7, Lnet/time4j/format/expert/ChronoFormatter;->fracproc:Lnet/time4j/format/expert/FractionProcessor;

    invoke-virtual {v1, v0, v14}, Lnet/time4j/format/expert/FractionProcessor;->update(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/engine/ChronoEntity;)Lnet/time4j/engine/ChronoEntity;

    move-result-object v0

    invoke-static {v0}, Lnet/time4j/format/expert/ChronoFormatter;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_b
    if-nez v0, :cond_d

    if-nez v10, :cond_c

    .line 3154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3156
    invoke-static {v14}, Lnet/time4j/format/expert/ChronoFormatter;->getReason(Lnet/time4j/engine/ChronoEntity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v14}, Lnet/time4j/format/expert/ChronoFormatter;->getDescription(Lnet/time4j/engine/ChronoEntity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3154
    invoke-virtual {v8, v11, v0}, Lnet/time4j/format/expert/ParseLog;->setError(ILjava/lang/String;)V

    :cond_c
    return-object v13

    .line 3159
    :cond_d
    invoke-virtual/range {p6 .. p6}, Lnet/time4j/format/Leniency;->isStrict()Z

    move-result v1

    if-eqz v1, :cond_e

    move-object/from16 v1, p3

    .line 3160
    invoke-static {v14, v0, v1, v8}, Lnet/time4j/format/expert/ChronoFormatter;->checkConsistency(Lnet/time4j/engine/ChronoEntity;Ljava/lang/Object;Ljava/lang/CharSequence;Lnet/time4j/format/expert/ParseLog;)Ljava/lang/Object;

    move-result-object v0

    :cond_e
    return-object v0

    :catch_4
    move-exception v0

    .line 3137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3139
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v14}, Lnet/time4j/format/expert/ChronoFormatter;->getDescription(Lnet/time4j/engine/ChronoEntity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3137
    invoke-virtual {v8, v11, v0}, Lnet/time4j/format/expert/ParseLog;->setError(ILjava/lang/String;)V

    :cond_f
    :goto_4
    return-object v13

    :cond_10
    move-object/from16 v1, p3

    .line 3054
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3055
    invoke-virtual/range {p4 .. p4}, Lnet/time4j/format/expert/ParseLog;->getPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static parse(Lnet/time4j/format/expert/ChronoFormatter;Lnet/time4j/engine/Chronology;ILjava/lang/CharSequence;Lnet/time4j/format/expert/ParseLog;Lnet/time4j/engine/AttributeQuery;Lnet/time4j/format/Leniency;Z)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/time4j/format/expert/ChronoFormatter<",
            "*>;",
            "Lnet/time4j/engine/Chronology<",
            "TC;>;I",
            "Ljava/lang/CharSequence;",
            "Lnet/time4j/format/expert/ParseLog;",
            "Lnet/time4j/engine/AttributeQuery;",
            "Lnet/time4j/format/Leniency;",
            "Z)TC;"
        }
    .end annotation

    move-object v0, p1

    move-object/from16 v10, p4

    .line 2970
    invoke-virtual {p1}, Lnet/time4j/engine/Chronology;->preparser()Lnet/time4j/engine/Chronology;

    move-result-object v11

    const/4 v1, 0x1

    const/4 v12, 0x0

    move-object v2, p0

    if-eqz v11, :cond_9

    .line 2972
    iget-object v3, v2, Lnet/time4j/format/expert/ChronoFormatter;->deepestParser:Lnet/time4j/engine/Chronology;

    if-ne v0, v3, :cond_0

    goto/16 :goto_3

    :cond_0
    if-ne v11, v3, :cond_1

    .line 2979
    invoke-virtual {v11}, Lnet/time4j/engine/Chronology;->getExtensions()Ljava/util/List;

    move-result-object v3

    const/4 v8, 0x1

    move-object v1, p0

    move-object v2, v11

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v9, p7

    invoke-static/range {v1 .. v9}, Lnet/time4j/format/expert/ChronoFormatter;->parse(Lnet/time4j/format/expert/ChronoFormatter;Lnet/time4j/engine/ChronoMerger;Ljava/util/List;Ljava/lang/CharSequence;Lnet/time4j/format/expert/ParseLog;Lnet/time4j/engine/AttributeQuery;Lnet/time4j/format/Leniency;ZZ)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_1
    add-int/lit8 v3, p2, 0x1

    move-object v1, p0

    move-object v2, v11

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    .line 2981
    invoke-static/range {v1 .. v8}, Lnet/time4j/format/expert/ChronoFormatter;->parse(Lnet/time4j/format/expert/ChronoFormatter;Lnet/time4j/engine/Chronology;ILjava/lang/CharSequence;Lnet/time4j/format/expert/ParseLog;Lnet/time4j/engine/AttributeQuery;Lnet/time4j/format/Leniency;Z)Ljava/lang/Object;

    move-result-object v1

    .line 2984
    :goto_0
    invoke-virtual/range {p4 .. p4}, Lnet/time4j/format/expert/ParseLog;->isError()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    return-object v3

    :cond_2
    if-nez v1, :cond_3

    .line 2987
    invoke-virtual/range {p4 .. p4}, Lnet/time4j/format/expert/ParseLog;->getRawValues()Lnet/time4j/engine/ChronoEntity;

    move-result-object v0

    .line 2989
    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2990
    invoke-static {v0}, Lnet/time4j/format/expert/ChronoFormatter;->getReason(Lnet/time4j/engine/ChronoEntity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lnet/time4j/format/expert/ChronoFormatter;->getDescription(Lnet/time4j/engine/ChronoEntity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2988
    invoke-virtual {v10, v1, v0}, Lnet/time4j/format/expert/ParseLog;->setError(ILjava/lang/String;)V

    return-object v3

    .line 2994
    :cond_3
    invoke-virtual/range {p4 .. p4}, Lnet/time4j/format/expert/ParseLog;->getRawValues0()Lnet/time4j/engine/ChronoEntity;

    move-result-object v2

    .line 2998
    :try_start_0
    instance-of v4, v11, Lnet/time4j/engine/TimeAxis;

    if-eqz v4, :cond_4

    .line 2999
    const-class v4, Lnet/time4j/engine/TimeAxis;

    invoke-virtual {v4, v11}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/time4j/engine/TimeAxis;

    invoke-virtual {v4}, Lnet/time4j/engine/TimeAxis;->element()Lnet/time4j/engine/ChronoElement;

    move-result-object v4

    .line 3000
    invoke-static {v2, v4, v1}, Lnet/time4j/format/expert/ChronoFormatter;->updateSelf(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)V

    .line 3001
    invoke-virtual/range {p6 .. p6}, Lnet/time4j/format/Leniency;->isLax()Z

    move-result v1

    move-object/from16 v6, p5

    invoke-virtual {p1, v2, v6, v1, v12}, Lnet/time4j/engine/Chronology;->createFrom(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/engine/AttributeQuery;ZZ)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 3002
    :cond_4
    instance-of v4, v0, Lnet/time4j/engine/BridgeChronology;

    if-eqz v4, :cond_8

    .line 3003
    const-class v4, Lnet/time4j/engine/ChronoEntity;

    invoke-virtual {v4, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/time4j/engine/ChronoEntity;

    invoke-static {}, Lnet/time4j/format/Attributes;->empty()Lnet/time4j/format/Attributes;

    move-result-object v4

    invoke-virtual {p1, v1, v4, v12, v12}, Lnet/time4j/engine/Chronology;->createFrom(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/engine/AttributeQuery;ZZ)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    if-nez v0, :cond_6

    .line 3015
    invoke-virtual/range {p4 .. p4}, Lnet/time4j/format/expert/ParseLog;->isError()Z

    move-result v0

    if-nez v0, :cond_5

    .line 3017
    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3018
    invoke-static {v2}, Lnet/time4j/format/expert/ChronoFormatter;->getReason(Lnet/time4j/engine/ChronoEntity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lnet/time4j/format/expert/ChronoFormatter;->getDescription(Lnet/time4j/engine/ChronoEntity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3016
    invoke-virtual {v10, v0, v1}, Lnet/time4j/format/expert/ParseLog;->setError(ILjava/lang/String;)V

    :cond_5
    return-object v3

    .line 3021
    :cond_6
    invoke-virtual/range {p6 .. p6}, Lnet/time4j/format/Leniency;->isStrict()Z

    move-result v1

    if-eqz v1, :cond_7

    move-object/from16 v4, p3

    .line 3022
    invoke-static {v2, v0, v4, v10}, Lnet/time4j/format/expert/ChronoFormatter;->checkConsistency(Lnet/time4j/engine/ChronoEntity;Ljava/lang/Object;Ljava/lang/CharSequence;Lnet/time4j/format/expert/ParseLog;)Ljava/lang/Object;

    move-result-object v0

    :cond_7
    return-object v0

    :cond_8
    move-object/from16 v4, p3

    .line 3005
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported chronology or preparser: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object/from16 v4, p3

    .line 3009
    :goto_2
    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    move-result v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 3010
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lnet/time4j/format/expert/ChronoFormatter;->getDescription(Lnet/time4j/engine/ChronoEntity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3008
    invoke-virtual {v10, v1, v0}, Lnet/time4j/format/expert/ParseLog;->setError(ILjava/lang/String;)V

    return-object v3

    :cond_9
    :goto_3
    move-object/from16 v4, p3

    move-object/from16 v6, p5

    .line 2973
    invoke-virtual {p1}, Lnet/time4j/engine/Chronology;->getExtensions()Ljava/util/List;

    move-result-object v3

    if-lez p2, :cond_a

    move v8, v1

    goto :goto_4

    :cond_a
    move v8, v12

    :goto_4
    move-object v1, p0

    move-object v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v9, p7

    invoke-static/range {v1 .. v9}, Lnet/time4j/format/expert/ChronoFormatter;->parse(Lnet/time4j/format/expert/ChronoFormatter;Lnet/time4j/engine/ChronoMerger;Ljava/util/List;Ljava/lang/CharSequence;Lnet/time4j/format/expert/ParseLog;Lnet/time4j/engine/AttributeQuery;Lnet/time4j/format/Leniency;ZZ)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private parseElements(Ljava/lang/CharSequence;Lnet/time4j/format/expert/ParseLog;Lnet/time4j/engine/AttributeQuery;ZI)Lnet/time4j/engine/ChronoEntity;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Lnet/time4j/format/expert/ParseLog;",
            "Lnet/time4j/engine/AttributeQuery;",
            "ZI)",
            "Lnet/time4j/engine/ChronoEntity<",
            "*>;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v7, p2

    move/from16 v8, p5

    .line 3407
    new-instance v1, Lnet/time4j/format/expert/ParsedValues;

    iget-boolean v2, v0, Lnet/time4j/format/expert/ChronoFormatter;->indexable:Z

    invoke-direct {v1, v8, v2}, Lnet/time4j/format/expert/ParsedValues;-><init>(IZ)V

    .line 3408
    invoke-virtual/range {p2 .. p2}, Lnet/time4j/format/expert/ParseLog;->getPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lnet/time4j/format/expert/ParsedValues;->setPosition(I)V

    .line 3411
    iget-boolean v2, v0, Lnet/time4j/format/expert/ChronoFormatter;->hasOptionals:Z

    const/4 v9, 0x0

    if-eqz v2, :cond_0

    .line 3412
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 3413
    invoke-interface {v2, v1}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    move-object v10, v2

    goto :goto_0

    :cond_0
    move-object v10, v9

    .line 3419
    :goto_0
    iget-object v2, v0, Lnet/time4j/format/expert/ChronoFormatter;->steps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    const/4 v2, 0x0

    move v3, v2

    move v12, v3

    :goto_1
    if-ge v12, v11, :cond_12

    .line 3422
    iget-object v4, v0, Lnet/time4j/format/expert/ChronoFormatter;->steps:Ljava/util/List;

    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v13, v4

    check-cast v13, Lnet/time4j/format/expert/FormatStep;

    if-nez v10, :cond_1

    move-object v14, v1

    move-object v15, v14

    move/from16 v16, v2

    goto :goto_4

    .line 3428
    :cond_1
    invoke-virtual {v13}, Lnet/time4j/format/expert/FormatStep;->getLevel()I

    move-result v2

    move v4, v2

    :goto_2
    if-le v4, v3, :cond_2

    .line 3433
    new-instance v1, Lnet/time4j/format/expert/ParsedValues;

    ushr-int/lit8 v5, v8, 0x1

    iget-boolean v6, v0, Lnet/time4j/format/expert/ChronoFormatter;->indexable:Z

    invoke-direct {v1, v5, v6}, Lnet/time4j/format/expert/ParsedValues;-><init>(IZ)V

    .line 3434
    invoke-virtual/range {p2 .. p2}, Lnet/time4j/format/expert/ParseLog;->getPosition()I

    move-result v5

    invoke-virtual {v1, v5}, Lnet/time4j/format/expert/ParsedValues;->setPosition(I)V

    .line 3435
    invoke-interface {v10, v1}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_2
    :goto_3
    if-ge v4, v3, :cond_3

    .line 3441
    invoke-interface {v10}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/time4j/format/expert/ParsedValues;

    .line 3442
    invoke-interface {v10}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/time4j/format/expert/ParsedValues;

    invoke-virtual {v5, v1}, Lnet/time4j/format/expert/ParsedValues;->putAll(Lnet/time4j/format/expert/ParsedValues;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 3446
    :cond_3
    invoke-interface {v10}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/time4j/format/expert/ParsedValues;

    move-object v15, v1

    move/from16 v16, v2

    move-object v14, v3

    .line 3450
    :goto_4
    invoke-virtual/range {p2 .. p2}, Lnet/time4j/format/expert/ParseLog;->clearWarning()V

    move-object v1, v13

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object v5, v14

    move/from16 v6, p4

    .line 3451
    invoke-virtual/range {v1 .. v6}, Lnet/time4j/format/expert/FormatStep;->parse(Ljava/lang/CharSequence;Lnet/time4j/format/expert/ParseLog;Lnet/time4j/engine/AttributeQuery;Lnet/time4j/format/expert/ParsedEntity;Z)V

    .line 3454
    invoke-virtual/range {p2 .. p2}, Lnet/time4j/format/expert/ParseLog;->isWarning()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3455
    invoke-virtual {v13}, Lnet/time4j/format/expert/FormatStep;->getProcessor()Lnet/time4j/format/expert/FormatProcessor;

    move-result-object v1

    invoke-interface {v1}, Lnet/time4j/format/expert/FormatProcessor;->getElement()Lnet/time4j/engine/ChronoElement;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 3456
    iget-object v2, v0, Lnet/time4j/format/expert/ChronoFormatter;->defaults:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3457
    iget-object v2, v0, Lnet/time4j/format/expert/ChronoFormatter;->defaults:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v14, v1, v2}, Lnet/time4j/format/expert/ParsedValues;->put(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)V

    .line 3458
    sget-object v1, Lnet/time4j/engine/ValidationElement;->ERROR_MESSAGE:Lnet/time4j/engine/ValidationElement;

    invoke-virtual {v14, v1, v9}, Lnet/time4j/format/expert/ParsedValues;->with(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Lnet/time4j/format/expert/ParsedEntity;

    .line 3459
    invoke-virtual/range {p2 .. p2}, Lnet/time4j/format/expert/ParseLog;->clearError()V

    .line 3460
    invoke-virtual/range {p2 .. p2}, Lnet/time4j/format/expert/ParseLog;->clearWarning()V

    .line 3465
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lnet/time4j/format/expert/ParseLog;->isError()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 3467
    invoke-virtual {v13}, Lnet/time4j/format/expert/FormatStep;->getSection()I

    move-result v1

    .line 3470
    invoke-virtual {v13}, Lnet/time4j/format/expert/FormatStep;->isNewOrBlockStarted()Z

    move-result v2

    if-nez v2, :cond_6

    add-int/lit8 v2, v12, 0x1

    :goto_5
    if-ge v2, v11, :cond_6

    .line 3472
    iget-object v3, v0, Lnet/time4j/format/expert/ChronoFormatter;->steps:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/time4j/format/expert/FormatStep;

    .line 3473
    invoke-virtual {v3}, Lnet/time4j/format/expert/FormatStep;->isNewOrBlockStarted()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v3}, Lnet/time4j/format/expert/FormatStep;->getSection()I

    move-result v3

    if-ne v3, v1, :cond_5

    goto :goto_6

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_6
    move v2, v12

    :goto_6
    if-gt v2, v12, :cond_d

    .line 3480
    invoke-virtual {v13}, Lnet/time4j/format/expert/FormatStep;->isNewOrBlockStarted()Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_a

    :cond_7
    if-nez v16, :cond_9

    if-eqz v10, :cond_8

    .line 3495
    invoke-interface {v10}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lnet/time4j/format/expert/ParsedValues;

    .line 3497
    :cond_8
    invoke-virtual {v15}, Lnet/time4j/format/expert/ParsedValues;->setNoAmbivalentCheck()V

    return-object v15

    .line 3501
    :cond_9
    invoke-virtual {v13}, Lnet/time4j/format/expert/FormatStep;->getLevel()I

    move-result v3

    add-int/lit8 v12, v12, 0x1

    move v4, v2

    move v2, v12

    :goto_7
    if-ge v2, v11, :cond_a

    .line 3503
    iget-object v5, v0, Lnet/time4j/format/expert/ChronoFormatter;->steps:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/time4j/format/expert/FormatStep;

    invoke-virtual {v5}, Lnet/time4j/format/expert/FormatStep;->getLevel()I

    move-result v5

    if-le v5, v3, :cond_a

    add-int/lit8 v4, v2, 0x1

    move/from16 v17, v4

    move v4, v2

    move/from16 v2, v17

    goto :goto_7

    :cond_a
    add-int/lit8 v2, v11, -0x1

    :goto_8
    if-le v2, v4, :cond_c

    .line 3510
    iget-object v3, v0, Lnet/time4j/format/expert/ChronoFormatter;->steps:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/time4j/format/expert/FormatStep;

    invoke-virtual {v3}, Lnet/time4j/format/expert/FormatStep;->getSection()I

    move-result v3

    if-ne v3, v1, :cond_b

    move v4, v2

    goto :goto_9

    :cond_b
    add-int/lit8 v2, v2, -0x1

    goto :goto_8

    :cond_c
    :goto_9
    add-int/lit8 v16, v16, -0x1

    .line 3519
    invoke-interface {v10}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/time4j/format/expert/ParsedValues;

    .line 3520
    invoke-virtual/range {p2 .. p2}, Lnet/time4j/format/expert/ParseLog;->clearError()V

    .line 3521
    invoke-virtual {v1}, Lnet/time4j/format/expert/ParsedValues;->getPosition()I

    move-result v2

    invoke-virtual {v7, v2}, Lnet/time4j/format/expert/ParseLog;->setPosition(I)V

    move v12, v4

    goto :goto_c

    :cond_d
    :goto_a
    if-eqz v10, :cond_e

    .line 3483
    invoke-interface {v10}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lnet/time4j/format/expert/ParsedValues;

    .line 3485
    :cond_e
    invoke-virtual/range {p2 .. p2}, Lnet/time4j/format/expert/ParseLog;->clearError()V

    .line 3486
    invoke-virtual {v15}, Lnet/time4j/format/expert/ParsedValues;->getPosition()I

    move-result v1

    invoke-virtual {v7, v1}, Lnet/time4j/format/expert/ParseLog;->setPosition(I)V

    .line 3487
    invoke-virtual {v15}, Lnet/time4j/format/expert/ParsedValues;->reset()V

    if-eqz v10, :cond_f

    .line 3489
    invoke-interface {v10, v15}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    :cond_f
    move v12, v2

    goto :goto_b

    .line 3523
    :cond_10
    invoke-virtual {v13}, Lnet/time4j/format/expert/FormatStep;->isNewOrBlockStarted()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 3524
    invoke-virtual {v13}, Lnet/time4j/format/expert/FormatStep;->skipTrailingOrBlocks()I

    move-result v12

    :cond_11
    :goto_b
    move-object v1, v15

    :goto_c
    move/from16 v3, v16

    add-int/lit8 v12, v12, 0x1

    move v2, v3

    goto/16 :goto_1

    :cond_12
    :goto_d
    if-lez v2, :cond_13

    .line 3535
    invoke-interface {v10}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/time4j/format/expert/ParsedValues;

    .line 3536
    invoke-interface {v10}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/time4j/format/expert/ParsedValues;

    invoke-virtual {v3, v1}, Lnet/time4j/format/expert/ParsedValues;->putAll(Lnet/time4j/format/expert/ParsedValues;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_d

    :cond_13
    if-eqz v10, :cond_14

    .line 3542
    invoke-interface {v10}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/time4j/format/expert/ParsedValues;

    .line 3545
    :cond_14
    invoke-virtual {v1}, Lnet/time4j/format/expert/ParsedValues;->setNoAmbivalentCheck()V

    return-object v1
.end method

.method private static rfc1123()Lnet/time4j/format/expert/ChronoFormatter;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/format/expert/ChronoFormatter<",
            "Lnet/time4j/Moment;",
            ">;"
        }
    .end annotation

    .line 2835
    const-class v0, Lnet/time4j/Moment;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v0, v1}, Lnet/time4j/format/expert/ChronoFormatter;->setUp(Ljava/lang/Class;Ljava/util/Locale;)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    move-result-object v0

    .line 2836
    invoke-static {v0}, Lnet/time4j/format/expert/ChronoFormatter;->rfc1123DateTime(Lnet/time4j/format/expert/ChronoFormatter$Builder;)V

    .line 2837
    sget-object v1, Lnet/time4j/format/DisplayMode;->MEDIUM:Lnet/time4j/format/DisplayMode;

    const-string v2, "GMT"

    const-string v3, "UT"

    const-string v4, "Z"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    .line 2840
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    .line 2837
    invoke-virtual {v0, v1, v3, v2}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addTimezoneOffset(Lnet/time4j/format/DisplayMode;ZLjava/util/List;)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    .line 2842
    invoke-virtual {v0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->or()Lnet/time4j/format/expert/ChronoFormatter$Builder;

    .line 2844
    invoke-static {v0}, Lnet/time4j/format/expert/ChronoFormatter;->rfc1123DateTime(Lnet/time4j/format/expert/ChronoFormatter$Builder;)V

    .line 2845
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2846
    sget-object v2, Lnet/time4j/tz/OffsetSign;->BEHIND_UTC:Lnet/time4j/tz/OffsetSign;

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lnet/time4j/tz/ZonalOffset;->ofHours(Lnet/time4j/tz/OffsetSign;I)Lnet/time4j/tz/ZonalOffset;

    move-result-object v2

    const-string v4, "EST"

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2847
    sget-object v2, Lnet/time4j/tz/OffsetSign;->BEHIND_UTC:Lnet/time4j/tz/OffsetSign;

    const/4 v4, 0x4

    invoke-static {v2, v4}, Lnet/time4j/tz/ZonalOffset;->ofHours(Lnet/time4j/tz/OffsetSign;I)Lnet/time4j/tz/ZonalOffset;

    move-result-object v2

    const-string v4, "EDT"

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2848
    sget-object v2, Lnet/time4j/tz/OffsetSign;->BEHIND_UTC:Lnet/time4j/tz/OffsetSign;

    const/4 v4, 0x6

    invoke-static {v2, v4}, Lnet/time4j/tz/ZonalOffset;->ofHours(Lnet/time4j/tz/OffsetSign;I)Lnet/time4j/tz/ZonalOffset;

    move-result-object v2

    const-string v5, "CST"

    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2849
    sget-object v2, Lnet/time4j/tz/OffsetSign;->BEHIND_UTC:Lnet/time4j/tz/OffsetSign;

    invoke-static {v2, v3}, Lnet/time4j/tz/ZonalOffset;->ofHours(Lnet/time4j/tz/OffsetSign;I)Lnet/time4j/tz/ZonalOffset;

    move-result-object v2

    const-string v3, "CDT"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2850
    sget-object v2, Lnet/time4j/tz/OffsetSign;->BEHIND_UTC:Lnet/time4j/tz/OffsetSign;

    const/4 v3, 0x7

    invoke-static {v2, v3}, Lnet/time4j/tz/ZonalOffset;->ofHours(Lnet/time4j/tz/OffsetSign;I)Lnet/time4j/tz/ZonalOffset;

    move-result-object v2

    const-string v5, "MST"

    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2851
    sget-object v2, Lnet/time4j/tz/OffsetSign;->BEHIND_UTC:Lnet/time4j/tz/OffsetSign;

    invoke-static {v2, v4}, Lnet/time4j/tz/ZonalOffset;->ofHours(Lnet/time4j/tz/OffsetSign;I)Lnet/time4j/tz/ZonalOffset;

    move-result-object v2

    const-string v4, "MDT"

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2852
    sget-object v2, Lnet/time4j/tz/OffsetSign;->BEHIND_UTC:Lnet/time4j/tz/OffsetSign;

    const/16 v4, 0x8

    invoke-static {v2, v4}, Lnet/time4j/tz/ZonalOffset;->ofHours(Lnet/time4j/tz/OffsetSign;I)Lnet/time4j/tz/ZonalOffset;

    move-result-object v2

    const-string v4, "PST"

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2853
    sget-object v2, Lnet/time4j/tz/OffsetSign;->BEHIND_UTC:Lnet/time4j/tz/OffsetSign;

    invoke-static {v2, v3}, Lnet/time4j/tz/ZonalOffset;->ofHours(Lnet/time4j/tz/OffsetSign;I)Lnet/time4j/tz/ZonalOffset;

    move-result-object v2

    const-string v3, "PDT"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2854
    new-instance v2, Lnet/time4j/format/expert/CustomizedProcessor;

    sget-object v3, Lnet/time4j/format/expert/TimezoneElement;->TIMEZONE_OFFSET:Lnet/time4j/format/expert/TimezoneElement;

    new-instance v4, Lnet/time4j/format/expert/ChronoFormatter$1;

    invoke-direct {v4}, Lnet/time4j/format/expert/ChronoFormatter$1;-><init>()V

    new-instance v5, Lnet/time4j/format/expert/ChronoFormatter$2;

    invoke-direct {v5, v1}, Lnet/time4j/format/expert/ChronoFormatter$2;-><init>(Ljava/util/Map;)V

    invoke-direct {v2, v3, v4, v5}, Lnet/time4j/format/expert/CustomizedProcessor;-><init>(Lnet/time4j/engine/ChronoElement;Lnet/time4j/format/expert/ChronoPrinter;Lnet/time4j/format/expert/ChronoParser;)V

    invoke-static {v0, v2}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->access$100(Lnet/time4j/format/expert/ChronoFormatter$Builder;Lnet/time4j/format/expert/FormatProcessor;)V

    .line 2888
    invoke-virtual {v0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->build()Lnet/time4j/format/expert/ChronoFormatter;

    move-result-object v0

    sget-object v1, Lnet/time4j/tz/ZonalOffset;->UTC:Lnet/time4j/tz/ZonalOffset;

    invoke-virtual {v0, v1}, Lnet/time4j/format/expert/ChronoFormatter;->withTimezone(Lnet/time4j/tz/TZID;)Lnet/time4j/format/expert/ChronoFormatter;

    move-result-object v0

    return-object v0
.end method

.method private static rfc1123DateTime(Lnet/time4j/format/expert/ChronoFormatter$Builder;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/format/expert/ChronoFormatter$Builder<",
            "Lnet/time4j/Moment;",
            ">;)V"
        }
    .end annotation

    .line 2895
    invoke-virtual {p0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->startOptionalSection()Lnet/time4j/format/expert/ChronoFormatter$Builder;

    move-result-object p0

    sget-object v0, Lnet/time4j/format/Attributes;->TEXT_WIDTH:Lnet/time4j/engine/AttributeKey;

    sget-object v1, Lnet/time4j/format/TextWidth;->ABBREVIATED:Lnet/time4j/format/TextWidth;

    .line 2896
    invoke-virtual {p0, v0, v1}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->startSection(Lnet/time4j/engine/AttributeKey;Ljava/lang/Enum;)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    move-result-object p0

    sget-object v0, Lnet/time4j/PlainDate;->DAY_OF_WEEK:Lnet/time4j/NavigableElement;

    .line 2897
    invoke-virtual {p0, v0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addText(Lnet/time4j/engine/ChronoElement;)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    move-result-object p0

    .line 2898
    invoke-virtual {p0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->endSection()Lnet/time4j/format/expert/ChronoFormatter$Builder;

    move-result-object p0

    const-string v0, ", "

    .line 2899
    invoke-virtual {p0, v0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addLiteral(Ljava/lang/String;)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    move-result-object p0

    .line 2900
    invoke-virtual {p0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->endSection()Lnet/time4j/format/expert/ChronoFormatter$Builder;

    move-result-object p0

    sget-object v0, Lnet/time4j/PlainDate;->DAY_OF_MONTH:Lnet/time4j/ProportionalElement;

    const/4 v1, 0x1

    const/4 v2, 0x2

    .line 2901
    invoke-virtual {p0, v0, v1, v2}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addInteger(Lnet/time4j/engine/ChronoElement;II)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    move-result-object p0

    const/16 v0, 0x20

    .line 2902
    invoke-virtual {p0, v0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addLiteral(C)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    move-result-object p0

    sget-object v1, Lnet/time4j/format/Attributes;->TEXT_WIDTH:Lnet/time4j/engine/AttributeKey;

    sget-object v3, Lnet/time4j/format/TextWidth;->ABBREVIATED:Lnet/time4j/format/TextWidth;

    .line 2903
    invoke-virtual {p0, v1, v3}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->startSection(Lnet/time4j/engine/AttributeKey;Ljava/lang/Enum;)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    move-result-object p0

    sget-object v1, Lnet/time4j/PlainDate;->MONTH_OF_YEAR:Lnet/time4j/NavigableElement;

    .line 2904
    invoke-virtual {p0, v1}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addText(Lnet/time4j/engine/ChronoElement;)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    move-result-object p0

    .line 2905
    invoke-virtual {p0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->endSection()Lnet/time4j/format/expert/ChronoFormatter$Builder;

    move-result-object p0

    .line 2906
    invoke-virtual {p0, v0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addLiteral(C)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    move-result-object p0

    sget-object v1, Lnet/time4j/PlainDate;->YEAR:Lnet/time4j/AdjustableElement;

    const/4 v3, 0x4

    .line 2907
    invoke-virtual {p0, v1, v3}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addFixedInteger(Lnet/time4j/engine/ChronoElement;I)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    move-result-object p0

    .line 2908
    invoke-virtual {p0, v0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addLiteral(C)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    move-result-object p0

    sget-object v1, Lnet/time4j/PlainTime;->DIGITAL_HOUR_OF_DAY:Lnet/time4j/ProportionalElement;

    .line 2909
    invoke-virtual {p0, v1, v2}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addFixedInteger(Lnet/time4j/engine/ChronoElement;I)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    move-result-object p0

    const/16 v1, 0x3a

    .line 2910
    invoke-virtual {p0, v1}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addLiteral(C)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    move-result-object p0

    sget-object v3, Lnet/time4j/PlainTime;->MINUTE_OF_HOUR:Lnet/time4j/ProportionalElement;

    .line 2911
    invoke-virtual {p0, v3, v2}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addFixedInteger(Lnet/time4j/engine/ChronoElement;I)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    move-result-object p0

    .line 2912
    invoke-virtual {p0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->startOptionalSection()Lnet/time4j/format/expert/ChronoFormatter$Builder;

    move-result-object p0

    .line 2913
    invoke-virtual {p0, v1}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addLiteral(C)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    move-result-object p0

    sget-object v1, Lnet/time4j/PlainTime;->SECOND_OF_MINUTE:Lnet/time4j/ProportionalElement;

    .line 2914
    invoke-virtual {p0, v1, v2}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addFixedInteger(Lnet/time4j/engine/ChronoElement;I)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    move-result-object p0

    .line 2915
    invoke-virtual {p0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->endSection()Lnet/time4j/format/expert/ChronoFormatter$Builder;

    move-result-object p0

    .line 2916
    invoke-virtual {p0, v0}, Lnet/time4j/format/expert/ChronoFormatter$Builder;->addLiteral(C)Lnet/time4j/format/expert/ChronoFormatter$Builder;

    return-void
.end method

.method public static setUp(Ljava/lang/Class;Ljava/util/Locale;)Lnet/time4j/format/expert/ChronoFormatter$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lnet/time4j/engine/ChronoEntity<",
            "TT;>;>(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/Locale;",
            ")",
            "Lnet/time4j/format/expert/ChronoFormatter$Builder<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "Missing chronological type."

    .line 2584
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2587
    invoke-static {p0}, Lnet/time4j/engine/Chronology;->lookup(Ljava/lang/Class;)Lnet/time4j/engine/Chronology;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2593
    new-instance p0, Lnet/time4j/format/expert/ChronoFormatter$Builder;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lnet/time4j/format/expert/ChronoFormatter$Builder;-><init>(Lnet/time4j/engine/Chronology;Ljava/util/Locale;Lnet/time4j/format/expert/ChronoFormatter$1;)V

    return-object p0

    .line 2590
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not formattable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static setUp(Lnet/time4j/engine/Chronology;Ljava/util/Locale;)Lnet/time4j/format/expert/ChronoFormatter$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/time4j/engine/Chronology<",
            "TT;>;",
            "Ljava/util/Locale;",
            ")",
            "Lnet/time4j/format/expert/ChronoFormatter$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 2620
    new-instance v0, Lnet/time4j/format/expert/ChronoFormatter$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lnet/time4j/format/expert/ChronoFormatter$Builder;-><init>(Lnet/time4j/engine/Chronology;Ljava/util/Locale;Lnet/time4j/format/expert/ChronoFormatter$1;)V

    return-object v0
.end method

.method public static setUpWithOverride(Ljava/util/Locale;Lnet/time4j/engine/CalendarFamily;)Lnet/time4j/format/expert/ChronoFormatter$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Lnet/time4j/engine/CalendarVariant<",
            "TC;>;>(",
            "Ljava/util/Locale;",
            "Lnet/time4j/engine/CalendarFamily<",
            "TC;>;)",
            "Lnet/time4j/format/expert/ChronoFormatter$Builder<",
            "Lnet/time4j/Moment;",
            ">;"
        }
    .end annotation

    const-string v0, "Missing override calendar."

    .line 2655
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2658
    new-instance v0, Lnet/time4j/format/expert/ChronoFormatter$Builder;

    invoke-static {}, Lnet/time4j/Moment;->axis()Lnet/time4j/engine/TimeAxis;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, p1, v2}, Lnet/time4j/format/expert/ChronoFormatter$Builder;-><init>(Lnet/time4j/engine/Chronology;Ljava/util/Locale;Lnet/time4j/engine/Chronology;Lnet/time4j/format/expert/ChronoFormatter$1;)V

    return-object v0
.end method

.method public static setUpWithOverride(Ljava/util/Locale;Lnet/time4j/engine/Chronology;)Lnet/time4j/format/expert/ChronoFormatter$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Lnet/time4j/engine/Calendrical<",
            "*TC;>;>(",
            "Ljava/util/Locale;",
            "Lnet/time4j/engine/Chronology<",
            "TC;>;)",
            "Lnet/time4j/format/expert/ChronoFormatter$Builder<",
            "Lnet/time4j/Moment;",
            ">;"
        }
    .end annotation

    const-string v0, "Missing override calendar."

    .line 2691
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2694
    new-instance v0, Lnet/time4j/format/expert/ChronoFormatter$Builder;

    invoke-static {}, Lnet/time4j/Moment;->axis()Lnet/time4j/engine/TimeAxis;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, p1, v2}, Lnet/time4j/format/expert/ChronoFormatter$Builder;-><init>(Lnet/time4j/engine/Chronology;Ljava/util/Locale;Lnet/time4j/engine/Chronology;Lnet/time4j/format/expert/ChronoFormatter$1;)V

    return-object v0
.end method

.method private static setValue(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/time4j/engine/ChronoEntity<",
            "*>;",
            "Lnet/time4j/engine/ChronoElement<",
            "TV;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 3173
    invoke-interface {p1}, Lnet/time4j/engine/ChronoElement;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lnet/time4j/engine/ChronoEntity;->with(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Lnet/time4j/engine/ChronoEntity;

    return-void
.end method

.method private static sub(ILjava/lang/CharSequence;)Ljava/lang/String;
    .locals 3

    .line 3555
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    sub-int v1, v0, p0

    const/16 v2, 0xa

    if-gt v1, v2, :cond_0

    .line 3558
    invoke-interface {p1, p0, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3561
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v1, p0, 0xa

    invoke-interface {p1, p0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "..."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static updateSelf(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/time4j/engine/ChronoEntity<",
            "*>;",
            "Lnet/time4j/engine/ChronoElement<",
            "TT;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 3035
    invoke-interface {p1}, Lnet/time4j/engine/ChronoElement;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lnet/time4j/engine/ChronoEntity;->with(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Lnet/time4j/engine/ChronoEntity;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 2711
    :cond_0
    instance-of v1, p1, Lnet/time4j/format/expert/ChronoFormatter;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2712
    check-cast p1, Lnet/time4j/format/expert/ChronoFormatter;

    .line 2713
    iget-object v1, p0, Lnet/time4j/format/expert/ChronoFormatter;->chronology:Lnet/time4j/engine/Chronology;

    iget-object v3, p1, Lnet/time4j/format/expert/ChronoFormatter;->chronology:Lnet/time4j/engine/Chronology;

    .line 2714
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/time4j/format/expert/ChronoFormatter;->overrideHandler:Lnet/time4j/format/expert/ChronoFormatter$OverrideHandler;

    iget-object v3, p1, Lnet/time4j/format/expert/ChronoFormatter;->overrideHandler:Lnet/time4j/format/expert/ChronoFormatter$OverrideHandler;

    .line 2715
    invoke-static {v1, v3}, Lnet/time4j/format/expert/ChronoFormatter;->isEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/time4j/format/expert/ChronoFormatter;->globalAttributes:Lnet/time4j/format/expert/AttributeSet;

    iget-object v3, p1, Lnet/time4j/format/expert/ChronoFormatter;->globalAttributes:Lnet/time4j/format/expert/AttributeSet;

    .line 2716
    invoke-virtual {v1, v3}, Lnet/time4j/format/expert/AttributeSet;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/time4j/format/expert/ChronoFormatter;->defaults:Ljava/util/Map;

    iget-object v3, p1, Lnet/time4j/format/expert/ChronoFormatter;->defaults:Ljava/util/Map;

    .line 2717
    invoke-interface {v1, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/time4j/format/expert/ChronoFormatter;->steps:Ljava/util/List;

    iget-object p1, p1, Lnet/time4j/format/expert/ChronoFormatter;->steps:Ljava/util/List;

    .line 2718
    invoke-interface {v1, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public format(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 675
    invoke-virtual {p0, p1}, Lnet/time4j/format/expert/ChronoFormatter;->print(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public format(Lnet/time4j/GeneralTimestamp;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/GeneralTimestamp<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 697
    invoke-direct {p0, p1}, Lnet/time4j/format/expert/ChronoFormatter;->format0(Lnet/time4j/engine/ChronoDisplay;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAttributes()Lnet/time4j/engine/AttributeQuery;
    .locals 1

    .line 660
    iget-object v0, p0, Lnet/time4j/format/expert/ChronoFormatter;->globalAttributes:Lnet/time4j/format/expert/AttributeSet;

    return-object v0
.end method

.method getAttributes0()Lnet/time4j/format/expert/AttributeSet;
    .locals 1

    .line 2778
    iget-object v0, p0, Lnet/time4j/format/expert/ChronoFormatter;->globalAttributes:Lnet/time4j/format/expert/AttributeSet;

    return-object v0
.end method

.method public getChronology()Lnet/time4j/engine/Chronology;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/Chronology<",
            "TT;>;"
        }
    .end annotation

    .line 476
    iget-object v0, p0, Lnet/time4j/format/expert/ChronoFormatter;->chronology:Lnet/time4j/engine/Chronology;

    return-object v0
.end method

.method getDefaults()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1948
    iget-object v0, p0, Lnet/time4j/format/expert/ChronoFormatter;->defaults:Ljava/util/Map;

    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .line 498
    iget-object v0, p0, Lnet/time4j/format/expert/ChronoFormatter;->globalAttributes:Lnet/time4j/format/expert/AttributeSet;

    invoke-virtual {v0}, Lnet/time4j/format/expert/AttributeSet;->getLocale()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public getPattern()Ljava/lang/String;
    .locals 2

    .line 534
    invoke-virtual {p0}, Lnet/time4j/format/expert/ChronoFormatter;->isSingleStepOptimizationPossible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 535
    iget-object v0, p0, Lnet/time4j/format/expert/ChronoFormatter;->steps:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/format/expert/FormatStep;

    invoke-virtual {v0}, Lnet/time4j/format/expert/FormatStep;->getProcessor()Lnet/time4j/format/expert/FormatProcessor;

    move-result-object v0

    .line 536
    instance-of v1, v0, Lnet/time4j/format/expert/StyleProcessor;

    if-eqz v1, :cond_0

    .line 537
    const-class v1, Lnet/time4j/format/expert/StyleProcessor;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/format/expert/StyleProcessor;

    invoke-virtual {v0}, Lnet/time4j/format/expert/StyleProcessor;->getGeneratedPattern()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 541
    :goto_0
    invoke-direct {p0, v0}, Lnet/time4j/format/expert/ChronoFormatter;->getPattern0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 2732
    iget-object v0, p0, Lnet/time4j/format/expert/ChronoFormatter;->chronology:Lnet/time4j/engine/Chronology;

    .line 2733
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x7

    iget-object v1, p0, Lnet/time4j/format/expert/ChronoFormatter;->globalAttributes:Lnet/time4j/format/expert/AttributeSet;

    .line 2734
    invoke-virtual {v1}, Lnet/time4j/format/expert/AttributeSet;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    iget-object v1, p0, Lnet/time4j/format/expert/ChronoFormatter;->steps:Ljava/util/List;

    .line 2735
    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x25

    add-int/2addr v0, v1

    return v0
.end method

.method isSingleStepOptimizationPossible()Z
    .locals 2

    .line 2792
    iget v0, p0, Lnet/time4j/format/expert/ChronoFormatter;->stepCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lnet/time4j/format/expert/ChronoFormatter;->hasOptionals:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method isToleratingTrailingChars()Z
    .locals 1

    .line 2785
    iget-boolean v0, p0, Lnet/time4j/format/expert/ChronoFormatter;->trailing:Z

    return v0
.end method

.method public parse(Ljava/lang/CharSequence;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 968
    new-instance v0, Lnet/time4j/format/expert/ParseLog;

    invoke-direct {v0}, Lnet/time4j/format/expert/ParseLog;-><init>()V

    .line 969
    invoke-virtual {p0, p1, v0}, Lnet/time4j/format/expert/ChronoFormatter;->parse(Ljava/lang/CharSequence;Lnet/time4j/format/expert/ParseLog;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 978
    invoke-virtual {v0}, Lnet/time4j/format/expert/ParseLog;->getPosition()I

    move-result v0

    .line 980
    iget-boolean v2, p0, Lnet/time4j/format/expert/ChronoFormatter;->trailing:Z

    if-nez v2, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lt v0, v2, :cond_0

    goto :goto_0

    .line 981
    :cond_0
    new-instance v1, Ljava/text/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unparsed trailing characters: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 982
    invoke-static {v0, p1}, Lnet/time4j/format/expert/ChronoFormatter;->sub(ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_1
    :goto_0
    return-object v1

    .line 972
    :cond_2
    new-instance p1, Ljava/text/ParseException;

    .line 973
    invoke-virtual {v0}, Lnet/time4j/format/expert/ParseLog;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    .line 974
    invoke-virtual {v0}, Lnet/time4j/format/expert/ParseLog;->getErrorIndex()I

    move-result v0

    invoke-direct {p1, v1, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p1
.end method

.method public parse(Ljava/lang/CharSequence;Lnet/time4j/format/RawValues;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Lnet/time4j/format/RawValues;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 997
    new-instance v0, Lnet/time4j/format/expert/ParseLog;

    invoke-direct {v0}, Lnet/time4j/format/expert/ParseLog;-><init>()V

    .line 998
    invoke-virtual {p0, p1, v0}, Lnet/time4j/format/expert/ChronoFormatter;->parse(Ljava/lang/CharSequence;Lnet/time4j/format/expert/ParseLog;)Ljava/lang/Object;

    move-result-object v1

    .line 999
    invoke-virtual {v0}, Lnet/time4j/format/expert/ParseLog;->getRawValues()Lnet/time4j/engine/ChronoEntity;

    move-result-object v2

    invoke-virtual {p2, v2}, Lnet/time4j/format/RawValues;->accept(Lnet/time4j/engine/ChronoDisplay;)V

    .line 1001
    invoke-virtual {v0}, Lnet/time4j/format/expert/ParseLog;->isError()Z

    move-result p2

    if-nez p2, :cond_1

    if-eqz v1, :cond_0

    return-object v1

    .line 1004
    :cond_0
    new-instance p2, Ljava/text/ParseException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot parse: \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p2

    .line 1002
    :cond_1
    new-instance p1, Ljava/text/ParseException;

    invoke-virtual {v0}, Lnet/time4j/format/expert/ParseLog;->getErrorMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0}, Lnet/time4j/format/expert/ParseLog;->getErrorIndex()I

    move-result v0

    invoke-direct {p1, p2, v0}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p1
.end method

.method public parse(Ljava/lang/CharSequence;Lnet/time4j/format/expert/ParseLog;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Lnet/time4j/format/expert/ParseLog;",
            ")TT;"
        }
    .end annotation

    .line 1038
    iget-boolean v0, p0, Lnet/time4j/format/expert/ChronoFormatter;->noPreparser:Z

    if-eqz v0, :cond_0

    .line 1039
    iget-object v2, p0, Lnet/time4j/format/expert/ChronoFormatter;->chronology:Lnet/time4j/engine/Chronology;

    .line 1042
    invoke-virtual {v2}, Lnet/time4j/engine/Chronology;->getExtensions()Ljava/util/List;

    move-result-object v3

    iget-object v6, p0, Lnet/time4j/format/expert/ChronoFormatter;->globalAttributes:Lnet/time4j/format/expert/AttributeSet;

    iget-object v7, p0, Lnet/time4j/format/expert/ChronoFormatter;->leniency:Lnet/time4j/format/Leniency;

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    .line 1039
    invoke-static/range {v1 .. v9}, Lnet/time4j/format/expert/ChronoFormatter;->parse(Lnet/time4j/format/expert/ChronoFormatter;Lnet/time4j/engine/ChronoMerger;Ljava/util/List;Ljava/lang/CharSequence;Lnet/time4j/format/expert/ParseLog;Lnet/time4j/engine/AttributeQuery;Lnet/time4j/format/Leniency;ZZ)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1052
    :cond_0
    iget-object v0, p0, Lnet/time4j/format/expert/ChronoFormatter;->globalAttributes:Lnet/time4j/format/expert/AttributeSet;

    invoke-virtual {p0, p1, p2, v0}, Lnet/time4j/format/expert/ChronoFormatter;->parse(Ljava/lang/CharSequence;Lnet/time4j/format/expert/ParseLog;Lnet/time4j/engine/AttributeQuery;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public parse(Ljava/lang/CharSequence;Lnet/time4j/format/expert/ParseLog;Lnet/time4j/engine/AttributeQuery;)Ljava/lang/Object;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Lnet/time4j/format/expert/ParseLog;",
            "Lnet/time4j/engine/AttributeQuery;",
            ")TT;"
        }
    .end annotation

    move-object v9, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    .line 1096
    iget-object v0, v9, Lnet/time4j/format/expert/ChronoFormatter;->leniency:Lnet/time4j/format/Leniency;

    .line 1099
    iget-object v1, v9, Lnet/time4j/format/expert/ChronoFormatter;->globalAttributes:Lnet/time4j/format/expert/AttributeSet;

    if-eq v11, v1, :cond_0

    .line 1100
    new-instance v0, Lnet/time4j/format/expert/MergedAttributes;

    invoke-direct {v0, v11, v1}, Lnet/time4j/format/expert/MergedAttributes;-><init>(Lnet/time4j/engine/AttributeQuery;Lnet/time4j/engine/AttributeQuery;)V

    .line 1101
    sget-object v1, Lnet/time4j/format/Attributes;->LENIENCY:Lnet/time4j/engine/AttributeKey;

    sget-object v2, Lnet/time4j/format/Leniency;->SMART:Lnet/time4j/format/Leniency;

    invoke-interface {v0, v1, v2}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/time4j/format/Leniency;

    const/4 v2, 0x0

    move-object v12, v0

    move-object v13, v1

    move v8, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    move-object v13, v0

    move v8, v1

    move-object v12, v11

    .line 1105
    :goto_0
    iget-object v0, v9, Lnet/time4j/format/expert/ChronoFormatter;->overrideHandler:Lnet/time4j/format/expert/ChronoFormatter$OverrideHandler;

    if-eqz v0, :cond_a

    .line 1108
    invoke-virtual {v0}, Lnet/time4j/format/expert/ChronoFormatter$OverrideHandler;->getExtensions()Ljava/util/List;

    move-result-object v2

    .line 1109
    iget-object v14, v9, Lnet/time4j/format/expert/ChronoFormatter;->overrideHandler:Lnet/time4j/format/expert/ChronoFormatter$OverrideHandler;

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, v14

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object v5, v12

    move-object v6, v13

    .line 1110
    invoke-static/range {v0 .. v8}, Lnet/time4j/format/expert/ChronoFormatter;->parse(Lnet/time4j/format/expert/ChronoFormatter;Lnet/time4j/engine/ChronoMerger;Ljava/util/List;Ljava/lang/CharSequence;Lnet/time4j/format/expert/ParseLog;Lnet/time4j/engine/AttributeQuery;Lnet/time4j/format/Leniency;ZZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/GeneralTimestamp;

    .line 1112
    invoke-virtual/range {p2 .. p2}, Lnet/time4j/format/expert/ParseLog;->isError()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    return-object v2

    .line 1116
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lnet/time4j/format/expert/ParseLog;->getRawValues0()Lnet/time4j/engine/ChronoEntity;

    move-result-object v1

    .line 1120
    invoke-virtual {v1}, Lnet/time4j/engine/ChronoEntity;->hasTimezone()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1121
    invoke-virtual {v1}, Lnet/time4j/engine/ChronoEntity;->getTimezone()Lnet/time4j/tz/TZID;

    move-result-object v3

    goto :goto_1

    .line 1122
    :cond_2
    sget-object v3, Lnet/time4j/format/Attributes;->TIMEZONE_ID:Lnet/time4j/engine/AttributeKey;

    invoke-interface {v12, v3}, Lnet/time4j/engine/AttributeQuery;->contains(Lnet/time4j/engine/AttributeKey;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1123
    sget-object v3, Lnet/time4j/format/Attributes;->TIMEZONE_ID:Lnet/time4j/engine/AttributeKey;

    invoke-interface {v12, v3}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/time4j/tz/TZID;

    goto :goto_1

    :cond_3
    move-object v3, v2

    :goto_1
    if-eqz v3, :cond_7

    .line 1127
    sget-object v4, Lnet/time4j/format/Attributes;->START_OF_DAY:Lnet/time4j/engine/AttributeKey;

    invoke-interface {v14}, Lnet/time4j/engine/ChronoMerger;->getDefaultStartOfDay()Lnet/time4j/engine/StartOfDay;

    move-result-object v5

    invoke-interface {v11, v4, v5}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/time4j/engine/StartOfDay;

    .line 1129
    sget-object v5, Lnet/time4j/engine/FlagElement;->DAYLIGHT_SAVING:Lnet/time4j/engine/FlagElement;

    invoke-virtual {v1, v5}, Lnet/time4j/engine/ChronoEntity;->contains(Lnet/time4j/engine/ChronoElement;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1130
    sget-object v5, Lnet/time4j/engine/FlagElement;->DAYLIGHT_SAVING:Lnet/time4j/engine/FlagElement;

    invoke-virtual {v1, v5}, Lnet/time4j/engine/ChronoEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 1131
    sget-object v6, Lnet/time4j/format/Attributes;->TRANSITION_STRATEGY:Lnet/time4j/engine/AttributeKey;

    sget-object v7, Lnet/time4j/tz/Timezone;->DEFAULT_CONFLICT_STRATEGY:Lnet/time4j/tz/TransitionStrategy;

    .line 1133
    invoke-interface {v12, v6, v7}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/time4j/tz/TransitionStrategy;

    if-eqz v5, :cond_4

    sget-object v5, Lnet/time4j/tz/OverlapResolver;->EARLIER_OFFSET:Lnet/time4j/tz/OverlapResolver;

    goto :goto_2

    :cond_4
    sget-object v5, Lnet/time4j/tz/OverlapResolver;->LATER_OFFSET:Lnet/time4j/tz/OverlapResolver;

    .line 1134
    :goto_2
    invoke-interface {v6, v5}, Lnet/time4j/tz/TransitionStrategy;->using(Lnet/time4j/tz/OverlapResolver;)Lnet/time4j/tz/TransitionStrategy;

    move-result-object v5

    .line 1135
    invoke-static {v3}, Lnet/time4j/tz/Timezone;->of(Lnet/time4j/tz/TZID;)Lnet/time4j/tz/Timezone;

    move-result-object v3

    invoke-virtual {v3, v5}, Lnet/time4j/tz/Timezone;->with(Lnet/time4j/tz/TransitionStrategy;)Lnet/time4j/tz/Timezone;

    move-result-object v3

    invoke-virtual {v0, v3, v4}, Lnet/time4j/GeneralTimestamp;->in(Lnet/time4j/tz/Timezone;Lnet/time4j/engine/StartOfDay;)Lnet/time4j/Moment;

    move-result-object v0

    goto :goto_3

    .line 1136
    :cond_5
    sget-object v5, Lnet/time4j/format/Attributes;->TRANSITION_STRATEGY:Lnet/time4j/engine/AttributeKey;

    invoke-interface {v12, v5}, Lnet/time4j/engine/AttributeQuery;->contains(Lnet/time4j/engine/AttributeKey;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1137
    invoke-static {v3}, Lnet/time4j/tz/Timezone;->of(Lnet/time4j/tz/TZID;)Lnet/time4j/tz/Timezone;

    move-result-object v3

    sget-object v5, Lnet/time4j/format/Attributes;->TRANSITION_STRATEGY:Lnet/time4j/engine/AttributeKey;

    invoke-interface {v12, v5}, Lnet/time4j/engine/AttributeQuery;->get(Lnet/time4j/engine/AttributeKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/time4j/tz/TransitionStrategy;

    invoke-virtual {v3, v5}, Lnet/time4j/tz/Timezone;->with(Lnet/time4j/tz/TransitionStrategy;)Lnet/time4j/tz/Timezone;

    move-result-object v3

    invoke-virtual {v0, v3, v4}, Lnet/time4j/GeneralTimestamp;->in(Lnet/time4j/tz/Timezone;Lnet/time4j/engine/StartOfDay;)Lnet/time4j/Moment;

    move-result-object v0

    goto :goto_3

    .line 1139
    :cond_6
    invoke-static {v3}, Lnet/time4j/tz/Timezone;->of(Lnet/time4j/tz/TZID;)Lnet/time4j/tz/Timezone;

    move-result-object v3

    invoke-virtual {v0, v3, v4}, Lnet/time4j/GeneralTimestamp;->in(Lnet/time4j/tz/Timezone;Lnet/time4j/engine/StartOfDay;)Lnet/time4j/Moment;

    move-result-object v0

    goto :goto_3

    :cond_7
    move-object v0, v2

    :goto_3
    if-nez v0, :cond_8

    .line 1144
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const-string v1, "Missing timezone or offset."

    invoke-virtual {v10, v0, v1}, Lnet/time4j/format/expert/ParseLog;->setError(ILjava/lang/String;)V

    return-object v2

    .line 1147
    :cond_8
    invoke-static {}, Lnet/time4j/Moment;->axis()Lnet/time4j/engine/TimeAxis;

    move-result-object v2

    invoke-virtual {v2}, Lnet/time4j/engine/TimeAxis;->element()Lnet/time4j/engine/ChronoElement;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lnet/time4j/engine/ChronoEntity;->with(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Lnet/time4j/engine/ChronoEntity;

    .line 1148
    invoke-static {v0}, Lnet/time4j/format/expert/ChronoFormatter;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1149
    invoke-virtual {v13}, Lnet/time4j/format/Leniency;->isStrict()Z

    move-result v2

    if-eqz v2, :cond_9

    move-object/from16 v3, p1

    .line 1150
    invoke-static {v1, v0, v3, v10}, Lnet/time4j/format/expert/ChronoFormatter;->checkConsistency(Lnet/time4j/engine/ChronoEntity;Ljava/lang/Object;Ljava/lang/CharSequence;Lnet/time4j/format/expert/ParseLog;)Ljava/lang/Object;

    :cond_9
    return-object v0

    :cond_a
    move-object/from16 v3, p1

    .line 1157
    iget-object v1, v9, Lnet/time4j/format/expert/ChronoFormatter;->chronology:Lnet/time4j/engine/Chronology;

    const/4 v2, 0x0

    move-object v0, p0

    move-object/from16 v4, p2

    move-object v5, v12

    move-object v6, v13

    move v7, v8

    invoke-static/range {v0 .. v7}, Lnet/time4j/format/expert/ChronoFormatter;->parse(Lnet/time4j/format/expert/ChronoFormatter;Lnet/time4j/engine/Chronology;ILjava/lang/CharSequence;Lnet/time4j/format/expert/ParseLog;Lnet/time4j/engine/AttributeQuery;Lnet/time4j/format/Leniency;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public parseRaw(Ljava/lang/CharSequence;I)Lnet/time4j/engine/ChronoEntity;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "I)",
            "Lnet/time4j/engine/ChronoEntity<",
            "*>;"
        }
    .end annotation

    .line 1215
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    if-lt p2, v0, :cond_0

    .line 1216
    new-instance p1, Lnet/time4j/format/expert/ParsedValues;

    invoke-direct {p1, v1, v1}, Lnet/time4j/format/expert/ParsedValues;-><init>(IZ)V

    return-object p1

    .line 1220
    :cond_0
    new-instance v0, Lnet/time4j/format/expert/ParseLog;

    invoke-direct {v0, p2}, Lnet/time4j/format/expert/ParseLog;-><init>(I)V

    const/4 p2, 0x0

    .line 1224
    :try_start_0
    iget-object v5, p0, Lnet/time4j/format/expert/ChronoFormatter;->globalAttributes:Lnet/time4j/format/expert/AttributeSet;

    const/4 v6, 0x1

    iget v7, p0, Lnet/time4j/format/expert/ChronoFormatter;->countOfElements:I

    move-object v2, p0

    move-object v3, p1

    move-object v4, v0

    invoke-direct/range {v2 .. v7}, Lnet/time4j/format/expert/ChronoFormatter;->parseElements(Ljava/lang/CharSequence;Lnet/time4j/format/expert/ParseLog;Lnet/time4j/engine/AttributeQuery;ZI)Lnet/time4j/engine/ChronoEntity;

    move-result-object p2

    .line 1225
    invoke-virtual {v0, p2}, Lnet/time4j/format/expert/ParseLog;->setRawValues(Lnet/time4j/engine/ChronoEntity;)V
    :try_end_0
    .catch Lnet/time4j/format/expert/AmbivalentValueException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1227
    invoke-virtual {v0}, Lnet/time4j/format/expert/ParseLog;->isError()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1228
    invoke-virtual {v0}, Lnet/time4j/format/expert/ParseLog;->getPosition()I

    move-result v2

    invoke-virtual {p1}, Lnet/time4j/format/expert/AmbivalentValueException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lnet/time4j/format/expert/ParseLog;->setError(ILjava/lang/String;)V

    :cond_1
    :goto_0
    if-eqz p2, :cond_5

    .line 1232
    invoke-virtual {v0}, Lnet/time4j/format/expert/ParseLog;->isError()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    .line 1237
    :cond_2
    iget-object p1, p0, Lnet/time4j/format/expert/ChronoFormatter;->defaults:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/engine/ChronoElement;

    .line 1238
    invoke-virtual {p2, v0}, Lnet/time4j/engine/ChronoEntity;->contains(Lnet/time4j/engine/ChronoElement;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1239
    iget-object v1, p0, Lnet/time4j/format/expert/ChronoFormatter;->defaults:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p2, v0, v1}, Lnet/time4j/format/expert/ChronoFormatter;->setValue(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    return-object p2

    .line 1233
    :cond_5
    :goto_2
    new-instance p1, Lnet/time4j/format/expert/ParsedValues;

    invoke-direct {p1, v1, v1}, Lnet/time4j/format/expert/ParsedValues;-><init>(IZ)V

    return-object p1
.end method

.method public parseRaw(Ljava/lang/String;)Lnet/time4j/engine/ChronoEntity;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lnet/time4j/engine/ChronoEntity<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1188
    invoke-virtual {p0, p1, v0}, Lnet/time4j/format/expert/ChronoFormatter;->parseRaw(Ljava/lang/CharSequence;I)Lnet/time4j/engine/ChronoEntity;

    move-result-object p1

    return-object p1
.end method

.method public print(Ljava/lang/Object;Ljava/lang/Appendable;Lnet/time4j/engine/AttributeQuery;Lnet/time4j/engine/ChronoFunction;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Appendable;",
            "Lnet/time4j/engine/AttributeQuery;",
            "Lnet/time4j/engine/ChronoFunction<",
            "Lnet/time4j/engine/ChronoDisplay;",
            "TR;>;)TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 796
    invoke-direct {p0, p1, p3}, Lnet/time4j/format/expert/ChronoFormatter;->display(Ljava/lang/Object;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/engine/ChronoDisplay;

    move-result-object p1

    const/4 v0, 0x0

    .line 797
    invoke-virtual {p0, p1, p2, p3, v0}, Lnet/time4j/format/expert/ChronoFormatter;->print(Lnet/time4j/engine/ChronoDisplay;Ljava/lang/Appendable;Lnet/time4j/engine/AttributeQuery;Z)Ljava/util/Set;

    .line 798
    invoke-interface {p4, p1}, Lnet/time4j/engine/ChronoFunction;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public print(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 667
    iget-object v0, p0, Lnet/time4j/format/expert/ChronoFormatter;->globalAttributes:Lnet/time4j/format/expert/AttributeSet;

    invoke-direct {p0, p1, v0}, Lnet/time4j/format/expert/ChronoFormatter;->display(Ljava/lang/Object;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/engine/ChronoDisplay;

    move-result-object p1

    .line 668
    invoke-direct {p0, p1}, Lnet/time4j/format/expert/ChronoFormatter;->format0(Lnet/time4j/engine/ChronoDisplay;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public print(Ljava/lang/Object;Ljava/lang/Appendable;Lnet/time4j/engine/AttributeQuery;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Appendable;",
            "Lnet/time4j/engine/AttributeQuery;",
            ")",
            "Ljava/util/Set<",
            "Lnet/time4j/format/expert/ElementPosition;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 783
    invoke-direct {p0, p1, p3}, Lnet/time4j/format/expert/ChronoFormatter;->display(Ljava/lang/Object;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/engine/ChronoDisplay;

    move-result-object p1

    const/4 v0, 0x1

    .line 784
    invoke-virtual {p0, p1, p2, p3, v0}, Lnet/time4j/format/expert/ChronoFormatter;->print(Lnet/time4j/engine/ChronoDisplay;Ljava/lang/Appendable;Lnet/time4j/engine/AttributeQuery;Z)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public print(Ljava/lang/Object;Ljava/lang/StringBuilder;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/StringBuilder;",
            ")",
            "Ljava/util/Set<",
            "Lnet/time4j/format/expert/ElementPosition;",
            ">;"
        }
    .end annotation

    .line 730
    iget-object v0, p0, Lnet/time4j/format/expert/ChronoFormatter;->globalAttributes:Lnet/time4j/format/expert/AttributeSet;

    invoke-direct {p0, p1, v0}, Lnet/time4j/format/expert/ChronoFormatter;->display(Ljava/lang/Object;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/engine/ChronoDisplay;

    move-result-object p1

    .line 733
    :try_start_0
    iget-object v0, p0, Lnet/time4j/format/expert/ChronoFormatter;->globalAttributes:Lnet/time4j/format/expert/AttributeSet;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lnet/time4j/format/expert/ChronoFormatter;->print(Lnet/time4j/engine/ChronoDisplay;Ljava/lang/Appendable;Lnet/time4j/engine/AttributeQuery;Z)Ljava/util/Set;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 735
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method print(Lnet/time4j/engine/ChronoDisplay;Ljava/lang/Appendable;Lnet/time4j/engine/AttributeQuery;Z)Ljava/util/Set;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoDisplay;",
            "Ljava/lang/Appendable;",
            "Lnet/time4j/engine/AttributeQuery;",
            "Z)",
            "Ljava/util/Set<",
            "Lnet/time4j/format/expert/ElementPosition;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    const-string v0, "Missing text result buffer."

    .line 811
    invoke-static {v9, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 815
    iget-object v0, v1, Lnet/time4j/format/expert/ChronoFormatter;->steps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    .line 818
    iget-object v0, v1, Lnet/time4j/format/expert/ChronoFormatter;->globalAttributes:Lnet/time4j/format/expert/AttributeSet;

    const/4 v2, 0x0

    move-object/from16 v12, p3

    if-ne v12, v0, :cond_0

    const/4 v13, 0x1

    goto :goto_0

    :cond_0
    move v13, v2

    :goto_0
    if-eqz p4, :cond_1

    .line 821
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0, v10}, Ljava/util/LinkedHashSet;-><init>(I)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 824
    :goto_1
    iget-boolean v3, v1, Lnet/time4j/format/expert/ChronoFormatter;->hasOrMarkers:Z

    const-string v15, "Not formattable: "

    if-eqz v3, :cond_14

    .line 825
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    .line 826
    new-instance v3, Ljava/lang/StringBuilder;

    shl-int/lit8 v4, v10, 0x2

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 827
    invoke-interface {v7, v3}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    if-eqz p4, :cond_2

    .line 831
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 832
    invoke-interface {v3, v0}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    move-object v6, v3

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :goto_2
    move v5, v2

    :goto_3
    if-ge v5, v10, :cond_13

    .line 839
    iget-object v3, v1, Lnet/time4j/format/expert/ChronoFormatter;->steps:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, Lnet/time4j/format/expert/FormatStep;

    .line 840
    invoke-virtual/range {v16 .. v16}, Lnet/time4j/format/expert/FormatStep;->getLevel()I

    move-result v17

    move/from16 v3, v17

    :goto_4
    if-le v3, v2, :cond_4

    .line 845
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 846
    invoke-interface {v7}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v14, v18

    check-cast v14, Ljava/lang/CharSequence;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 847
    invoke-interface {v7, v4}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    if-eqz p4, :cond_3

    .line 849
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 850
    invoke-interface {v6}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v0, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 851
    invoke-interface {v6, v0}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    :cond_4
    :goto_5
    if-ge v3, v2, :cond_6

    .line 858
    invoke-interface {v7}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/StringBuilder;

    .line 859
    invoke-interface {v7}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    .line 860
    invoke-interface {v7, v4}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    if-eqz p4, :cond_5

    .line 862
    invoke-interface {v6}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 863
    invoke-interface {v6}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    .line 864
    invoke-interface {v6, v0}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 869
    :cond_6
    invoke-interface {v7}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/StringBuilder;

    if-eqz p4, :cond_7

    .line 871
    invoke-interface {v6}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    :cond_7
    move-object v14, v0

    const/4 v3, -0x1

    move-object/from16 v2, v16

    move v11, v3

    move-object/from16 v3, p1

    move/from16 v19, v5

    move-object/from16 v5, p3

    move-object/from16 v20, v6

    move-object v6, v14

    move-object/from16 v21, v7

    move v7, v13

    .line 878
    :try_start_0
    invoke-virtual/range {v2 .. v7}, Lnet/time4j/format/expert/FormatStep;->print(Lnet/time4j/engine/ChronoDisplay;Ljava/lang/Appendable;Lnet/time4j/engine/AttributeQuery;Ljava/util/Set;Z)I

    move-result v3
    :try_end_0
    .catch Lnet/time4j/engine/ChronoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    goto :goto_7

    :catch_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    :goto_6
    move v3, v11

    :goto_7
    if-ne v3, v11, :cond_11

    .line 887
    invoke-virtual/range {v16 .. v16}, Lnet/time4j/format/expert/FormatStep;->getSection()I

    move-result v2

    .line 890
    invoke-virtual/range {v16 .. v16}, Lnet/time4j/format/expert/FormatStep;->isNewOrBlockStarted()Z

    move-result v3

    if-nez v3, :cond_9

    move/from16 v3, v19

    add-int/lit8 v5, v3, 0x1

    :goto_8
    if-ge v5, v10, :cond_a

    .line 892
    iget-object v4, v1, Lnet/time4j/format/expert/ChronoFormatter;->steps:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/time4j/format/expert/FormatStep;

    .line 893
    invoke-virtual {v4}, Lnet/time4j/format/expert/FormatStep;->isNewOrBlockStarted()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {v4}, Lnet/time4j/format/expert/FormatStep;->getSection()I

    move-result v4

    if-ne v4, v2, :cond_8

    goto :goto_9

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_9
    move/from16 v3, v19

    :cond_a
    move v5, v3

    :goto_9
    if-gt v5, v3, :cond_d

    .line 900
    invoke-virtual/range {v16 .. v16}, Lnet/time4j/format/expert/FormatStep;->isNewOrBlockStarted()Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_a

    :cond_b
    if-nez v0, :cond_c

    .line 918
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 920
    :cond_c
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 902
    :cond_d
    :goto_a
    invoke-interface/range {v21 .. v21}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    .line 903
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 904
    invoke-interface/range {v21 .. v21}, Ljava/util/Deque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_e

    .line 905
    invoke-interface/range {v21 .. v21}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_e
    move-object/from16 v2, v21

    .line 907
    invoke-interface {v2, v0}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    if-eqz p4, :cond_10

    .line 909
    invoke-interface/range {v20 .. v20}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    .line 910
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 911
    invoke-interface/range {v20 .. v20}, Ljava/util/Deque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_f

    .line 912
    invoke-interface/range {v20 .. v20}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_f
    move-object/from16 v4, v20

    .line 914
    invoke-interface {v4, v0}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    goto :goto_b

    :cond_10
    move-object/from16 v4, v20

    goto :goto_b

    :cond_11
    move/from16 v3, v19

    move-object/from16 v4, v20

    move-object/from16 v2, v21

    .line 922
    invoke-virtual/range {v16 .. v16}, Lnet/time4j/format/expert/FormatStep;->isNewOrBlockStarted()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 923
    invoke-virtual/range {v16 .. v16}, Lnet/time4j/format/expert/FormatStep;->skipTrailingOrBlocks()I

    move-result v5

    goto :goto_b

    :cond_12
    move v5, v3

    :goto_b
    const/4 v3, 0x1

    add-int/2addr v5, v3

    move-object v7, v2

    move-object v6, v4

    move-object v0, v14

    move/from16 v2, v17

    goto/16 :goto_3

    :cond_13
    move-object v4, v6

    move-object v2, v7

    .line 932
    invoke-interface {v2}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/StringBuilder;

    .line 933
    invoke-interface {v2}, Ljava/util/Deque;->clear()V

    .line 934
    invoke-interface {v9, v3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    if-eqz p4, :cond_16

    .line 937
    invoke-interface {v4}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 938
    invoke-interface {v4}, Ljava/util/Deque;->clear()V

    goto :goto_d

    :cond_14
    move v11, v2

    :goto_c
    if-ge v11, v10, :cond_16

    .line 943
    :try_start_1
    iget-object v2, v1, Lnet/time4j/format/expert/ChronoFormatter;->steps:Ljava/util/List;

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lnet/time4j/format/expert/FormatStep;

    move-object v2, v14

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object v6, v0

    move v7, v13

    .line 944
    invoke-virtual/range {v2 .. v7}, Lnet/time4j/format/expert/FormatStep;->print(Lnet/time4j/engine/ChronoDisplay;Ljava/lang/Appendable;Lnet/time4j/engine/AttributeQuery;Ljava/util/Set;Z)I

    .line 946
    invoke-virtual {v14}, Lnet/time4j/format/expert/FormatStep;->isNewOrBlockStarted()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 947
    invoke-virtual {v14}, Lnet/time4j/format/expert/FormatStep;->skipTrailingOrBlocks()I

    move-result v11
    :try_end_1
    .catch Lnet/time4j/engine/ChronoException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_15
    const/4 v2, 0x1

    add-int/2addr v11, v2

    goto :goto_c

    :catch_2
    move-exception v0

    .line 953
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_16
    :goto_d
    if-eqz p4, :cond_17

    .line 958
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0

    :cond_17
    const/4 v2, 0x0

    return-object v2
.end method

.method public toFormat()Ljava/text/Format;
    .locals 1

    .line 2092
    new-instance v0, Lnet/time4j/format/expert/ChronoFormatter$TraditionalFormat;

    invoke-direct {v0, p0}, Lnet/time4j/format/expert/ChronoFormatter$TraditionalFormat;-><init>(Lnet/time4j/format/expert/ChronoFormatter;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 2748
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "net.time4j.format.ChronoFormatter[chronology="

    .line 2749
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2750
    iget-object v1, p0, Lnet/time4j/format/expert/ChronoFormatter;->chronology:Lnet/time4j/engine/Chronology;

    invoke-virtual {v1}, Lnet/time4j/engine/Chronology;->getChronoType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2751
    iget-object v1, p0, Lnet/time4j/format/expert/ChronoFormatter;->overrideHandler:Lnet/time4j/format/expert/ChronoFormatter$OverrideHandler;

    if-eqz v1, :cond_0

    const-string v1, ", override="

    .line 2752
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2753
    iget-object v1, p0, Lnet/time4j/format/expert/ChronoFormatter;->overrideHandler:Lnet/time4j/format/expert/ChronoFormatter$OverrideHandler;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, ", default-attributes="

    .line 2755
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2756
    iget-object v1, p0, Lnet/time4j/format/expert/ChronoFormatter;->globalAttributes:Lnet/time4j/format/expert/AttributeSet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", default-values="

    .line 2757
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2758
    iget-object v1, p0, Lnet/time4j/format/expert/ChronoFormatter;->defaults:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", processors="

    .line 2759
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    .line 2761
    iget-object v2, p0, Lnet/time4j/format/expert/ChronoFormatter;->steps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/time4j/format/expert/FormatStep;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    const/16 v4, 0x7b

    .line 2764
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const/16 v4, 0x7c

    .line 2766
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2768
    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const-string v1, "}]"

    .line 2770
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2771
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic with(Ljava/util/Locale;)Lnet/time4j/format/TemporalFormatter;
    .locals 0

    .line 172
    invoke-virtual {p0, p1}, Lnet/time4j/format/expert/ChronoFormatter;->with(Ljava/util/Locale;)Lnet/time4j/format/expert/ChronoFormatter;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Lnet/time4j/format/Leniency;)Lnet/time4j/format/TemporalFormatter;
    .locals 0

    .line 172
    invoke-virtual {p0, p1}, Lnet/time4j/format/expert/ChronoFormatter;->with(Lnet/time4j/format/Leniency;)Lnet/time4j/format/expert/ChronoFormatter;

    move-result-object p1

    return-object p1
.end method

.method public with(Ljava/util/Locale;)Lnet/time4j/format/expert/ChronoFormatter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            ")",
            "Lnet/time4j/format/expert/ChronoFormatter<",
            "TT;>;"
        }
    .end annotation

    .line 1324
    iget-object v0, p0, Lnet/time4j/format/expert/ChronoFormatter;->globalAttributes:Lnet/time4j/format/expert/AttributeSet;

    invoke-virtual {v0}, Lnet/time4j/format/expert/AttributeSet;->getLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 1328
    :cond_0
    new-instance v0, Lnet/time4j/format/expert/ChronoFormatter;

    iget-object v1, p0, Lnet/time4j/format/expert/ChronoFormatter;->globalAttributes:Lnet/time4j/format/expert/AttributeSet;

    invoke-virtual {v1, p1}, Lnet/time4j/format/expert/AttributeSet;->withLocale(Ljava/util/Locale;)Lnet/time4j/format/expert/AttributeSet;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lnet/time4j/format/expert/ChronoFormatter;-><init>(Lnet/time4j/format/expert/ChronoFormatter;Lnet/time4j/format/expert/AttributeSet;)V

    return-object v0
.end method

.method with(Ljava/util/Map;Lnet/time4j/format/expert/AttributeSet;)Lnet/time4j/format/expert/ChronoFormatter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;",
            "Ljava/lang/Object;",
            ">;",
            "Lnet/time4j/format/expert/AttributeSet;",
            ")",
            "Lnet/time4j/format/expert/ChronoFormatter<",
            "TT;>;"
        }
    .end annotation

    .line 1936
    iget-object v0, p0, Lnet/time4j/format/expert/ChronoFormatter;->globalAttributes:Lnet/time4j/format/expert/AttributeSet;

    invoke-static {p2, v0}, Lnet/time4j/format/expert/AttributeSet;->merge(Lnet/time4j/format/expert/AttributeSet;Lnet/time4j/format/expert/AttributeSet;)Lnet/time4j/format/expert/AttributeSet;

    move-result-object p2

    .line 1938
    new-instance v0, Lnet/time4j/format/expert/ChronoFormatter;

    new-instance v1, Lnet/time4j/format/expert/ChronoFormatter;

    invoke-direct {v1, p0, p1}, Lnet/time4j/format/expert/ChronoFormatter;-><init>(Lnet/time4j/format/expert/ChronoFormatter;Ljava/util/Map;)V

    sget-object p1, Lnet/time4j/history/internal/HistoricAttribute;->CALENDAR_HISTORY:Lnet/time4j/engine/AttributeKey;

    const/4 v2, 0x0

    .line 1941
    invoke-virtual {p2, p1, v2}, Lnet/time4j/format/expert/AttributeSet;->get(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/history/ChronoHistory;

    invoke-direct {v0, v1, p2, p1}, Lnet/time4j/format/expert/ChronoFormatter;-><init>(Lnet/time4j/format/expert/ChronoFormatter;Lnet/time4j/format/expert/AttributeSet;Lnet/time4j/history/ChronoHistory;)V

    return-object v0
.end method

.method public with(Lnet/time4j/engine/AttributeKey;C)Lnet/time4j/format/expert/ChronoFormatter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/AttributeKey<",
            "Ljava/lang/Character;",
            ">;C)",
            "Lnet/time4j/format/expert/ChronoFormatter<",
            "TT;>;"
        }
    .end annotation

    .line 1856
    new-instance v0, Lnet/time4j/format/Attributes$Builder;

    invoke-direct {v0}, Lnet/time4j/format/Attributes$Builder;-><init>()V

    iget-object v1, p0, Lnet/time4j/format/expert/ChronoFormatter;->globalAttributes:Lnet/time4j/format/expert/AttributeSet;

    .line 1858
    invoke-virtual {v1}, Lnet/time4j/format/expert/AttributeSet;->getAttributes()Lnet/time4j/format/Attributes;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/time4j/format/Attributes$Builder;->setAll(Lnet/time4j/format/Attributes;)Lnet/time4j/format/Attributes$Builder;

    move-result-object v0

    .line 1859
    invoke-virtual {v0, p1, p2}, Lnet/time4j/format/Attributes$Builder;->set(Lnet/time4j/engine/AttributeKey;C)Lnet/time4j/format/Attributes$Builder;

    move-result-object p1

    .line 1860
    invoke-virtual {p1}, Lnet/time4j/format/Attributes$Builder;->build()Lnet/time4j/format/Attributes;

    move-result-object p1

    .line 1861
    new-instance p2, Lnet/time4j/format/expert/ChronoFormatter;

    invoke-direct {p2, p0, p1}, Lnet/time4j/format/expert/ChronoFormatter;-><init>(Lnet/time4j/format/expert/ChronoFormatter;Lnet/time4j/format/Attributes;)V

    return-object p2
.end method

.method public with(Lnet/time4j/engine/AttributeKey;I)Lnet/time4j/format/expert/ChronoFormatter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/AttributeKey<",
            "Ljava/lang/Integer;",
            ">;I)",
            "Lnet/time4j/format/expert/ChronoFormatter<",
            "TT;>;"
        }
    .end annotation

    .line 1822
    new-instance v0, Lnet/time4j/format/Attributes$Builder;

    invoke-direct {v0}, Lnet/time4j/format/Attributes$Builder;-><init>()V

    iget-object v1, p0, Lnet/time4j/format/expert/ChronoFormatter;->globalAttributes:Lnet/time4j/format/expert/AttributeSet;

    .line 1824
    invoke-virtual {v1}, Lnet/time4j/format/expert/AttributeSet;->getAttributes()Lnet/time4j/format/Attributes;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/time4j/format/Attributes$Builder;->setAll(Lnet/time4j/format/Attributes;)Lnet/time4j/format/Attributes$Builder;

    move-result-object v0

    .line 1825
    invoke-virtual {v0, p1, p2}, Lnet/time4j/format/Attributes$Builder;->set(Lnet/time4j/engine/AttributeKey;I)Lnet/time4j/format/Attributes$Builder;

    move-result-object p1

    .line 1826
    invoke-virtual {p1}, Lnet/time4j/format/Attributes$Builder;->build()Lnet/time4j/format/Attributes;

    move-result-object p1

    .line 1827
    new-instance p2, Lnet/time4j/format/expert/ChronoFormatter;

    invoke-direct {p2, p0, p1}, Lnet/time4j/format/expert/ChronoFormatter;-><init>(Lnet/time4j/format/expert/ChronoFormatter;Lnet/time4j/format/Attributes;)V

    return-object p2
.end method

.method public with(Lnet/time4j/engine/AttributeKey;Ljava/lang/Enum;)Lnet/time4j/format/expert/ChronoFormatter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Enum<",
            "TA;>;>(",
            "Lnet/time4j/engine/AttributeKey<",
            "TA;>;TA;)",
            "Lnet/time4j/format/expert/ChronoFormatter<",
            "TT;>;"
        }
    .end annotation

    .line 1892
    new-instance v0, Lnet/time4j/format/Attributes$Builder;

    invoke-direct {v0}, Lnet/time4j/format/Attributes$Builder;-><init>()V

    iget-object v1, p0, Lnet/time4j/format/expert/ChronoFormatter;->globalAttributes:Lnet/time4j/format/expert/AttributeSet;

    .line 1894
    invoke-virtual {v1}, Lnet/time4j/format/expert/AttributeSet;->getAttributes()Lnet/time4j/format/Attributes;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/time4j/format/Attributes$Builder;->setAll(Lnet/time4j/format/Attributes;)Lnet/time4j/format/Attributes$Builder;

    move-result-object v0

    .line 1895
    invoke-virtual {v0, p1, p2}, Lnet/time4j/format/Attributes$Builder;->set(Lnet/time4j/engine/AttributeKey;Ljava/lang/Enum;)Lnet/time4j/format/Attributes$Builder;

    move-result-object p1

    .line 1896
    invoke-virtual {p1}, Lnet/time4j/format/Attributes$Builder;->build()Lnet/time4j/format/Attributes;

    move-result-object p1

    .line 1897
    new-instance p2, Lnet/time4j/format/expert/ChronoFormatter;

    invoke-direct {p2, p0, p1}, Lnet/time4j/format/expert/ChronoFormatter;-><init>(Lnet/time4j/format/expert/ChronoFormatter;Lnet/time4j/format/Attributes;)V

    return-object p2
.end method

.method public with(Lnet/time4j/engine/AttributeKey;Z)Lnet/time4j/format/expert/ChronoFormatter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/AttributeKey<",
            "Ljava/lang/Boolean;",
            ">;Z)",
            "Lnet/time4j/format/expert/ChronoFormatter<",
            "TT;>;"
        }
    .end annotation

    .line 1788
    new-instance v0, Lnet/time4j/format/Attributes$Builder;

    invoke-direct {v0}, Lnet/time4j/format/Attributes$Builder;-><init>()V

    iget-object v1, p0, Lnet/time4j/format/expert/ChronoFormatter;->globalAttributes:Lnet/time4j/format/expert/AttributeSet;

    .line 1790
    invoke-virtual {v1}, Lnet/time4j/format/expert/AttributeSet;->getAttributes()Lnet/time4j/format/Attributes;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/time4j/format/Attributes$Builder;->setAll(Lnet/time4j/format/Attributes;)Lnet/time4j/format/Attributes$Builder;

    move-result-object v0

    .line 1791
    invoke-virtual {v0, p1, p2}, Lnet/time4j/format/Attributes$Builder;->set(Lnet/time4j/engine/AttributeKey;Z)Lnet/time4j/format/Attributes$Builder;

    move-result-object p1

    .line 1792
    invoke-virtual {p1}, Lnet/time4j/format/Attributes$Builder;->build()Lnet/time4j/format/Attributes;

    move-result-object p1

    .line 1793
    new-instance p2, Lnet/time4j/format/expert/ChronoFormatter;

    invoke-direct {p2, p0, p1}, Lnet/time4j/format/expert/ChronoFormatter;-><init>(Lnet/time4j/format/expert/ChronoFormatter;Lnet/time4j/format/Attributes;)V

    return-object p2
.end method

.method public with(Lnet/time4j/engine/StartOfDay;)Lnet/time4j/format/expert/ChronoFormatter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/StartOfDay;",
            ")",
            "Lnet/time4j/format/expert/ChronoFormatter<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "Missing start of day."

    .line 1682
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1685
    new-instance v0, Lnet/time4j/format/expert/ChronoFormatter;

    iget-object v1, p0, Lnet/time4j/format/expert/ChronoFormatter;->globalAttributes:Lnet/time4j/format/expert/AttributeSet;

    sget-object v2, Lnet/time4j/format/Attributes;->START_OF_DAY:Lnet/time4j/engine/AttributeKey;

    invoke-virtual {v1, v2, p1}, Lnet/time4j/format/expert/AttributeSet;->withInternal(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Lnet/time4j/format/expert/AttributeSet;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lnet/time4j/format/expert/ChronoFormatter;-><init>(Lnet/time4j/format/expert/ChronoFormatter;Lnet/time4j/format/expert/AttributeSet;)V

    return-object v0
.end method

.method public with(Lnet/time4j/format/Attributes;)Lnet/time4j/format/expert/ChronoFormatter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/format/Attributes;",
            ")",
            "Lnet/time4j/format/expert/ChronoFormatter<",
            "TT;>;"
        }
    .end annotation

    .line 1921
    new-instance v0, Lnet/time4j/format/Attributes$Builder;

    invoke-direct {v0}, Lnet/time4j/format/Attributes$Builder;-><init>()V

    iget-object v1, p0, Lnet/time4j/format/expert/ChronoFormatter;->globalAttributes:Lnet/time4j/format/expert/AttributeSet;

    .line 1923
    invoke-virtual {v1}, Lnet/time4j/format/expert/AttributeSet;->getAttributes()Lnet/time4j/format/Attributes;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/time4j/format/Attributes$Builder;->setAll(Lnet/time4j/format/Attributes;)Lnet/time4j/format/Attributes$Builder;

    move-result-object v0

    .line 1924
    invoke-virtual {v0, p1}, Lnet/time4j/format/Attributes$Builder;->setAll(Lnet/time4j/format/Attributes;)Lnet/time4j/format/Attributes$Builder;

    move-result-object p1

    .line 1925
    invoke-virtual {p1}, Lnet/time4j/format/Attributes$Builder;->build()Lnet/time4j/format/Attributes;

    move-result-object p1

    .line 1926
    new-instance v0, Lnet/time4j/format/expert/ChronoFormatter;

    invoke-direct {v0, p0, p1}, Lnet/time4j/format/expert/ChronoFormatter;-><init>(Lnet/time4j/format/expert/ChronoFormatter;Lnet/time4j/format/Attributes;)V

    return-object v0
.end method

.method public with(Lnet/time4j/format/Leniency;)Lnet/time4j/format/expert/ChronoFormatter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/format/Leniency;",
            ")",
            "Lnet/time4j/format/expert/ChronoFormatter<",
            "TT;>;"
        }
    .end annotation

    .line 1335
    sget-object v0, Lnet/time4j/format/Attributes;->LENIENCY:Lnet/time4j/engine/AttributeKey;

    invoke-virtual {p0, v0, p1}, Lnet/time4j/format/expert/ChronoFormatter;->with(Lnet/time4j/engine/AttributeKey;Ljava/lang/Enum;)Lnet/time4j/format/expert/ChronoFormatter;

    move-result-object p1

    return-object p1
.end method

.method public with(Lnet/time4j/history/ChronoHistory;)Lnet/time4j/format/expert/ChronoFormatter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/history/ChronoHistory;",
            ")",
            "Lnet/time4j/format/expert/ChronoFormatter<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "Missing calendar history."

    .line 1450
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1453
    new-instance v0, Lnet/time4j/format/Attributes$Builder;

    invoke-direct {v0}, Lnet/time4j/format/Attributes$Builder;-><init>()V

    iget-object v1, p0, Lnet/time4j/format/expert/ChronoFormatter;->globalAttributes:Lnet/time4j/format/expert/AttributeSet;

    .line 1455
    invoke-virtual {v1}, Lnet/time4j/format/expert/AttributeSet;->getAttributes()Lnet/time4j/format/Attributes;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/time4j/format/Attributes$Builder;->setAll(Lnet/time4j/format/Attributes;)Lnet/time4j/format/Attributes$Builder;

    move-result-object v0

    .line 1456
    invoke-virtual {p1}, Lnet/time4j/history/ChronoHistory;->getVariant()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/time4j/format/Attributes$Builder;->setCalendarVariant(Ljava/lang/String;)Lnet/time4j/format/Attributes$Builder;

    move-result-object v0

    .line 1457
    invoke-virtual {v0}, Lnet/time4j/format/Attributes$Builder;->build()Lnet/time4j/format/Attributes;

    move-result-object v0

    .line 1458
    iget-object v1, p0, Lnet/time4j/format/expert/ChronoFormatter;->globalAttributes:Lnet/time4j/format/expert/AttributeSet;

    sget-object v2, Lnet/time4j/history/internal/HistoricAttribute;->CALENDAR_HISTORY:Lnet/time4j/engine/AttributeKey;

    .line 1460
    invoke-virtual {v1, v2, p1}, Lnet/time4j/format/expert/AttributeSet;->withInternal(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Lnet/time4j/format/expert/AttributeSet;

    move-result-object v1

    .line 1461
    invoke-virtual {v1, v0}, Lnet/time4j/format/expert/AttributeSet;->withAttributes(Lnet/time4j/format/Attributes;)Lnet/time4j/format/expert/AttributeSet;

    move-result-object v0

    .line 1462
    new-instance v1, Lnet/time4j/format/expert/ChronoFormatter;

    invoke-direct {v1, p0, v0, p1}, Lnet/time4j/format/expert/ChronoFormatter;-><init>(Lnet/time4j/format/expert/ChronoFormatter;Lnet/time4j/format/expert/AttributeSet;Lnet/time4j/history/ChronoHistory;)V

    return-object v1
.end method

.method public with(Lnet/time4j/tz/Timezone;)Lnet/time4j/format/expert/ChronoFormatter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/tz/Timezone;",
            ")",
            "Lnet/time4j/format/expert/ChronoFormatter<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "Missing timezone id."

    .line 1528
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1531
    new-instance v0, Lnet/time4j/format/Attributes$Builder;

    invoke-direct {v0}, Lnet/time4j/format/Attributes$Builder;-><init>()V

    iget-object v1, p0, Lnet/time4j/format/expert/ChronoFormatter;->globalAttributes:Lnet/time4j/format/expert/AttributeSet;

    .line 1533
    invoke-virtual {v1}, Lnet/time4j/format/expert/AttributeSet;->getAttributes()Lnet/time4j/format/Attributes;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/time4j/format/Attributes$Builder;->setAll(Lnet/time4j/format/Attributes;)Lnet/time4j/format/Attributes$Builder;

    move-result-object v0

    .line 1534
    invoke-virtual {p1}, Lnet/time4j/tz/Timezone;->getID()Lnet/time4j/tz/TZID;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/time4j/format/Attributes$Builder;->setTimezone(Lnet/time4j/tz/TZID;)Lnet/time4j/format/Attributes$Builder;

    move-result-object v0

    .line 1535
    invoke-virtual {v0}, Lnet/time4j/format/Attributes$Builder;->build()Lnet/time4j/format/Attributes;

    move-result-object v0

    .line 1536
    iget-object v1, p0, Lnet/time4j/format/expert/ChronoFormatter;->globalAttributes:Lnet/time4j/format/expert/AttributeSet;

    invoke-virtual {v1, v0}, Lnet/time4j/format/expert/AttributeSet;->withAttributes(Lnet/time4j/format/Attributes;)Lnet/time4j/format/expert/AttributeSet;

    move-result-object v0

    .line 1537
    sget-object v1, Lnet/time4j/format/Attributes;->TRANSITION_STRATEGY:Lnet/time4j/engine/AttributeKey;

    invoke-virtual {p1}, Lnet/time4j/tz/Timezone;->getStrategy()Lnet/time4j/tz/TransitionStrategy;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lnet/time4j/format/expert/AttributeSet;->withInternal(Lnet/time4j/engine/AttributeKey;Ljava/lang/Object;)Lnet/time4j/format/expert/AttributeSet;

    move-result-object p1

    .line 1538
    new-instance v0, Lnet/time4j/format/expert/ChronoFormatter;

    invoke-direct {v0, p0, p1}, Lnet/time4j/format/expert/ChronoFormatter;-><init>(Lnet/time4j/format/expert/ChronoFormatter;Lnet/time4j/format/expert/AttributeSet;)V

    return-object v0
.end method

.method public withAlternativeEraNames()Lnet/time4j/format/expert/ChronoFormatter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/format/expert/ChronoFormatter<",
            "TT;>;"
        }
    .end annotation

    .line 1360
    new-instance v0, Lnet/time4j/format/Attributes$Builder;

    invoke-direct {v0}, Lnet/time4j/format/Attributes$Builder;-><init>()V

    iget-object v1, p0, Lnet/time4j/format/expert/ChronoFormatter;->globalAttributes:Lnet/time4j/format/expert/AttributeSet;

    .line 1362
    invoke-virtual {v1}, Lnet/time4j/format/expert/AttributeSet;->getAttributes()Lnet/time4j/format/Attributes;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/time4j/format/Attributes$Builder;->setAll(Lnet/time4j/format/Attributes;)Lnet/time4j/format/Attributes$Builder;

    move-result-object v0

    sget-object v1, Lnet/time4j/history/internal/HistoricAttribute;->COMMON_ERA:Lnet/time4j/engine/AttributeKey;

    const/4 v2, 0x1

    .line 1363
    invoke-virtual {v0, v1, v2}, Lnet/time4j/format/Attributes$Builder;->set(Lnet/time4j/engine/AttributeKey;Z)Lnet/time4j/format/Attributes$Builder;

    move-result-object v0

    sget-object v1, Lnet/time4j/history/internal/HistoricAttribute;->LATIN_ERA:Lnet/time4j/engine/AttributeKey;

    const/4 v2, 0x0

    .line 1364
    invoke-virtual {v0, v1, v2}, Lnet/time4j/format/Attributes$Builder;->set(Lnet/time4j/engine/AttributeKey;Z)Lnet/time4j/format/Attributes$Builder;

    move-result-object v0

    .line 1365
    invoke-virtual {v0}, Lnet/time4j/format/Attributes$Builder;->build()Lnet/time4j/format/Attributes;

    move-result-object v0

    .line 1366
    new-instance v1, Lnet/time4j/format/expert/ChronoFormatter;

    invoke-direct {v1, p0, v0}, Lnet/time4j/format/expert/ChronoFormatter;-><init>(Lnet/time4j/format/expert/ChronoFormatter;Lnet/time4j/format/Attributes;)V

    return-object v1
.end method

.method public withCalendarVariant(Ljava/lang/String;)Lnet/time4j/format/expert/ChronoFormatter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lnet/time4j/format/expert/ChronoFormatter<",
            "TT;>;"
        }
    .end annotation

    .line 1626
    new-instance v0, Lnet/time4j/format/Attributes$Builder;

    invoke-direct {v0}, Lnet/time4j/format/Attributes$Builder;-><init>()V

    iget-object v1, p0, Lnet/time4j/format/expert/ChronoFormatter;->globalAttributes:Lnet/time4j/format/expert/AttributeSet;

    .line 1628
    invoke-virtual {v1}, Lnet/time4j/format/expert/AttributeSet;->getAttributes()Lnet/time4j/format/Attributes;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/time4j/format/Attributes$Builder;->setAll(Lnet/time4j/format/Attributes;)Lnet/time4j/format/Attributes$Builder;

    move-result-object v0

    .line 1629
    invoke-virtual {v0, p1}, Lnet/time4j/format/Attributes$Builder;->setCalendarVariant(Ljava/lang/String;)Lnet/time4j/format/Attributes$Builder;

    move-result-object p1

    .line 1630
    invoke-virtual {p1}, Lnet/time4j/format/Attributes$Builder;->build()Lnet/time4j/format/Attributes;

    move-result-object p1

    .line 1631
    new-instance v0, Lnet/time4j/format/expert/ChronoFormatter;

    invoke-direct {v0, p0, p1}, Lnet/time4j/format/expert/ChronoFormatter;-><init>(Lnet/time4j/format/expert/ChronoFormatter;Lnet/time4j/format/Attributes;)V

    return-object v0
.end method

.method public withCalendarVariant(Lnet/time4j/engine/VariantSource;)Lnet/time4j/format/expert/ChronoFormatter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/VariantSource;",
            ")",
            "Lnet/time4j/format/expert/ChronoFormatter<",
            "TT;>;"
        }
    .end annotation

    .line 1659
    invoke-interface {p1}, Lnet/time4j/engine/VariantSource;->getVariant()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/time4j/format/expert/ChronoFormatter;->withCalendarVariant(Ljava/lang/String;)Lnet/time4j/format/expert/ChronoFormatter;

    move-result-object p1

    return-object p1
.end method

.method public withDefault(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Lnet/time4j/format/expert/ChronoFormatter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/time4j/engine/ChronoElement<",
            "TV;>;TV;)",
            "Lnet/time4j/format/expert/ChronoFormatter<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "Missing element."

    .line 1754
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1757
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1758
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1759
    new-instance p1, Lnet/time4j/format/expert/ChronoFormatter;

    invoke-direct {p1, p0, v0}, Lnet/time4j/format/expert/ChronoFormatter;-><init>(Lnet/time4j/format/expert/ChronoFormatter;Ljava/util/Map;)V

    return-object p1
.end method

.method public withGregorianCutOver(Lnet/time4j/PlainDate;)Lnet/time4j/format/expert/ChronoFormatter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/PlainDate;",
            ")",
            "Lnet/time4j/format/expert/ChronoFormatter<",
            "TT;>;"
        }
    .end annotation

    .line 1423
    invoke-static {p1}, Lnet/time4j/history/ChronoHistory;->ofGregorianReform(Lnet/time4j/PlainDate;)Lnet/time4j/history/ChronoHistory;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/time4j/format/expert/ChronoFormatter;->with(Lnet/time4j/history/ChronoHistory;)Lnet/time4j/format/expert/ChronoFormatter;

    move-result-object p1

    return-object p1
.end method

.method public withLatinEraNames()Lnet/time4j/format/expert/ChronoFormatter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/format/expert/ChronoFormatter<",
            "TT;>;"
        }
    .end annotation

    .line 1389
    new-instance v0, Lnet/time4j/format/Attributes$Builder;

    invoke-direct {v0}, Lnet/time4j/format/Attributes$Builder;-><init>()V

    iget-object v1, p0, Lnet/time4j/format/expert/ChronoFormatter;->globalAttributes:Lnet/time4j/format/expert/AttributeSet;

    .line 1391
    invoke-virtual {v1}, Lnet/time4j/format/expert/AttributeSet;->getAttributes()Lnet/time4j/format/Attributes;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/time4j/format/Attributes$Builder;->setAll(Lnet/time4j/format/Attributes;)Lnet/time4j/format/Attributes$Builder;

    move-result-object v0

    sget-object v1, Lnet/time4j/history/internal/HistoricAttribute;->COMMON_ERA:Lnet/time4j/engine/AttributeKey;

    const/4 v2, 0x0

    .line 1392
    invoke-virtual {v0, v1, v2}, Lnet/time4j/format/Attributes$Builder;->set(Lnet/time4j/engine/AttributeKey;Z)Lnet/time4j/format/Attributes$Builder;

    move-result-object v0

    sget-object v1, Lnet/time4j/history/internal/HistoricAttribute;->LATIN_ERA:Lnet/time4j/engine/AttributeKey;

    const/4 v2, 0x1

    .line 1393
    invoke-virtual {v0, v1, v2}, Lnet/time4j/format/Attributes$Builder;->set(Lnet/time4j/engine/AttributeKey;Z)Lnet/time4j/format/Attributes$Builder;

    move-result-object v0

    .line 1394
    invoke-virtual {v0}, Lnet/time4j/format/Attributes$Builder;->build()Lnet/time4j/format/Attributes;

    move-result-object v0

    .line 1395
    new-instance v1, Lnet/time4j/format/expert/ChronoFormatter;

    invoke-direct {v1, p0, v0}, Lnet/time4j/format/expert/ChronoFormatter;-><init>(Lnet/time4j/format/expert/ChronoFormatter;Lnet/time4j/format/Attributes;)V

    return-object v1
.end method

.method public withStdTimezone()Lnet/time4j/format/expert/ChronoFormatter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/format/expert/ChronoFormatter<",
            "TT;>;"
        }
    .end annotation

    .line 1598
    invoke-static {}, Lnet/time4j/tz/Timezone;->ofSystem()Lnet/time4j/tz/Timezone;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/time4j/format/expert/ChronoFormatter;->with(Lnet/time4j/tz/Timezone;)Lnet/time4j/format/expert/ChronoFormatter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic withTimezone(Ljava/lang/String;)Lnet/time4j/format/TemporalFormatter;
    .locals 0

    .line 172
    invoke-virtual {p0, p1}, Lnet/time4j/format/expert/ChronoFormatter;->withTimezone(Ljava/lang/String;)Lnet/time4j/format/expert/ChronoFormatter;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic withTimezone(Lnet/time4j/tz/TZID;)Lnet/time4j/format/TemporalFormatter;
    .locals 0

    .line 172
    invoke-virtual {p0, p1}, Lnet/time4j/format/expert/ChronoFormatter;->withTimezone(Lnet/time4j/tz/TZID;)Lnet/time4j/format/expert/ChronoFormatter;

    move-result-object p1

    return-object p1
.end method

.method public withTimezone(Ljava/lang/String;)Lnet/time4j/format/expert/ChronoFormatter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lnet/time4j/format/expert/ChronoFormatter<",
            "TT;>;"
        }
    .end annotation

    .line 1582
    invoke-static {p1}, Lnet/time4j/tz/Timezone;->of(Ljava/lang/String;)Lnet/time4j/tz/Timezone;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/time4j/format/expert/ChronoFormatter;->with(Lnet/time4j/tz/Timezone;)Lnet/time4j/format/expert/ChronoFormatter;

    move-result-object p1

    return-object p1
.end method

.method public withTimezone(Lnet/time4j/tz/TZID;)Lnet/time4j/format/expert/ChronoFormatter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/tz/TZID;",
            ")",
            "Lnet/time4j/format/expert/ChronoFormatter<",
            "TT;>;"
        }
    .end annotation

    .line 1559
    invoke-static {p1}, Lnet/time4j/tz/Timezone;->of(Lnet/time4j/tz/TZID;)Lnet/time4j/tz/Timezone;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/time4j/format/expert/ChronoFormatter;->with(Lnet/time4j/tz/Timezone;)Lnet/time4j/format/expert/ChronoFormatter;

    move-result-object p1

    return-object p1
.end method
