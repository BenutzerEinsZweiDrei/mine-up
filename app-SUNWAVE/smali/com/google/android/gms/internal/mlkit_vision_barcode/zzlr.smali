.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@16.2.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzje;

.field private zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkv;

.field private final zzc:I


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzje;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkv;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlr;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkv;

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlr;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzje;

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzma;->zza()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzma;

    iput p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlr;->zzc:I

    return-void
.end method

.method public static zzd(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzje;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlr;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlr;

    const/4 v1, 0x0

    .line 1
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlr;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzje;I)V

    return-object v0
.end method

.method public static zze(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzje;I)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlr;
    .locals 1

    new-instance p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlr;

    const/4 v0, 0x1

    .line 1
    invoke-direct {p1, p0, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlr;-><init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzje;I)V

    return-object p1
.end method


# virtual methods
.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlr;->zzc:I

    return v0
.end method

.method public final zzb()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlr;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzje;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzje;->zzi()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;->zze()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkw;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkw;->zzj()Ljava/lang/String;

    move-result-object v1

    .line 1
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzar;->zzb(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkw;->zzj()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, "NA"

    return-object v0
.end method

.method public final zzc(IZ)[B
    .locals 3

    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlr;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkv;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 1
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkv;->zzf(Ljava/lang/Boolean;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkv;

    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlr;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkv;

    .line 2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkv;->zze(Ljava/lang/Boolean;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkv;

    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlr;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzje;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlr;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkv;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkv;->zzl()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkw;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzje;->zzh(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkw;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzje;

    .line 4
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzma;->zza()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzma;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlr;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzje;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzje;->zzi()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    move-result-object p1

    .line 5
    new-instance p2, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;

    invoke-direct {p2}, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;-><init>()V

    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzhr;->zza:Lcom/google/firebase/encoders/config/Configurator;

    invoke-virtual {p2, v1}, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->configureWith(Lcom/google/firebase/encoders/config/Configurator;)Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->ignoreNullValues(Z)Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;->build()Lcom/google/firebase/encoders/DataEncoder;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/google/firebase/encoders/DataEncoder;->encode(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "utf-8"

    .line 6
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlr;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzje;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzje;->zzi()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjf;

    move-result-object p1

    .line 7
    new-instance p2, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzde;

    invoke-direct {p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzde;-><init>()V

    .line 8
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzhr;->zza:Lcom/google/firebase/encoders/config/Configurator;

    .line 9
    invoke-interface {v0, p2}, Lcom/google/firebase/encoders/config/Configurator;->configure(Lcom/google/firebase/encoders/config/EncoderConfig;)V

    .line 8
    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzde;->zza()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdf;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzdf;->zza(Ljava/lang/Object;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Failed to covert logging to UTF-8 byte array"

    .line 10
    invoke-direct {p2, v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final zzf(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjc;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlr;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlr;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzje;

    .line 1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzje;->zzd(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzjc;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzje;

    return-object p0
.end method

.method public final zzg(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkv;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlr;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzlr;->zzb:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzkv;

    return-object p0
.end method
