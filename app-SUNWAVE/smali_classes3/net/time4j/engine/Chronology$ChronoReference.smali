.class Lnet/time4j/engine/Chronology$ChronoReference;
.super Ljava/lang/ref/WeakReference;
.source "Chronology.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/time4j/engine/Chronology;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ChronoReference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/WeakReference<",
        "Lnet/time4j/engine/Chronology<",
        "*>;>;"
    }
.end annotation


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnet/time4j/engine/Chronology;Ljava/lang/ref/ReferenceQueue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/time4j/engine/Chronology<",
            "*>;",
            "Ljava/lang/ref/ReferenceQueue<",
            "Lnet/time4j/engine/Chronology<",
            "*>;>;)V"
        }
    .end annotation

    .line 789
    invoke-direct {p0, p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 790
    invoke-static {p1}, Lnet/time4j/engine/Chronology;->access$100(Lnet/time4j/engine/Chronology;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/time4j/engine/Chronology$ChronoReference;->name:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lnet/time4j/engine/Chronology$ChronoReference;)Ljava/lang/String;
    .locals 0

    .line 776
    iget-object p0, p0, Lnet/time4j/engine/Chronology$ChronoReference;->name:Ljava/lang/String;

    return-object p0
.end method
