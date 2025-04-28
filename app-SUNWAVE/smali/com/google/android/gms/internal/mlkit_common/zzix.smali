.class final Lcom/google/android/gms/internal/mlkit_common/zzix;
.super Lcom/google/android/gms/internal/mlkit_common/zzjd;
.source "com.google.mlkit:common@@17.2.0"


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:Ljava/lang/Boolean;

.field private zzc:Ljava/lang/Integer;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_common/zzjd;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Z)Lcom/google/android/gms/internal/mlkit_common/zzjd;
    .locals 0

    const/4 p1, 0x1

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzix;->zzb:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final zzb(I)Lcom/google/android/gms/internal/mlkit_common/zzjd;
    .locals 0

    const/4 p1, 0x1

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzix;->zzc:Ljava/lang/Integer;

    return-object p0
.end method

.method public final zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_common/zzjd;
    .locals 0

    const-string p1, "common"

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzix;->zza:Ljava/lang/String;

    return-object p0
.end method

.method public final zzd()Lcom/google/android/gms/internal/mlkit_common/zzje;
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzix;->zza:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, " libraryName"

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzix;->zzb:Ljava/lang/Boolean;

    if-nez v1, :cond_1

    const-string v1, " enableFirelog"

    .line 1
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzix;->zzc:Ljava/lang/Integer;

    if-nez v1, :cond_2

    .line 2
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " firelogEventType"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Ljava/lang/IllegalStateException;

    .line 4
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Missing required properties:"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 6
    :cond_3
    new-instance v0, Ljava/lang/String;

    .line 4
    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zziy;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzix;->zza:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_common/zzix;->zzb:Ljava/lang/Boolean;

    .line 5
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v3, p0, Lcom/google/android/gms/internal/mlkit_common/zzix;->zzc:Ljava/lang/Integer;

    .line 6
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/mlkit_common/zziy;-><init>(Ljava/lang/String;ZILcom/google/android/gms/internal/mlkit_common/zziw;)V

    return-object v0
.end method
