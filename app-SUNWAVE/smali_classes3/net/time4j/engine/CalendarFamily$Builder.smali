.class public final Lnet/time4j/engine/CalendarFamily$Builder;
.super Lnet/time4j/engine/Chronology$Builder;
.source "CalendarFamily.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/engine/CalendarFamily;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lnet/time4j/engine/CalendarVariant<",
        "TT;>;>",
        "Lnet/time4j/engine/Chronology$Builder<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final calendars:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lnet/time4j/engine/CalendarSystem<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Class;Lnet/time4j/engine/ChronoMerger;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lnet/time4j/engine/ChronoMerger<",
            "TT;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lnet/time4j/engine/CalendarSystem<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 199
    invoke-direct {p0, p1, p2}, Lnet/time4j/engine/Chronology$Builder;-><init>(Ljava/lang/Class;Lnet/time4j/engine/ChronoMerger;)V

    .line 201
    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 205
    iput-object p3, p0, Lnet/time4j/engine/CalendarFamily$Builder;->calendars:Ljava/util/Map;

    return-void

    .line 202
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Missing calendar variants."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static setUp(Ljava/lang/Class;Lnet/time4j/engine/ChronoMerger;Ljava/util/Map;)Lnet/time4j/engine/CalendarFamily$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lnet/time4j/engine/CalendarVariant<",
            "TT;>;>(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lnet/time4j/engine/ChronoMerger<",
            "TT;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lnet/time4j/engine/CalendarSystem<",
            "TT;>;>;)",
            "Lnet/time4j/engine/CalendarFamily$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 239
    new-instance v0, Lnet/time4j/engine/CalendarFamily$Builder;

    invoke-direct {v0, p0, p1, p2}, Lnet/time4j/engine/CalendarFamily$Builder;-><init>(Ljava/lang/Class;Lnet/time4j/engine/ChronoMerger;Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;)Lnet/time4j/engine/CalendarFamily$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/time4j/engine/ChronoElement<",
            "TV;>;",
            "Lnet/time4j/engine/ElementRule<",
            "TT;TV;>;)",
            "Lnet/time4j/engine/CalendarFamily$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 249
    invoke-super {p0, p1, p2}, Lnet/time4j/engine/Chronology$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;)Lnet/time4j/engine/Chronology$Builder;

    return-object p0
.end method

.method public bridge synthetic appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;)Lnet/time4j/engine/Chronology$Builder;
    .locals 0

    .line 185
    invoke-virtual {p0, p1, p2}, Lnet/time4j/engine/CalendarFamily$Builder;->appendElement(Lnet/time4j/engine/ChronoElement;Lnet/time4j/engine/ElementRule;)Lnet/time4j/engine/CalendarFamily$Builder;

    move-result-object p1

    return-object p1
.end method

.method public appendExtension(Lnet/time4j/engine/ChronoExtension;)Lnet/time4j/engine/CalendarFamily$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoExtension;",
            ")",
            "Lnet/time4j/engine/CalendarFamily$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 257
    invoke-super {p0, p1}, Lnet/time4j/engine/Chronology$Builder;->appendExtension(Lnet/time4j/engine/ChronoExtension;)Lnet/time4j/engine/Chronology$Builder;

    return-object p0
.end method

.method public bridge synthetic appendExtension(Lnet/time4j/engine/ChronoExtension;)Lnet/time4j/engine/Chronology$Builder;
    .locals 0

    .line 185
    invoke-virtual {p0, p1}, Lnet/time4j/engine/CalendarFamily$Builder;->appendExtension(Lnet/time4j/engine/ChronoExtension;)Lnet/time4j/engine/CalendarFamily$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lnet/time4j/engine/CalendarFamily;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/CalendarFamily<",
            "TT;>;"
        }
    .end annotation

    .line 279
    new-instance v7, Lnet/time4j/engine/CalendarFamily;

    iget-object v1, p0, Lnet/time4j/engine/CalendarFamily$Builder;->chronoType:Ljava/lang/Class;

    iget-object v2, p0, Lnet/time4j/engine/CalendarFamily$Builder;->merger:Lnet/time4j/engine/ChronoMerger;

    iget-object v3, p0, Lnet/time4j/engine/CalendarFamily$Builder;->ruleMap:Ljava/util/Map;

    iget-object v4, p0, Lnet/time4j/engine/CalendarFamily$Builder;->extensions:Ljava/util/List;

    iget-object v5, p0, Lnet/time4j/engine/CalendarFamily$Builder;->calendars:Ljava/util/Map;

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lnet/time4j/engine/CalendarFamily;-><init>(Ljava/lang/Class;Lnet/time4j/engine/ChronoMerger;Ljava/util/Map;Ljava/util/List;Ljava/util/Map;Lnet/time4j/engine/CalendarFamily$1;)V

    .line 288
    invoke-static {v7}, Lnet/time4j/engine/Chronology;->register(Lnet/time4j/engine/Chronology;)V

    return-object v7
.end method

.method public bridge synthetic build()Lnet/time4j/engine/Chronology;
    .locals 1

    .line 185
    invoke-virtual {p0}, Lnet/time4j/engine/CalendarFamily$Builder;->build()Lnet/time4j/engine/CalendarFamily;

    move-result-object v0

    return-object v0
.end method
