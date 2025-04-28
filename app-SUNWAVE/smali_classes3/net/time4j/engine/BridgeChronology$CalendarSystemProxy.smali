.class Lnet/time4j/engine/BridgeChronology$CalendarSystemProxy;
.super Ljava/lang/Object;
.source "BridgeChronology.java"

# interfaces
.implements Lnet/time4j/engine/CalendarSystem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/engine/BridgeChronology;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CalendarSystemProxy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lnet/time4j/engine/CalendarSystem<",
        "TS;>;"
    }
.end annotation


# instance fields
.field private final calsys:Lnet/time4j/engine/CalendarSystem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/CalendarSystem<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final converter:Lnet/time4j/engine/Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/time4j/engine/Converter<",
            "TS;TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lnet/time4j/engine/Converter;Lnet/time4j/engine/CalendarSystem;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/Converter<",
            "TS;TT;>;",
            "Lnet/time4j/engine/CalendarSystem<",
            "TT;>;)V"
        }
    .end annotation

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    iput-object p1, p0, Lnet/time4j/engine/BridgeChronology$CalendarSystemProxy;->converter:Lnet/time4j/engine/Converter;

    .line 269
    iput-object p2, p0, Lnet/time4j/engine/BridgeChronology$CalendarSystemProxy;->calsys:Lnet/time4j/engine/CalendarSystem;

    return-void
.end method


# virtual methods
.method public getEras()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/time4j/engine/CalendarEra;",
            ">;"
        }
    .end annotation

    .line 297
    iget-object v0, p0, Lnet/time4j/engine/BridgeChronology$CalendarSystemProxy;->calsys:Lnet/time4j/engine/CalendarSystem;

    invoke-interface {v0}, Lnet/time4j/engine/CalendarSystem;->getEras()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMaximumSinceUTC()J
    .locals 2

    .line 292
    iget-object v0, p0, Lnet/time4j/engine/BridgeChronology$CalendarSystemProxy;->calsys:Lnet/time4j/engine/CalendarSystem;

    invoke-interface {v0}, Lnet/time4j/engine/CalendarSystem;->getMaximumSinceUTC()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinimumSinceUTC()J
    .locals 2

    .line 287
    iget-object v0, p0, Lnet/time4j/engine/BridgeChronology$CalendarSystemProxy;->calsys:Lnet/time4j/engine/CalendarSystem;

    invoke-interface {v0}, Lnet/time4j/engine/CalendarSystem;->getMinimumSinceUTC()J

    move-result-wide v0

    return-wide v0
.end method

.method public transform(Ljava/lang/Object;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)J"
        }
    .end annotation

    .line 282
    iget-object v0, p0, Lnet/time4j/engine/BridgeChronology$CalendarSystemProxy;->calsys:Lnet/time4j/engine/CalendarSystem;

    iget-object v1, p0, Lnet/time4j/engine/BridgeChronology$CalendarSystemProxy;->converter:Lnet/time4j/engine/Converter;

    invoke-interface {v1, p1}, Lnet/time4j/engine/Converter;->translate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lnet/time4j/engine/CalendarSystem;->transform(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method public transform(J)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TS;"
        }
    .end annotation

    .line 277
    iget-object v0, p0, Lnet/time4j/engine/BridgeChronology$CalendarSystemProxy;->converter:Lnet/time4j/engine/Converter;

    iget-object v1, p0, Lnet/time4j/engine/BridgeChronology$CalendarSystemProxy;->calsys:Lnet/time4j/engine/CalendarSystem;

    invoke-interface {v1, p1, p2}, Lnet/time4j/engine/CalendarSystem;->transform(J)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lnet/time4j/engine/Converter;->from(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
