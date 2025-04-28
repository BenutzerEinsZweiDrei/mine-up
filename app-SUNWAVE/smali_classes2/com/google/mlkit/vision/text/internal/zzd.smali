.class public final synthetic Lcom/google/mlkit/vision/text/internal/zzd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-text-recognition@@16.3.0"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_text/zzu;


# static fields
.field public static final synthetic zza:Lcom/google/mlkit/vision/text/internal/zzd;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/mlkit/vision/text/internal/zzd;

    invoke-direct {v0}, Lcom/google/mlkit/vision/text/internal/zzd;-><init>()V

    sput-object v0, Lcom/google/mlkit/vision/text/internal/zzd;->zza:Lcom/google/mlkit/vision/text/internal/zzd;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_text/zzl;

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/mlkit_vision_text/zzl;->zzb:Lcom/google/android/gms/internal/mlkit_vision_text/zzf;

    .line 2
    invoke-static {v0}, Lcom/google/mlkit/vision/text/internal/zza;->zzb(Lcom/google/android/gms/internal/mlkit_vision_text/zzf;)Ljava/util/List;

    move-result-object v4

    new-instance v0, Lcom/google/mlkit/vision/text/Text$Line;

    .line 3
    iget-object v1, p1, Lcom/google/android/gms/internal/mlkit_vision_text/zzl;->zze:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_text/zzab;->zzb(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lcom/google/android/gms/internal/mlkit_vision_text/zzl;->zze:Ljava/lang/String;

    :goto_0
    move-object v2, v1

    .line 4
    invoke-static {v4}, Lcom/google/mlkit/vision/text/internal/zza;->zza(Ljava/util/List;)Landroid/graphics/Rect;

    move-result-object v3

    .line 5
    iget-object v1, p1, Lcom/google/android/gms/internal/mlkit_vision_text/zzl;->zzg:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_text/zzab;->zzb(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "und"

    goto :goto_1

    :cond_1
    iget-object v1, p1, Lcom/google/android/gms/internal/mlkit_vision_text/zzl;->zzg:Ljava/lang/String;

    :goto_1
    move-object v5, v1

    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_vision_text/zzl;->zza:[Lcom/google/android/gms/internal/mlkit_vision_text/zzr;

    .line 6
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    sget-object v1, Lcom/google/mlkit/vision/text/internal/zze;->zza:Lcom/google/mlkit/vision/text/internal/zze;

    .line 7
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/mlkit_vision_text/zzbs;->zza(Ljava/util/List;Lcom/google/android/gms/internal/mlkit_vision_text/zzu;)Ljava/util/List;

    move-result-object v6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/mlkit/vision/text/Text$Line;-><init>(Ljava/lang/String;Landroid/graphics/Rect;Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method
