.class public final Lnet/time4j/engine/BridgeChronology;
.super Lnet/time4j/engine/Chronology;
.source "BridgeChronology.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/time4j/engine/BridgeChronology$CalendarSystemProxy;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "T:",
        "Lnet/time4j/engine/ChronoEntity<",
        "TT;>;>",
        "Lnet/time4j/engine/Chronology<",
        "TS;>;"
    }
.end annotation


# instance fields
.field private final converter:Lnet/time4j/engine/Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/Converter<",
            "TS;TT;>;"
        }
    .end annotation
.end field

.field private final delegate:Lnet/time4j/engine/Chronology;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/Chronology<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/time4j/engine/Converter;Lnet/time4j/engine/Chronology;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/Converter<",
            "TS;TT;>;",
            "Lnet/time4j/engine/Chronology<",
            "TT;>;)V"
        }
    .end annotation

    .line 88
    invoke-interface {p1}, Lnet/time4j/engine/Converter;->getSourceType()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/time4j/engine/Chronology;-><init>(Ljava/lang/Class;)V

    .line 90
    const-class v0, Lnet/time4j/engine/ChronoEntity;

    invoke-virtual {p2}, Lnet/time4j/engine/Chronology;->getChronoType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iput-object p1, p0, Lnet/time4j/engine/BridgeChronology;->converter:Lnet/time4j/engine/Converter;

    .line 95
    iput-object p2, p0, Lnet/time4j/engine/BridgeChronology;->delegate:Lnet/time4j/engine/Chronology;

    return-void

    .line 91
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Target chronology not compatible with ChronoEntity."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public createFrom(Lnet/time4j/base/TimeSource;Lnet/time4j/engine/AttributeQuery;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/base/TimeSource<",
            "*>;",
            "Lnet/time4j/engine/AttributeQuery;",
            ")TS;"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lnet/time4j/engine/BridgeChronology;->delegate:Lnet/time4j/engine/Chronology;

    invoke-virtual {v0, p1, p2}, Lnet/time4j/engine/Chronology;->createFrom(Lnet/time4j/base/TimeSource;Lnet/time4j/engine/AttributeQuery;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/engine/ChronoEntity;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 108
    :cond_0
    iget-object p2, p0, Lnet/time4j/engine/BridgeChronology;->converter:Lnet/time4j/engine/Converter;

    invoke-interface {p2, p1}, Lnet/time4j/engine/Converter;->from(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public createFrom(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/engine/AttributeQuery;ZZ)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoEntity<",
            "*>;",
            "Lnet/time4j/engine/AttributeQuery;",
            "ZZ)TS;"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lnet/time4j/engine/BridgeChronology;->delegate:Lnet/time4j/engine/Chronology;

    invoke-virtual {v0}, Lnet/time4j/engine/Chronology;->getChronoType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object p2, p0, Lnet/time4j/engine/BridgeChronology;->delegate:Lnet/time4j/engine/Chronology;

    invoke-virtual {p2}, Lnet/time4j/engine/Chronology;->getChronoType()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/engine/ChronoEntity;

    goto :goto_0

    .line 125
    :cond_0
    iget-object v0, p0, Lnet/time4j/engine/BridgeChronology;->delegate:Lnet/time4j/engine/Chronology;

    invoke-virtual {v0, p1, p2, p3, p4}, Lnet/time4j/engine/Chronology;->createFrom(Lnet/time4j/engine/ChronoEntity;Lnet/time4j/engine/AttributeQuery;ZZ)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/engine/ChronoEntity;

    :goto_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    .line 128
    :cond_1
    iget-object p2, p0, Lnet/time4j/engine/BridgeChronology;->converter:Lnet/time4j/engine/Converter;

    invoke-interface {p2, p1}, Lnet/time4j/engine/Converter;->from(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public getCalendarSystem()Lnet/time4j/engine/CalendarSystem;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/CalendarSystem<",
            "TS;>;"
        }
    .end annotation

    .line 200
    iget-object v0, p0, Lnet/time4j/engine/BridgeChronology;->delegate:Lnet/time4j/engine/Chronology;

    invoke-virtual {v0}, Lnet/time4j/engine/Chronology;->getCalendarSystem()Lnet/time4j/engine/CalendarSystem;

    move-result-object v0

    .line 201
    new-instance v1, Lnet/time4j/engine/BridgeChronology$CalendarSystemProxy;

    iget-object v2, p0, Lnet/time4j/engine/BridgeChronology;->converter:Lnet/time4j/engine/Converter;

    invoke-direct {v1, v2, v0}, Lnet/time4j/engine/BridgeChronology$CalendarSystemProxy;-><init>(Lnet/time4j/engine/Converter;Lnet/time4j/engine/CalendarSystem;)V

    return-object v1
.end method

.method public getCalendarSystem(Ljava/lang/String;)Lnet/time4j/engine/CalendarSystem;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lnet/time4j/engine/CalendarSystem<",
            "TS;>;"
        }
    .end annotation

    .line 208
    iget-object v0, p0, Lnet/time4j/engine/BridgeChronology;->delegate:Lnet/time4j/engine/Chronology;

    invoke-virtual {v0, p1}, Lnet/time4j/engine/Chronology;->getCalendarSystem(Ljava/lang/String;)Lnet/time4j/engine/CalendarSystem;

    move-result-object p1

    .line 209
    new-instance v0, Lnet/time4j/engine/BridgeChronology$CalendarSystemProxy;

    iget-object v1, p0, Lnet/time4j/engine/BridgeChronology;->converter:Lnet/time4j/engine/Converter;

    invoke-direct {v0, v1, p1}, Lnet/time4j/engine/BridgeChronology$CalendarSystemProxy;-><init>(Lnet/time4j/engine/Converter;Lnet/time4j/engine/CalendarSystem;)V

    return-object v0
.end method

.method public getDefaultPivotYear()I
    .locals 1

    .line 186
    iget-object v0, p0, Lnet/time4j/engine/BridgeChronology;->delegate:Lnet/time4j/engine/Chronology;

    invoke-virtual {v0}, Lnet/time4j/engine/Chronology;->getDefaultPivotYear()I

    move-result v0

    return v0
.end method

.method public getDefaultStartOfDay()Lnet/time4j/engine/StartOfDay;
    .locals 1

    .line 179
    iget-object v0, p0, Lnet/time4j/engine/BridgeChronology;->delegate:Lnet/time4j/engine/Chronology;

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

    .line 246
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFormatPattern(Lnet/time4j/engine/DisplayStyle;Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    .line 172
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Localized format patterns are not available for foreign types."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getRegisteredElements()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;>;"
        }
    .end annotation

    .line 239
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public hasCalendarSystem()Z
    .locals 1

    .line 193
    iget-object v0, p0, Lnet/time4j/engine/BridgeChronology;->delegate:Lnet/time4j/engine/Chronology;

    invoke-virtual {v0}, Lnet/time4j/engine/Chronology;->hasCalendarSystem()Z

    move-result v0

    return v0
.end method

.method public isSupported(Lnet/time4j/engine/ChronoElement;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public preformat(Ljava/lang/Object;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/engine/ChronoDisplay;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Lnet/time4j/engine/AttributeQuery;",
            ")",
            "Lnet/time4j/engine/ChronoDisplay;"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lnet/time4j/engine/BridgeChronology;->converter:Lnet/time4j/engine/Converter;

    invoke-interface {v0, p1}, Lnet/time4j/engine/Converter;->translate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/engine/ChronoEntity;

    .line 139
    iget-object v0, p0, Lnet/time4j/engine/BridgeChronology;->delegate:Lnet/time4j/engine/Chronology;

    invoke-virtual {v0, p1, p2}, Lnet/time4j/engine/Chronology;->preformat(Ljava/lang/Object;Lnet/time4j/engine/AttributeQuery;)Lnet/time4j/engine/ChronoDisplay;

    move-result-object p1

    return-object p1
.end method

.method public preparser()Lnet/time4j/engine/Chronology;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/Chronology<",
            "*>;"
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lnet/time4j/engine/BridgeChronology;->delegate:Lnet/time4j/engine/Chronology;

    return-object v0
.end method
