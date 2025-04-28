.class public final Lcom/google/android/gms/internal/mlkit_vision_common/zzid;
.super Ljava/lang/Object;
.source "com.google.mlkit:vision-common@@16.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_common/zzhw;


# instance fields
.field private zza:Lcom/google/firebase/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/inject/Provider<",
            "Lcom/google/android/datatransport/Transport<",
            "[B>;>;"
        }
    .end annotation
.end field

.field private final zzb:Lcom/google/firebase/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/inject/Provider<",
            "Lcom/google/android/datatransport/Transport<",
            "[B>;>;"
        }
    .end annotation
.end field

.field private final zzc:Lcom/google/android/gms/internal/mlkit_vision_common/zzhr;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/mlkit_vision_common/zzhr;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzid;->zzc:Lcom/google/android/gms/internal/mlkit_vision_common/zzhr;

    .line 1
    sget-object p2, Lcom/google/android/datatransport/cct/CCTDestination;->INSTANCE:Lcom/google/android/datatransport/cct/CCTDestination;

    .line 2
    invoke-static {p1}, Lcom/google/android/datatransport/runtime/TransportRuntime;->initialize(Landroid/content/Context;)V

    .line 3
    invoke-static {}, Lcom/google/android/datatransport/runtime/TransportRuntime;->getInstance()Lcom/google/android/datatransport/runtime/TransportRuntime;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/datatransport/runtime/TransportRuntime;->newFactory(Lcom/google/android/datatransport/runtime/Destination;)Lcom/google/android/datatransport/TransportFactory;

    move-result-object p1

    .line 4
    invoke-virtual {p2}, Lcom/google/android/datatransport/cct/CCTDestination;->getSupportedEncodings()Ljava/util/Set;

    move-result-object p2

    const-string v0, "json"

    invoke-static {v0}, Lcom/google/android/datatransport/Encoding;->of(Ljava/lang/String;)Lcom/google/android/datatransport/Encoding;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 5
    new-instance p2, Lcom/google/firebase/components/Lazy;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzib;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzib;-><init>(Lcom/google/android/datatransport/TransportFactory;)V

    invoke-direct {p2, v0}, Lcom/google/firebase/components/Lazy;-><init>(Lcom/google/firebase/inject/Provider;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzid;->zza:Lcom/google/firebase/inject/Provider;

    .line 6
    :cond_0
    new-instance p2, Lcom/google/firebase/components/Lazy;

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_common/zzic;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzic;-><init>(Lcom/google/android/datatransport/TransportFactory;)V

    invoke-direct {p2, v0}, Lcom/google/firebase/components/Lazy;-><init>(Lcom/google/firebase/inject/Provider;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzid;->zzb:Lcom/google/firebase/inject/Provider;

    return-void
.end method

.method static zzb(Lcom/google/android/gms/internal/mlkit_vision_common/zzhr;Lcom/google/android/gms/internal/mlkit_vision_common/zzhy;)Lcom/google/android/datatransport/Event;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/mlkit_vision_common/zzhr;",
            "Lcom/google/android/gms/internal/mlkit_vision_common/zzhy;",
            ")",
            "Lcom/google/android/datatransport/Event<",
            "[B>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzhr;->zza()I

    move-result p0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzhy;->zzb(IZ)[B

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/datatransport/Event;->ofTelemetry(Ljava/lang/Object;)Lcom/google/android/datatransport/Event;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/mlkit_vision_common/zzhy;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzid;->zzc:Lcom/google/android/gms/internal/mlkit_vision_common/zzhr;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_common/zzhr;->zza()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzid;->zza:Lcom/google/firebase/inject/Provider;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/datatransport/Transport;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzid;->zzc:Lcom/google/android/gms/internal/mlkit_vision_common/zzhr;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzid;->zzb(Lcom/google/android/gms/internal/mlkit_vision_common/zzhr;Lcom/google/android/gms/internal/mlkit_vision_common/zzhy;)Lcom/google/android/datatransport/Event;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/datatransport/Transport;->send(Lcom/google/android/datatransport/Event;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzid;->zzb:Lcom/google/firebase/inject/Provider;

    .line 3
    invoke-interface {v0}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/datatransport/Transport;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzid;->zzc:Lcom/google/android/gms/internal/mlkit_vision_common/zzhr;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzid;->zzb(Lcom/google/android/gms/internal/mlkit_vision_common/zzhr;Lcom/google/android/gms/internal/mlkit_vision_common/zzhy;)Lcom/google/android/datatransport/Event;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/datatransport/Transport;->send(Lcom/google/android/datatransport/Event;)V

    return-void
.end method
