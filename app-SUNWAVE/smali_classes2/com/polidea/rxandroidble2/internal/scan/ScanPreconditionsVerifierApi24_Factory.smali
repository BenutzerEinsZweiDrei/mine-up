.class public final Lcom/polidea/rxandroidble2/internal/scan/ScanPreconditionsVerifierApi24_Factory;
.super Ljava/lang/Object;
.source "ScanPreconditionsVerifierApi24_Factory.java"

# interfaces
.implements Lbleshadow/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbleshadow/dagger/internal/Factory<",
        "Lcom/polidea/rxandroidble2/internal/scan/ScanPreconditionsVerifierApi24;",
        ">;"
    }
.end annotation


# instance fields
.field private final scanPreconditionVerifierApi18Provider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/scan/ScanPreconditionsVerifierApi18;",
            ">;"
        }
    .end annotation
.end field

.field private final timeSchedulerProvider:Lbleshadow/javax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbleshadow/javax/inject/Provider<",
            "Lio/reactivex/Scheduler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/scan/ScanPreconditionsVerifierApi18;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lio/reactivex/Scheduler;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanPreconditionsVerifierApi24_Factory;->scanPreconditionVerifierApi18Provider:Lbleshadow/javax/inject/Provider;

    .line 27
    iput-object p2, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanPreconditionsVerifierApi24_Factory;->timeSchedulerProvider:Lbleshadow/javax/inject/Provider;

    return-void
.end method

.method public static create(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)Lcom/polidea/rxandroidble2/internal/scan/ScanPreconditionsVerifierApi24_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbleshadow/javax/inject/Provider<",
            "Lcom/polidea/rxandroidble2/internal/scan/ScanPreconditionsVerifierApi18;",
            ">;",
            "Lbleshadow/javax/inject/Provider<",
            "Lio/reactivex/Scheduler;",
            ">;)",
            "Lcom/polidea/rxandroidble2/internal/scan/ScanPreconditionsVerifierApi24_Factory;"
        }
    .end annotation

    .line 38
    new-instance v0, Lcom/polidea/rxandroidble2/internal/scan/ScanPreconditionsVerifierApi24_Factory;

    invoke-direct {v0, p0, p1}, Lcom/polidea/rxandroidble2/internal/scan/ScanPreconditionsVerifierApi24_Factory;-><init>(Lbleshadow/javax/inject/Provider;Lbleshadow/javax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/polidea/rxandroidble2/internal/scan/ScanPreconditionsVerifierApi18;Lio/reactivex/Scheduler;)Lcom/polidea/rxandroidble2/internal/scan/ScanPreconditionsVerifierApi24;
    .locals 1

    .line 43
    new-instance v0, Lcom/polidea/rxandroidble2/internal/scan/ScanPreconditionsVerifierApi24;

    invoke-direct {v0, p0, p1}, Lcom/polidea/rxandroidble2/internal/scan/ScanPreconditionsVerifierApi24;-><init>(Lcom/polidea/rxandroidble2/internal/scan/ScanPreconditionsVerifierApi18;Lio/reactivex/Scheduler;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/polidea/rxandroidble2/internal/scan/ScanPreconditionsVerifierApi24;
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanPreconditionsVerifierApi24_Factory;->scanPreconditionVerifierApi18Provider:Lbleshadow/javax/inject/Provider;

    invoke-interface {v0}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/polidea/rxandroidble2/internal/scan/ScanPreconditionsVerifierApi18;

    iget-object v1, p0, Lcom/polidea/rxandroidble2/internal/scan/ScanPreconditionsVerifierApi24_Factory;->timeSchedulerProvider:Lbleshadow/javax/inject/Provider;

    invoke-interface {v1}, Lbleshadow/javax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/Scheduler;

    invoke-static {v0, v1}, Lcom/polidea/rxandroidble2/internal/scan/ScanPreconditionsVerifierApi24_Factory;->newInstance(Lcom/polidea/rxandroidble2/internal/scan/ScanPreconditionsVerifierApi18;Lio/reactivex/Scheduler;)Lcom/polidea/rxandroidble2/internal/scan/ScanPreconditionsVerifierApi24;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2/internal/scan/ScanPreconditionsVerifierApi24_Factory;->get()Lcom/polidea/rxandroidble2/internal/scan/ScanPreconditionsVerifierApi24;

    move-result-object v0

    return-object v0
.end method
