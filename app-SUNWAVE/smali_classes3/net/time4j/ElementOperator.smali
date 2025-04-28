.class public abstract Lnet/time4j/ElementOperator;
.super Ljava/lang/Object;
.source "ElementOperator.java"

# interfaces
.implements Lnet/time4j/engine/ChronoOperator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/ChronoOperator<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final OP_CEILING:I = 0x5

.field static final OP_DECREMENT:I = 0x2

.field static final OP_FIRST_DAY_OF_NEXT_MONTH:I = 0x11

.field static final OP_FIRST_DAY_OF_NEXT_QUARTER:I = 0x12

.field static final OP_FIRST_DAY_OF_NEXT_YEAR:I = 0x13

.field static final OP_FLOOR:I = 0x4

.field static final OP_INCREMENT:I = 0x3

.field static final OP_LAST_DAY_OF_PREVIOUS_MONTH:I = 0x14

.field static final OP_LAST_DAY_OF_PREVIOUS_QUARTER:I = 0x15

.field static final OP_LAST_DAY_OF_PREVIOUS_YEAR:I = 0x16

.field static final OP_LENIENT:I = 0x6

.field static final OP_MAXIMIZE:I = 0x1

.field static final OP_MINIMIZE:I = 0x0

.field static final OP_NAV_NEXT:I = 0x9

.field static final OP_NAV_NEXT_OR_SAME:I = 0xb

.field static final OP_NAV_PREVIOUS:I = 0xa

.field static final OP_NAV_PREVIOUS_OR_SAME:I = 0xc

.field static final OP_NEW_VALUE:I = -0x1

.field static final OP_NEXT_FULL_HOUR:I = 0xf

.field static final OP_NEXT_FULL_MINUTE:I = 0x10

.field static final OP_ROUND_FULL_HOUR:I = 0xd

.field static final OP_ROUND_FULL_MINUTE:I = 0xe

.field static final OP_WIM:I = 0x7

.field static final OP_YOW:I = 0x8


# instance fields
.field private final element:Lnet/time4j/engine/ChronoElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation
.end field

.field private final type:I


# direct methods
.method constructor <init>(Lnet/time4j/engine/ChronoElement;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;I)V"
        }
    .end annotation

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lnet/time4j/ElementOperator;->element:Lnet/time4j/engine/ChronoElement;

    .line 97
    iput p2, p0, Lnet/time4j/ElementOperator;->type:I

    return-void
.end method


# virtual methods
.method public final at(Lnet/time4j/tz/ZonalOffset;)Lnet/time4j/engine/ChronoOperator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/tz/ZonalOffset;",
            ")",
            "Lnet/time4j/engine/ChronoOperator<",
            "Lnet/time4j/Moment;",
            ">;"
        }
    .end annotation

    .line 277
    new-instance v0, Lnet/time4j/Moment$Operator;

    .line 278
    invoke-virtual {p0}, Lnet/time4j/ElementOperator;->onTimestamp()Lnet/time4j/engine/ChronoOperator;

    move-result-object v1

    iget-object v2, p0, Lnet/time4j/ElementOperator;->element:Lnet/time4j/engine/ChronoElement;

    iget v3, p0, Lnet/time4j/ElementOperator;->type:I

    .line 281
    invoke-static {p1}, Lnet/time4j/tz/Timezone;->of(Lnet/time4j/tz/TZID;)Lnet/time4j/tz/Timezone;

    move-result-object p1

    invoke-direct {v0, v1, v2, v3, p1}, Lnet/time4j/Moment$Operator;-><init>(Lnet/time4j/engine/ChronoOperator;Lnet/time4j/engine/ChronoElement;ILnet/time4j/tz/Timezone;)V

    return-object v0
.end method

.method public final atUTC()Lnet/time4j/engine/ChronoOperator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/ChronoOperator<",
            "Lnet/time4j/Moment;",
            ">;"
        }
    .end annotation

    .line 240
    sget-object v0, Lnet/time4j/tz/ZonalOffset;->UTC:Lnet/time4j/tz/ZonalOffset;

    invoke-virtual {p0, v0}, Lnet/time4j/ElementOperator;->at(Lnet/time4j/tz/ZonalOffset;)Lnet/time4j/engine/ChronoOperator;

    move-result-object v0

    return-object v0
.end method

.method getElement()Lnet/time4j/engine/ChronoElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/ChronoElement<",
            "*>;"
        }
    .end annotation

    .line 301
    iget-object v0, p0, Lnet/time4j/ElementOperator;->element:Lnet/time4j/engine/ChronoElement;

    return-object v0
.end method

.method getType()I
    .locals 1

    .line 312
    iget v0, p0, Lnet/time4j/ElementOperator;->type:I

    return v0
.end method

.method public final in(Lnet/time4j/tz/Timezone;)Lnet/time4j/engine/ChronoOperator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/tz/Timezone;",
            ")",
            "Lnet/time4j/engine/ChronoOperator<",
            "Lnet/time4j/Moment;",
            ">;"
        }
    .end annotation

    const-string v0, "Missing timezone."

    .line 210
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 213
    new-instance v0, Lnet/time4j/Moment$Operator;

    .line 214
    invoke-virtual {p0}, Lnet/time4j/ElementOperator;->onTimestamp()Lnet/time4j/engine/ChronoOperator;

    move-result-object v1

    iget-object v2, p0, Lnet/time4j/ElementOperator;->element:Lnet/time4j/engine/ChronoElement;

    iget v3, p0, Lnet/time4j/ElementOperator;->type:I

    invoke-direct {v0, v1, v2, v3, p1}, Lnet/time4j/Moment$Operator;-><init>(Lnet/time4j/engine/ChronoOperator;Lnet/time4j/engine/ChronoElement;ILnet/time4j/tz/Timezone;)V

    return-object v0
.end method

.method public inStdTimezone()Lnet/time4j/engine/ChronoOperator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/ChronoOperator<",
            "Lnet/time4j/Moment;",
            ">;"
        }
    .end annotation

    .line 132
    new-instance v0, Lnet/time4j/Moment$Operator;

    invoke-virtual {p0}, Lnet/time4j/ElementOperator;->onTimestamp()Lnet/time4j/engine/ChronoOperator;

    move-result-object v1

    iget-object v2, p0, Lnet/time4j/ElementOperator;->element:Lnet/time4j/engine/ChronoElement;

    iget v3, p0, Lnet/time4j/ElementOperator;->type:I

    invoke-direct {v0, v1, v2, v3}, Lnet/time4j/Moment$Operator;-><init>(Lnet/time4j/engine/ChronoOperator;Lnet/time4j/engine/ChronoElement;I)V

    return-object v0
.end method

.method public final inTimezone(Lnet/time4j/tz/TZID;)Lnet/time4j/engine/ChronoOperator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/tz/TZID;",
            ")",
            "Lnet/time4j/engine/ChronoOperator<",
            "Lnet/time4j/Moment;",
            ">;"
        }
    .end annotation

    .line 169
    new-instance v0, Lnet/time4j/Moment$Operator;

    .line 170
    invoke-virtual {p0}, Lnet/time4j/ElementOperator;->onTimestamp()Lnet/time4j/engine/ChronoOperator;

    move-result-object v1

    iget-object v2, p0, Lnet/time4j/ElementOperator;->element:Lnet/time4j/engine/ChronoElement;

    iget v3, p0, Lnet/time4j/ElementOperator;->type:I

    .line 173
    invoke-static {p1}, Lnet/time4j/tz/Timezone;->of(Lnet/time4j/tz/TZID;)Lnet/time4j/tz/Timezone;

    move-result-object p1

    invoke-direct {v0, v1, v2, v3, p1}, Lnet/time4j/Moment$Operator;-><init>(Lnet/time4j/engine/ChronoOperator;Lnet/time4j/engine/ChronoElement;ILnet/time4j/tz/Timezone;)V

    return-object v0
.end method

.method abstract onTimestamp()Lnet/time4j/engine/ChronoOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/time4j/engine/ChronoOperator<",
            "Lnet/time4j/PlainTimestamp;",
            ">;"
        }
    .end annotation
.end method
