.class public final synthetic Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@16.2.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlo;

.field public final synthetic zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjc;

.field public final synthetic zzc:Ljava/lang/String;

.field public final synthetic zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlr;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlo;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlr;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjc;Ljava/lang/String;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlj;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlo;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlj;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlr;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlj;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjc;

    iput-object p4, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlj;->zzc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlj;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlo;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlj;->zzd:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlr;

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlj;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjc;

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlj;->zzc:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlo;->zzc(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlr;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjc;Ljava/lang/String;)V

    return-void
.end method
