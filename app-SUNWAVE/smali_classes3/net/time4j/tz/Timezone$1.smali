.class final Lnet/time4j/tz/Timezone$1;
.super Ljava/lang/Object;
.source "Timezone.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/tz/Timezone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lnet/time4j/tz/TZID;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 118
    check-cast p1, Lnet/time4j/tz/TZID;

    check-cast p2, Lnet/time4j/tz/TZID;

    invoke-virtual {p0, p1, p2}, Lnet/time4j/tz/Timezone$1;->compare(Lnet/time4j/tz/TZID;Lnet/time4j/tz/TZID;)I

    move-result p1

    return p1
.end method

.method public compare(Lnet/time4j/tz/TZID;Lnet/time4j/tz/TZID;)I
    .locals 0

    .line 124
    invoke-interface {p1}, Lnet/time4j/tz/TZID;->canonical()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2}, Lnet/time4j/tz/TZID;->canonical()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method
