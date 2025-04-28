.class public final synthetic Lcom/google/mlkit/vision/text/internal/zze;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-text-recognition@@16.3.0"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_text/zzu;


# static fields
.field public static final synthetic zza:Lcom/google/mlkit/vision/text/internal/zze;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/mlkit/vision/text/internal/zze;

    invoke-direct {v0}, Lcom/google/mlkit/vision/text/internal/zze;-><init>()V

    sput-object v0, Lcom/google/mlkit/vision/text/internal/zze;->zza:Lcom/google/mlkit/vision/text/internal/zze;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_text/zzr;

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/mlkit_vision_text/zzr;->zzb:Lcom/google/android/gms/internal/mlkit_vision_text/zzf;

    .line 2
    invoke-static {v0}, Lcom/google/mlkit/vision/text/internal/zza;->zzb(Lcom/google/android/gms/internal/mlkit_vision_text/zzf;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/mlkit/vision/text/Text$Element;

    .line 3
    iget-object v2, p1, Lcom/google/android/gms/internal/mlkit_vision_text/zzr;->zzd:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/internal/mlkit_vision_text/zzab;->zzb(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, ""

    goto :goto_0

    :cond_0
    iget-object v2, p1, Lcom/google/android/gms/internal/mlkit_vision_text/zzr;->zzd:Ljava/lang/String;

    .line 4
    :goto_0
    invoke-static {v0}, Lcom/google/mlkit/vision/text/internal/zza;->zza(Ljava/util/List;)Landroid/graphics/Rect;

    move-result-object v3

    .line 5
    iget-object v4, p1, Lcom/google/android/gms/internal/mlkit_vision_text/zzr;->zzf:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/internal/mlkit_vision_text/zzab;->zzb(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string p1, "und"

    goto :goto_1

    :cond_1
    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_vision_text/zzr;->zzf:Ljava/lang/String;

    :goto_1
    invoke-direct {v1, v2, v3, v0, p1}, Lcom/google/mlkit/vision/text/Text$Element;-><init>(Ljava/lang/String;Landroid/graphics/Rect;Ljava/util/List;Ljava/lang/String;)V

    return-object v1
.end method
