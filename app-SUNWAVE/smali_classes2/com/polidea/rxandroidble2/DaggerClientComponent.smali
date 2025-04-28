.class public final Lcom/polidea/rxandroidble2/DaggerClientComponent;
.super Ljava/lang/Object;
.source "DaggerClientComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/polidea/rxandroidble2/DaggerClientComponent$ClientComponentImpl;,
        Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentImpl;,
        Lcom/polidea/rxandroidble2/DaggerClientComponent$ConnectionComponentImpl;,
        Lcom/polidea/rxandroidble2/DaggerClientComponent$ConnectionComponentBuilder;,
        Lcom/polidea/rxandroidble2/DaggerClientComponent$DeviceComponentBuilder;,
        Lcom/polidea/rxandroidble2/DaggerClientComponent$Builder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder()Lcom/polidea/rxandroidble2/ClientComponent$Builder;
    .locals 2

    .line 147
    new-instance v0, Lcom/polidea/rxandroidble2/DaggerClientComponent$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/polidea/rxandroidble2/DaggerClientComponent$Builder;-><init>(Lcom/polidea/rxandroidble2/DaggerClientComponent$1;)V

    return-object v0
.end method
