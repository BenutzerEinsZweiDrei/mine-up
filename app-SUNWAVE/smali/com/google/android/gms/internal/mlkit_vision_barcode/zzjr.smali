.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@16.2.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zziv;

.field private final zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlb;

.field private final zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcb<",
            "Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjo;",
            ">;"
        }
    .end annotation
.end field

.field private final zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcb<",
            "Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjp;",
            ">;"
        }
    .end annotation
.end field

.field private final zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzir;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjq;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjq;->zzd(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjq;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zziv;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjr;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zziv;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjq;->zzk(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjq;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlb;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjr;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlb;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjq;->zza(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjq;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcb;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjr;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcb;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjq;->zzb(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjq;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcb;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjr;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcb;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjq;->zzc(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjq;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzir;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjr;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzir;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcb;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcb<",
            "Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjr;->zzc:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcb;

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcb;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcb<",
            "Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjp;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjr;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzcb;

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzir;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjr;->zze:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzir;

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/mlkit_vision_barcode/zziv;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjr;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zziv;

    return-object v0
.end method

.method public final zze()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlb;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjr;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlb;

    return-object v0
.end method
