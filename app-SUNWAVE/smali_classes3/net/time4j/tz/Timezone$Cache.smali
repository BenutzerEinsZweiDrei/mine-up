.class public Lnet/time4j/tz/Timezone$Cache;
.super Ljava/lang/Object;
.source "Timezone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/tz/Timezone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Cache"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1739
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static refresh()V
    .locals 2

    .line 1761
    const-class v0, Lnet/time4j/tz/Timezone;

    monitor-enter v0

    .line 1762
    :goto_0
    :try_start_0
    invoke-static {}, Lnet/time4j/tz/Timezone;->access$400()Ljava/lang/ref/ReferenceQueue;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1763
    :cond_0
    invoke-static {}, Lnet/time4j/tz/Timezone;->access$500()Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 1764
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1766
    new-instance v0, Lnet/time4j/tz/Timezone$ZonalKeys;

    invoke-direct {v0}, Lnet/time4j/tz/Timezone$ZonalKeys;-><init>()V

    invoke-static {v0}, Lnet/time4j/tz/Timezone;->access$602(Lnet/time4j/tz/Timezone$ZonalKeys;)Lnet/time4j/tz/Timezone$ZonalKeys;

    .line 1767
    invoke-static {}, Lnet/time4j/tz/Timezone;->access$700()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 1769
    invoke-static {}, Lnet/time4j/tz/Timezone;->access$800()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1770
    invoke-static {}, Lnet/time4j/tz/Timezone;->access$1000()Lnet/time4j/tz/Timezone;

    move-result-object v0

    invoke-static {v0}, Lnet/time4j/tz/Timezone;->access$902(Lnet/time4j/tz/Timezone;)Lnet/time4j/tz/Timezone;

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 1764
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static setCacheActive(Z)V
    .locals 0

    .line 1795
    invoke-static {p0}, Lnet/time4j/tz/Timezone;->access$1102(Z)Z

    if-nez p0, :cond_0

    .line 1798
    invoke-static {}, Lnet/time4j/tz/Timezone;->access$700()Ljava/util/concurrent/ConcurrentMap;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    :cond_0
    return-void
.end method

.method public static setMinimumCacheSize(I)V
    .locals 3

    if-ltz p0, :cond_2

    .line 1824
    :goto_0
    invoke-static {}, Lnet/time4j/tz/Timezone;->access$400()Ljava/lang/ref/ReferenceQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lnet/time4j/tz/Timezone$NamedReference;

    if-eqz v0, :cond_0

    .line 1825
    invoke-static {}, Lnet/time4j/tz/Timezone;->access$700()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v1

    invoke-static {v0}, Lnet/time4j/tz/Timezone$NamedReference;->access$300(Lnet/time4j/tz/Timezone$NamedReference;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1828
    :cond_0
    const-class v0, Lnet/time4j/tz/Timezone;

    monitor-enter v0

    add-int/lit8 v1, p0, 0x1

    .line 1829
    :try_start_0
    invoke-static {v1}, Lnet/time4j/tz/Timezone;->access$1202(I)I

    .line 1830
    invoke-static {}, Lnet/time4j/tz/Timezone;->access$500()Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    sub-int/2addr v1, p0

    const/4 p0, 0x0

    :goto_1
    if-ge p0, v1, :cond_1

    .line 1833
    invoke-static {}, Lnet/time4j/tz/Timezone;->access$500()Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    .line 1835
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 1818
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Negative timezone cache size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
