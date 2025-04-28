.class final Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS$4;
.super Ljava/lang/Object;
.source "HinduVariant.java"

# interfaces
.implements Lnet/time4j/calendar/hindu/HinduVariant$LongFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->hCritical(Lnet/time4j/calendar/hindu/HinduVariant;)Lnet/time4j/calendar/hindu/HinduVariant$LongFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$variant:Lnet/time4j/calendar/hindu/HinduVariant;


# direct methods
.method constructor <init>(Lnet/time4j/calendar/hindu/HinduVariant;)V
    .locals 0

    .line 1228
    iput-object p1, p0, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS$4;->val$variant:Lnet/time4j/calendar/hindu/HinduVariant;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(J)D
    .locals 2

    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    long-to-double p1, p1

    .line 1231
    iget-object v0, p0, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS$4;->val$variant:Lnet/time4j/calendar/hindu/HinduVariant;

    invoke-static {p1, p2, v0}, Lnet/time4j/calendar/hindu/HinduVariant$ModernHinduCS;->access$400(DLnet/time4j/calendar/hindu/HinduVariant;)D

    move-result-wide p1

    return-wide p1
.end method
