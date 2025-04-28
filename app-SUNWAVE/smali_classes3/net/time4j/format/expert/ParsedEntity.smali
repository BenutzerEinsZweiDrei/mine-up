.class abstract Lnet/time4j/format/expert/ParsedEntity;
.super Lnet/time4j/engine/ChronoEntity;
.source "ParsedEntity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lnet/time4j/format/expert/ParsedEntity<",
        "TT;>;>",
        "Lnet/time4j/engine/ChronoEntity<",
        "TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lnet/time4j/engine/ChronoEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 131
    :cond_0
    instance-of v1, p1, Lnet/time4j/format/expert/ParsedEntity;

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    .line 132
    check-cast p1, Lnet/time4j/format/expert/ParsedEntity;

    .line 133
    invoke-virtual {p0}, Lnet/time4j/format/expert/ParsedEntity;->getRegisteredElements()Ljava/util/Set;

    move-result-object v1

    .line 134
    invoke-virtual {p1}, Lnet/time4j/format/expert/ParsedEntity;->getRegisteredElements()Ljava/util/Set;

    move-result-object v3

    .line 135
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v4

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v5

    if-eq v4, v5, :cond_1

    return v2

    .line 138
    :cond_1
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/time4j/engine/ChronoElement;

    .line 139
    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0, v4}, Lnet/time4j/format/expert/ParsedEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v4}, Lnet/time4j/format/expert/ParsedEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_3
    return v2

    .line 143
    :cond_4
    invoke-virtual {p0}, Lnet/time4j/format/expert/ParsedEntity;->getResult()Ljava/lang/Object;

    move-result-object v1

    .line 144
    invoke-virtual {p1}, Lnet/time4j/format/expert/ParsedEntity;->getResult()Ljava/lang/Object;

    move-result-object p1

    if-nez v1, :cond_6

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    move v0, v2

    :goto_0
    return v0

    .line 148
    :cond_6
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_7
    return v2
.end method

.method protected final getChronology()Lnet/time4j/engine/Chronology;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/Chronology<",
            "TT;>;"
        }
    .end annotation

    .line 206
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Parsed values do not have any chronology."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMaximum(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/time4j/engine/ChronoElement<",
            "TV;>;)TV;"
        }
    .end annotation

    .line 90
    invoke-interface {p1}, Lnet/time4j/engine/ChronoElement;->getDefaultMaximum()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getMinimum(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/time4j/engine/ChronoElement<",
            "TV;>;)TV;"
        }
    .end annotation

    .line 83
    invoke-interface {p1}, Lnet/time4j/engine/ChronoElement;->getDefaultMinimum()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method abstract getResult()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()TE;"
        }
    .end annotation
.end method

.method public final getTimezone()Lnet/time4j/tz/TZID;
    .locals 2

    .line 109
    sget-object v0, Lnet/time4j/format/expert/TimezoneElement;->TIMEZONE_ID:Lnet/time4j/format/expert/TimezoneElement;

    invoke-virtual {p0, v0}, Lnet/time4j/format/expert/ParsedEntity;->contains(Lnet/time4j/engine/ChronoElement;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    sget-object v0, Lnet/time4j/format/expert/TimezoneElement;->TIMEZONE_ID:Lnet/time4j/format/expert/TimezoneElement;

    invoke-virtual {p0, v0}, Lnet/time4j/format/expert/ParsedEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 111
    :cond_0
    sget-object v0, Lnet/time4j/format/expert/TimezoneElement;->TIMEZONE_OFFSET:Lnet/time4j/format/expert/TimezoneElement;

    invoke-virtual {p0, v0}, Lnet/time4j/format/expert/ParsedEntity;->contains(Lnet/time4j/engine/ChronoElement;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    sget-object v0, Lnet/time4j/format/expert/TimezoneElement;->TIMEZONE_OFFSET:Lnet/time4j/format/expert/TimezoneElement;

    invoke-virtual {p0, v0}, Lnet/time4j/format/expert/ParsedEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 115
    :goto_0
    instance-of v1, v0, Lnet/time4j/tz/TZID;

    if-eqz v1, :cond_2

    .line 116
    const-class v1, Lnet/time4j/tz/TZID;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/tz/TZID;

    return-object v0

    .line 118
    :cond_2
    invoke-super {p0}, Lnet/time4j/engine/ChronoEntity;->getTimezone()Lnet/time4j/tz/TZID;

    move-result-object v0

    return-object v0
.end method

.method public final hasTimezone()Z
    .locals 1

    .line 97
    sget-object v0, Lnet/time4j/format/expert/TimezoneElement;->TIMEZONE_ID:Lnet/time4j/format/expert/TimezoneElement;

    .line 98
    invoke-virtual {p0, v0}, Lnet/time4j/format/expert/ParsedEntity;->contains(Lnet/time4j/engine/ChronoElement;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lnet/time4j/format/expert/TimezoneElement;->TIMEZONE_OFFSET:Lnet/time4j/format/expert/TimezoneElement;

    .line 99
    invoke-virtual {p0, v0}, Lnet/time4j/format/expert/ParsedEntity;->contains(Lnet/time4j/engine/ChronoElement;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 162
    invoke-virtual {p0}, Lnet/time4j/format/expert/ParsedEntity;->getRegisteredElements()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    move-result v0

    .line 163
    invoke-virtual {p0}, Lnet/time4j/format/expert/ParsedEntity;->getResult()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 165
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public isValid(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/time4j/engine/ChronoElement<",
            "TV;>;TV;)Z"
        }
    .end annotation

    const-string p2, "Missing chronological element."

    .line 49
    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1
.end method

.method abstract put(Lnet/time4j/engine/ChronoElement;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;I)V"
        }
    .end annotation
.end method

.method abstract put(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation
.end method

.method abstract setResult(Ljava/lang/Object;)V
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x7b

    .line 179
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {p0}, Lnet/time4j/format/expert/ParsedEntity;->getRegisteredElements()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/time4j/engine/ChronoElement;

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :cond_0
    const-string v4, ", "

    .line 185
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    :goto_1
    invoke-interface {v3}, Lnet/time4j/engine/ChronoElement;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x3d

    .line 189
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {p0, v3}, Lnet/time4j/format/expert/ParsedEntity;->get(Lnet/time4j/engine/ChronoElement;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const/16 v1, 0x7d

    .line 193
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {p0}, Lnet/time4j/format/expert/ParsedEntity;->getResult()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, ">>>result="

    .line 196
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 199
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic with(Lnet/time4j/engine/ChronoElement;I)Lnet/time4j/engine/ChronoEntity;
    .locals 0

    .line 37
    invoke-virtual {p0, p1, p2}, Lnet/time4j/format/expert/ParsedEntity;->with(Lnet/time4j/engine/ChronoElement;I)Lnet/time4j/format/expert/ParsedEntity;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic with(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Lnet/time4j/engine/ChronoEntity;
    .locals 0

    .line 37
    invoke-virtual {p0, p1, p2}, Lnet/time4j/format/expert/ParsedEntity;->with(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Lnet/time4j/format/expert/ParsedEntity;

    move-result-object p1

    return-object p1
.end method

.method public with(Lnet/time4j/engine/ChronoElement;I)Lnet/time4j/format/expert/ParsedEntity;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoElement<",
            "Ljava/lang/Integer;",
            ">;I)TT;"
        }
    .end annotation

    .line 75
    invoke-virtual {p0, p1, p2}, Lnet/time4j/format/expert/ParsedEntity;->put(Lnet/time4j/engine/ChronoElement;I)V

    return-object p0
.end method

.method public with(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)Lnet/time4j/format/expert/ParsedEntity;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/time4j/engine/ChronoElement<",
            "TV;>;TV;)TT;"
        }
    .end annotation

    .line 63
    invoke-virtual {p0, p1, p2}, Lnet/time4j/format/expert/ParsedEntity;->put(Lnet/time4j/engine/ChronoElement;Ljava/lang/Object;)V

    return-object p0
.end method
