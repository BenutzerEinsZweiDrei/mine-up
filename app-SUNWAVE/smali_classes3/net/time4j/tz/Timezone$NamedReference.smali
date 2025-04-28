.class Lnet/time4j/tz/Timezone$NamedReference;
.super Ljava/lang/ref/SoftReference;
.source "Timezone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/tz/Timezone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NamedReference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/SoftReference<",
        "Lnet/time4j/tz/Timezone;",
        ">;"
    }
.end annotation


# instance fields
.field private final tzid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnet/time4j/tz/Timezone;Ljava/lang/ref/ReferenceQueue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/tz/Timezone;",
            "Ljava/lang/ref/ReferenceQueue<",
            "Lnet/time4j/tz/Timezone;",
            ">;)V"
        }
    .end annotation

    .line 1854
    invoke-direct {p0, p1, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 1855
    invoke-virtual {p1}, Lnet/time4j/tz/Timezone;->getID()Lnet/time4j/tz/TZID;

    move-result-object p1

    invoke-interface {p1}, Lnet/time4j/tz/TZID;->canonical()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/tz/Timezone$NamedReference;->tzid:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$300(Lnet/time4j/tz/Timezone$NamedReference;)Ljava/lang/String;
    .locals 0

    .line 1841
    iget-object p0, p0, Lnet/time4j/tz/Timezone$NamedReference;->tzid:Ljava/lang/String;

    return-object p0
.end method
