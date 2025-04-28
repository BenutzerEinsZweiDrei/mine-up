.class final synthetic Lcom/google/android/gms/internal/mlkit_common/zzd;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@17.2.0"


# static fields
.field static final synthetic zza:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v1, v0, [I

    sput-object v1, Lcom/google/android/gms/internal/mlkit_common/zzd;->zza:[I

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    aput v3, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x2

    .line 1
    :try_start_1
    sget-object v2, Lcom/google/android/gms/internal/mlkit_common/zzd;->zza:[I

    aput v1, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v2, Lcom/google/android/gms/internal/mlkit_common/zzd;->zza:[I

    aput v0, v2, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
