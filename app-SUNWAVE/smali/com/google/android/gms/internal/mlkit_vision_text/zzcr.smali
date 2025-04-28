.class public final synthetic Lcom/google/android/gms/internal/mlkit_vision_text/zzcr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-text-recognition@@16.3.0"

# interfaces
.implements Lcom/google/firebase/encoders/ObjectEncoder;


# static fields
.field public static final synthetic zza:Lcom/google/android/gms/internal/mlkit_vision_text/zzcr;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text/zzcr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_text/zzcr;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_text/zzcr;->zza:Lcom/google/android/gms/internal/mlkit_vision_text/zzcr;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final encode(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/Map$Entry;

    check-cast p2, Lcom/google/firebase/encoders/ObjectEncoderContext;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/mlkit_vision_text/zzcs;->zzg(Ljava/util/Map$Entry;Lcom/google/firebase/encoders/ObjectEncoderContext;)V

    return-void
.end method
