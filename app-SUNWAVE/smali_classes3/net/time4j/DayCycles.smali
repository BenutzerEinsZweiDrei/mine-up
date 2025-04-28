.class public final Lnet/time4j/DayCycles;
.super Ljava/lang/Object;
.source "DayCycles.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x393ece74c442012cL


# instance fields
.field private final days:J

.field private final time:Lnet/time4j/PlainTime;


# direct methods
.method constructor <init>(JLnet/time4j/PlainTime;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-wide p1, p0, Lnet/time4j/DayCycles;->days:J

    .line 74
    iput-object p3, p0, Lnet/time4j/DayCycles;->time:Lnet/time4j/PlainTime;

    return-void
.end method


# virtual methods
.method public getDayOverflow()J
    .locals 2

    .line 90
    iget-wide v0, p0, Lnet/time4j/DayCycles;->days:J

    return-wide v0
.end method

.method public getWallTime()Lnet/time4j/PlainTime;
    .locals 1

    .line 104
    iget-object v0, p0, Lnet/time4j/DayCycles;->time:Lnet/time4j/PlainTime;

    return-object v0
.end method
