.class Lcom/polidea/rxandroidble2/internal/RxBleLog$1;
.super Ljava/lang/Object;
.source "RxBleLog.java"

# interfaces
.implements Lcom/polidea/rxandroidble2/LogOptions$Logger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/polidea/rxandroidble2/internal/RxBleLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public log(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 52
    invoke-static {p1, p2, p3}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method
