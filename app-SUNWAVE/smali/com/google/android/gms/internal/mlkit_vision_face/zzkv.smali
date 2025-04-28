.class public final synthetic Lcom/google/android/gms/internal/mlkit_vision_face/zzkv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-face-detection@@16.2.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzla;

.field public final synthetic zzb:Lcom/google/android/gms/internal/mlkit_vision_face/zzit;

.field public final synthetic zzc:Ljava/lang/String;

.field public final synthetic zzd:Lcom/google/android/gms/internal/mlkit_vision_face/zzld;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_face/zzla;Lcom/google/android/gms/internal/mlkit_vision_face/zzld;Lcom/google/android/gms/internal/mlkit_vision_face/zzit;Ljava/lang/String;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzkv;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzla;

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzkv;->zzd:Lcom/google/android/gms/internal/mlkit_vision_face/zzld;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzkv;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face/zzit;

    iput-object p4, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzkv;->zzc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzkv;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzla;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzkv;->zzd:Lcom/google/android/gms/internal/mlkit_vision_face/zzld;

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzkv;->zzb:Lcom/google/android/gms/internal/mlkit_vision_face/zzit;

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_vision_face/zzkv;->zzc:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/mlkit_vision_face/zzla;->zzc(Lcom/google/android/gms/internal/mlkit_vision_face/zzld;Lcom/google/android/gms/internal/mlkit_vision_face/zzit;Ljava/lang/String;)V

    return-void
.end method
