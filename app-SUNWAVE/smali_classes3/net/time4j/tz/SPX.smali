.class final Lnet/time4j/tz/SPX;
.super Ljava/lang/Object;
.source "SPX.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field static final FALLBACK_TIMEZONE_TYPE:I = 0xc

.field static final HISTORIZED_TIMEZONE_TYPE:I = 0xe

.field static final TRANSITION_RESOLVER_TYPE:I = 0xd

.field static final ZONAL_OFFSET_TYPE:I = 0xf

.field private static final serialVersionUID:J = -0xde3794b7e47ba6cL


# instance fields
.field private transient obj:Ljava/lang/Object;

.field private transient type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lnet/time4j/tz/SPX;->obj:Ljava/lang/Object;

    .line 86
    iput p2, p0, Lnet/time4j/tz/SPX;->type:I

    return-void
.end method

.method private readFallback(Ljava/io/ObjectInput;B)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 201
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/time4j/tz/TZID;

    .line 202
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/time4j/tz/Timezone;

    .line 203
    new-instance v0, Lnet/time4j/tz/FallbackTimezone;

    invoke-direct {v0, p2, p1}, Lnet/time4j/tz/FallbackTimezone;-><init>(Lnet/time4j/tz/TZID;Lnet/time4j/tz/Timezone;)V

    return-object v0
.end method

.method private readOffset(Ljava/io/ObjectInput;B)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 290
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    and-int/lit8 p2, p2, 0xf

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 294
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 297
    :goto_0
    invoke-static {v0, p1}, Lnet/time4j/tz/ZonalOffset;->ofTotalSeconds(II)Lnet/time4j/tz/ZonalOffset;

    move-result-object p1

    return-object p1
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lnet/time4j/tz/SPX;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method private readStrategy(B)Ljava/lang/Object;
    .locals 2

    and-int/lit8 p1, p1, 0xf

    .line 220
    invoke-static {}, Lnet/time4j/tz/GapResolver;->values()[Lnet/time4j/tz/GapResolver;

    move-result-object v0

    div-int/lit8 v1, p1, 0x2

    aget-object v0, v0, v1

    .line 221
    invoke-static {}, Lnet/time4j/tz/OverlapResolver;->values()[Lnet/time4j/tz/OverlapResolver;

    move-result-object v1

    rem-int/lit8 p1, p1, 0x2

    aget-object p1, v1, p1

    .line 222
    invoke-static {v0, p1}, Lnet/time4j/tz/TransitionResolver;->of(Lnet/time4j/tz/GapResolver;Lnet/time4j/tz/OverlapResolver;)Lnet/time4j/tz/TransitionResolver;

    move-result-object p1

    return-object p1
.end method

.method private readZone(Ljava/io/ObjectInput;B)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 253
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/time4j/tz/TZID;

    .line 254
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/time4j/tz/TransitionHistory;

    .line 255
    sget-object v2, Lnet/time4j/tz/Timezone;->DEFAULT_CONFLICT_STRATEGY:Lnet/time4j/tz/TransitionStrategy;

    and-int/lit8 p2, p2, 0xf

    const/4 v3, 0x1

    if-ne p2, v3, :cond_0

    .line 258
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lnet/time4j/tz/TransitionStrategy;

    .line 261
    :cond_0
    new-instance p1, Lnet/time4j/tz/HistorizedTimezone;

    invoke-direct {p1, v0, v1, v2}, Lnet/time4j/tz/HistorizedTimezone;-><init>(Lnet/time4j/tz/TZID;Lnet/time4j/tz/TransitionHistory;Lnet/time4j/tz/TransitionStrategy;)V

    return-object p1
.end method

.method private writeFallback(Ljava/io/ObjectOutput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lnet/time4j/tz/SPX;->obj:Ljava/lang/Object;

    check-cast v0, Lnet/time4j/tz/FallbackTimezone;

    const/16 v1, 0xc0

    .line 190
    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeByte(I)V

    .line 191
    invoke-virtual {v0}, Lnet/time4j/tz/FallbackTimezone;->getID()Lnet/time4j/tz/TZID;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 192
    invoke-virtual {v0}, Lnet/time4j/tz/FallbackTimezone;->getFallback()Lnet/time4j/tz/Timezone;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    return-void
.end method

.method private writeOffset(Ljava/io/ObjectOutput;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 268
    iget-object v0, p0, Lnet/time4j/tz/SPX;->obj:Ljava/lang/Object;

    check-cast v0, Lnet/time4j/tz/ZonalOffset;

    .line 269
    invoke-virtual {v0}, Lnet/time4j/tz/ZonalOffset;->getFractionalAmount()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0xf0

    if-eqz v1, :cond_1

    const/16 v2, 0xf1

    .line 276
    :cond_1
    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeByte(I)V

    .line 277
    invoke-virtual {v0}, Lnet/time4j/tz/ZonalOffset;->getIntegralAmount()I

    move-result v2

    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeInt(I)V

    if-eqz v1, :cond_2

    .line 280
    invoke-virtual {v0}, Lnet/time4j/tz/ZonalOffset;->getFractionalAmount()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    :cond_2
    return-void
.end method

.method private writeStrategy(Ljava/io/ObjectOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 210
    iget-object v0, p0, Lnet/time4j/tz/SPX;->obj:Ljava/lang/Object;

    check-cast v0, Lnet/time4j/tz/TransitionResolver;

    .line 212
    invoke-virtual {v0}, Lnet/time4j/tz/TransitionResolver;->getKey()I

    move-result v0

    or-int/lit16 v0, v0, 0xd0

    .line 213
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeByte(I)V

    return-void
.end method

.method private writeZone(Ljava/io/ObjectOutput;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 229
    iget-object v0, p0, Lnet/time4j/tz/SPX;->obj:Ljava/lang/Object;

    check-cast v0, Lnet/time4j/tz/HistorizedTimezone;

    .line 232
    invoke-virtual {v0}, Lnet/time4j/tz/HistorizedTimezone;->getStrategy()Lnet/time4j/tz/TransitionStrategy;

    move-result-object v1

    sget-object v2, Lnet/time4j/tz/Timezone;->DEFAULT_CONFLICT_STRATEGY:Lnet/time4j/tz/TransitionStrategy;

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    const/16 v2, 0xe1

    goto :goto_1

    :cond_1
    const/16 v2, 0xe0

    .line 238
    :goto_1
    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeByte(I)V

    .line 239
    invoke-virtual {v0}, Lnet/time4j/tz/HistorizedTimezone;->getID()Lnet/time4j/tz/TZID;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 240
    invoke-virtual {v0}, Lnet/time4j/tz/HistorizedTimezone;->getHistory()Lnet/time4j/tz/TransitionHistory;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    if-eqz v1, :cond_2

    .line 243
    invoke-virtual {v0}, Lnet/time4j/tz/HistorizedTimezone;->getStrategy()Lnet/time4j/tz/TransitionStrategy;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 157
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result v0

    and-int/lit16 v1, v0, 0xff

    shr-int/lit8 v1, v1, 0x4

    packed-switch v1, :pswitch_data_0

    .line 173
    new-instance p1, Ljava/io/StreamCorruptedException;

    const-string v0, "Unknown serialized type."

    invoke-direct {p1, v0}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 170
    :pswitch_0
    invoke-direct {p0, p1, v0}, Lnet/time4j/tz/SPX;->readOffset(Ljava/io/ObjectInput;B)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/tz/SPX;->obj:Ljava/lang/Object;

    goto :goto_0

    .line 167
    :pswitch_1
    invoke-direct {p0, p1, v0}, Lnet/time4j/tz/SPX;->readZone(Ljava/io/ObjectInput;B)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/tz/SPX;->obj:Ljava/lang/Object;

    goto :goto_0

    .line 164
    :pswitch_2
    invoke-direct {p0, v0}, Lnet/time4j/tz/SPX;->readStrategy(B)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/tz/SPX;->obj:Ljava/lang/Object;

    goto :goto_0

    .line 161
    :pswitch_3
    invoke-direct {p0, p1, v0}, Lnet/time4j/tz/SPX;->readFallback(Ljava/io/ObjectInput;B)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/tz/SPX;->obj:Ljava/lang/Object;

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    iget v0, p0, Lnet/time4j/tz/SPX;->type:I

    packed-switch v0, :pswitch_data_0

    .line 134
    new-instance p1, Ljava/io/InvalidClassException;

    const-string v0, "Unknown serialized type."

    invoke-direct {p1, v0}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 131
    :pswitch_0
    invoke-direct {p0, p1}, Lnet/time4j/tz/SPX;->writeOffset(Ljava/io/ObjectOutput;)V

    goto :goto_0

    .line 128
    :pswitch_1
    invoke-direct {p0, p1}, Lnet/time4j/tz/SPX;->writeZone(Ljava/io/ObjectOutput;)V

    goto :goto_0

    .line 125
    :pswitch_2
    invoke-direct {p0, p1}, Lnet/time4j/tz/SPX;->writeStrategy(Ljava/io/ObjectOutput;)V

    goto :goto_0

    .line 122
    :pswitch_3
    invoke-direct {p0, p1}, Lnet/time4j/tz/SPX;->writeFallback(Ljava/io/ObjectOutput;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
