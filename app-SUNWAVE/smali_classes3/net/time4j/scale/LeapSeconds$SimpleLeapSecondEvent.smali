.class Lnet/time4j/scale/LeapSeconds$SimpleLeapSecondEvent;
.super Ljava/lang/Object;
.source "LeapSeconds.java"

# interfaces
.implements Lnet/time4j/scale/ExtendedLSE;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/scale/LeapSeconds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimpleLeapSecondEvent"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x531333f862f313abL


# instance fields
.field private final _raw:J

.field private final _utc:J

.field private final date:Lnet/time4j/base/GregorianDate;

.field private final shift:I


# direct methods
.method constructor <init>(Lnet/time4j/base/GregorianDate;JJI)V
    .locals 0

    .line 1084
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1086
    iput-object p1, p0, Lnet/time4j/scale/LeapSeconds$SimpleLeapSecondEvent;->date:Lnet/time4j/base/GregorianDate;

    .line 1087
    iput p6, p0, Lnet/time4j/scale/LeapSeconds$SimpleLeapSecondEvent;->shift:I

    .line 1088
    iput-wide p2, p0, Lnet/time4j/scale/LeapSeconds$SimpleLeapSecondEvent;->_utc:J

    .line 1089
    iput-wide p4, p0, Lnet/time4j/scale/LeapSeconds$SimpleLeapSecondEvent;->_raw:J

    return-void
.end method

.method constructor <init>(Lnet/time4j/scale/ExtendedLSE;I)V
    .locals 4

    .line 1098
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1100
    invoke-interface {p1}, Lnet/time4j/scale/ExtendedLSE;->getDate()Lnet/time4j/base/GregorianDate;

    move-result-object v0

    iput-object v0, p0, Lnet/time4j/scale/LeapSeconds$SimpleLeapSecondEvent;->date:Lnet/time4j/base/GregorianDate;

    .line 1101
    invoke-interface {p1}, Lnet/time4j/scale/ExtendedLSE;->getShift()I

    move-result v0

    iput v0, p0, Lnet/time4j/scale/LeapSeconds$SimpleLeapSecondEvent;->shift:I

    .line 1103
    invoke-interface {p1}, Lnet/time4j/scale/ExtendedLSE;->raw()J

    move-result-wide v0

    int-to-long v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lnet/time4j/scale/LeapSeconds$SimpleLeapSecondEvent;->_utc:J

    .line 1104
    invoke-interface {p1}, Lnet/time4j/scale/ExtendedLSE;->raw()J

    move-result-wide p1

    iput-wide p1, p0, Lnet/time4j/scale/LeapSeconds$SimpleLeapSecondEvent;->_raw:J

    return-void
.end method


# virtual methods
.method public getDate()Lnet/time4j/base/GregorianDate;
    .locals 1

    .line 1112
    iget-object v0, p0, Lnet/time4j/scale/LeapSeconds$SimpleLeapSecondEvent;->date:Lnet/time4j/base/GregorianDate;

    return-object v0
.end method

.method public getShift()I
    .locals 1

    .line 1117
    iget v0, p0, Lnet/time4j/scale/LeapSeconds$SimpleLeapSecondEvent;->shift:I

    return v0
.end method

.method public raw()J
    .locals 2

    .line 1127
    iget-wide v0, p0, Lnet/time4j/scale/LeapSeconds$SimpleLeapSecondEvent;->_raw:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1133
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1134
    const-class v1, Lnet/time4j/scale/LeapSecondEvent;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5b

    .line 1135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1136
    iget-object v1, p0, Lnet/time4j/scale/LeapSeconds$SimpleLeapSecondEvent;->date:Lnet/time4j/base/GregorianDate;

    invoke-static {v1}, Lnet/time4j/scale/LeapSeconds;->access$000(Lnet/time4j/base/GregorianDate;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": utc="

    .line 1137
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1138
    iget-wide v1, p0, Lnet/time4j/scale/LeapSeconds$SimpleLeapSecondEvent;->_utc:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", raw="

    .line 1139
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1140
    iget-wide v1, p0, Lnet/time4j/scale/LeapSeconds$SimpleLeapSecondEvent;->_raw:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " (shift="

    .line 1141
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1142
    iget v1, p0, Lnet/time4j/scale/LeapSeconds$SimpleLeapSecondEvent;->shift:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")]"

    .line 1143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1144
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public utc()J
    .locals 2

    .line 1122
    iget-wide v0, p0, Lnet/time4j/scale/LeapSeconds$SimpleLeapSecondEvent;->_utc:J

    return-wide v0
.end method
