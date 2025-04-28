.class public final synthetic Lcom/google/android/gms/internal/mlkit_vision_text/zzks;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-text-recognition@@16.3.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/mlkit_vision_text/zzkw;

.field public final synthetic zzb:Lcom/google/android/gms/internal/mlkit_vision_text/zzis;

.field public final synthetic zzc:Ljava/lang/String;

.field public final synthetic zzd:Lcom/google/android/gms/internal/mlkit_vision_text/zzkz;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_text/zzkw;Lcom/google/android/gms/internal/mlkit_vision_text/zzkz;Lcom/google/android/gms/internal/mlkit_vision_text/zzis;Ljava/lang/String;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzks;->zza:Lcom/google/android/gms/internal/mlkit_vision_text/zzkw;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzks;->zzd:Lcom/google/android/gms/internal/mlkit_vision_text/zzkz;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzks;->zzb:Lcom/google/android/gms/internal/mlkit_vision_text/zzis;

    iput-object p4, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzks;->zzc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzks;->zza:Lcom/google/android/gms/internal/mlkit_vision_text/zzkw;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzks;->zzd:Lcom/google/android/gms/internal/mlkit_vision_text/zzkz;

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzks;->zzb:Lcom/google/android/gms/internal/mlkit_vision_text/zzis;

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_text/zzks;->zzc:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_text/zzkw;->zzb(Lcom/google/android/gms/internal/mlkit_vision_text/zzkz;Lcom/google/android/gms/internal/mlkit_vision_text/zzis;Ljava/lang/String;)V

    return-void
.end method
