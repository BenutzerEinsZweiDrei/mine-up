.class final Lnet/time4j/OverflowUnit;
.super Lnet/time4j/engine/BasicUnit;
.source "OverflowUnit.java"

# interfaces
.implements Lnet/time4j/IsoDateUnit;
.implements Ljava/io/Serializable;


# static fields
.field static final POLICY_CARRY_OVER:I = 0x3

.field static final POLICY_END_OF_MONTH:I = 0x2

.field static final POLICY_JODA_METRIC:I = 0x6

.field static final POLICY_KEEPING_LAST_DATE:I = 0x5

.field static final POLICY_NEXT_VALID_DATE:I = 0x1

.field static final POLICY_PREVIOUS_VALID_DATE:I = 0x0

.field static final POLICY_UNLESS_INVALID:I = 0x4

.field private static final serialVersionUID:J = 0x1b99caa1225df176L


# instance fields
.field private final policy:I

.field private final unit:Lnet/time4j/CalendarUnit;


# direct methods
.method constructor <init>(Lnet/time4j/CalendarUnit;I)V
    .locals 0

    .line 108
    invoke-direct {p0}, Lnet/time4j/engine/BasicUnit;-><init>()V

    .line 110
    iput-object p1, p0, Lnet/time4j/OverflowUnit;->unit:Lnet/time4j/CalendarUnit;

    .line 111
    iput p2, p0, Lnet/time4j/OverflowUnit;->policy:I

    return-void
.end method


# virtual methods
.method protected derive(Lnet/time4j/engine/Chronology;)Lnet/time4j/engine/UnitRule;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lnet/time4j/engine/ChronoEntity<",
            "TT;>;>(",
            "Lnet/time4j/engine/Chronology<",
            "TT;>;)",
            "Lnet/time4j/engine/UnitRule<",
            "TT;>;"
        }
    .end annotation

    .line 158
    sget-object v0, Lnet/time4j/PlainDate;->CALENDAR_DATE:Lnet/time4j/engine/ChronoElement;

    invoke-virtual {p1, v0}, Lnet/time4j/engine/Chronology;->isRegistered(Lnet/time4j/engine/ChronoElement;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 159
    new-instance p1, Lnet/time4j/CalendarUnit$Rule;

    iget-object v0, p0, Lnet/time4j/OverflowUnit;->unit:Lnet/time4j/CalendarUnit;

    iget v1, p0, Lnet/time4j/OverflowUnit;->policy:I

    invoke-direct {p1, v0, v1}, Lnet/time4j/CalendarUnit$Rule;-><init>(Lnet/time4j/CalendarUnit;I)V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 171
    :cond_0
    instance-of v1, p1, Lnet/time4j/OverflowUnit;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 172
    check-cast p1, Lnet/time4j/OverflowUnit;

    .line 173
    iget-object v1, p0, Lnet/time4j/OverflowUnit;->unit:Lnet/time4j/CalendarUnit;

    iget-object v3, p1, Lnet/time4j/OverflowUnit;->unit:Lnet/time4j/CalendarUnit;

    if-ne v1, v3, :cond_1

    iget v1, p0, Lnet/time4j/OverflowUnit;->policy:I

    iget p1, p1, Lnet/time4j/OverflowUnit;->policy:I

    if-ne v1, p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method getCalendarUnit()Lnet/time4j/CalendarUnit;
    .locals 1

    .line 235
    iget-object v0, p0, Lnet/time4j/OverflowUnit;->unit:Lnet/time4j/CalendarUnit;

    return-object v0
.end method

.method public getLength()D
    .locals 2

    .line 137
    iget-object v0, p0, Lnet/time4j/OverflowUnit;->unit:Lnet/time4j/CalendarUnit;

    invoke-virtual {v0}, Lnet/time4j/CalendarUnit;->getLength()D

    move-result-wide v0

    return-wide v0
.end method

.method public getSymbol()C
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 186
    iget-object v0, p0, Lnet/time4j/OverflowUnit;->unit:Lnet/time4j/CalendarUnit;

    invoke-virtual {v0}, Lnet/time4j/CalendarUnit;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x17

    iget v1, p0, Lnet/time4j/OverflowUnit;->policy:I

    mul-int/lit8 v1, v1, 0x25

    add-int/2addr v0, v1

    return v0
.end method

.method public isCalendrical()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 200
    iget-object v1, p0, Lnet/time4j/OverflowUnit;->unit:Lnet/time4j/CalendarUnit;

    invoke-virtual {v1}, Lnet/time4j/CalendarUnit;->getSymbol()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x2d

    .line 201
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 202
    iget v1, p0, Lnet/time4j/OverflowUnit;->policy:I

    packed-switch v1, :pswitch_data_0

    const-string v1, "PREVIOUS_VALID_DATE"

    .line 222
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_0
    const-string v1, "JODA_METRIC"

    .line 219
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_1
    const-string v1, "KEEPING_LAST_DATE"

    .line 216
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_2
    const-string v1, "UNLESS_INVALID"

    .line 213
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_3
    const-string v1, "CARRY_OVER"

    .line 210
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_4
    const-string v1, "END_OF_MONTH"

    .line 207
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_5
    const-string v1, "NEXT_VALID_DATE"

    .line 204
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
