.class public final Lcom/google/android/gms/internal/mlkit_common/zzjo;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@17.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_common/zzjc;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/mlkit_common/zzgx;

.field private zzb:Lcom/google/android/gms/internal/mlkit_common/zzir;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/mlkit_common/zzgx;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Lcom/google/android/gms/internal/mlkit_common/zzir;

    invoke-direct {p2}, Lcom/google/android/gms/internal/mlkit_common/zzir;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_common/zzjo;->zzb:Lcom/google/android/gms/internal/mlkit_common/zzir;

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzjo;->zza:Lcom/google/android/gms/internal/mlkit_common/zzgx;

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_common/zzjy;->zza()Lcom/google/android/gms/internal/mlkit_common/zzjy;

    return-void
.end method

.method public static zzf(Lcom/google/android/gms/internal/mlkit_common/zzgx;)Lcom/google/android/gms/internal/mlkit_common/zzjc;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzjo;

    const/4 v1, 0x0

    .line 1
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/mlkit_common/zzjo;-><init>(Lcom/google/android/gms/internal/mlkit_common/zzgx;I)V

    return-object v0
.end method

.method public static zzg()Lcom/google/android/gms/internal/mlkit_common/zzjc;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzjo;

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzgx;

    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_common/zzgx;-><init>()V

    const/4 v2, 0x0

    .line 1
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/mlkit_common/zzjo;-><init>(Lcom/google/android/gms/internal/mlkit_common/zzgx;I)V

    return-object v0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/mlkit_common/zzgv;)Lcom/google/android/gms/internal/mlkit_common/zzjc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzjo;->zza:Lcom/google/android/gms/internal/mlkit_common/zzgx;

    .line 1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_common/zzgx;->zzf(Lcom/google/android/gms/internal/mlkit_common/zzgv;)Lcom/google/android/gms/internal/mlkit_common/zzgx;

    return-object p0
.end method

.method public final zzb(Lcom/google/android/gms/internal/mlkit_common/zzhc;)Lcom/google/android/gms/internal/mlkit_common/zzjc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzjo;->zza:Lcom/google/android/gms/internal/mlkit_common/zzgx;

    .line 1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_common/zzgx;->zzi(Lcom/google/android/gms/internal/mlkit_common/zzhc;)Lcom/google/android/gms/internal/mlkit_common/zzgx;

    return-object p0
.end method

.method public final zzc(Lcom/google/android/gms/internal/mlkit_common/zzir;)Lcom/google/android/gms/internal/mlkit_common/zzjc;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzjo;->zzb:Lcom/google/android/gms/internal/mlkit_common/zzir;

    return-object p0
.end method

.method public final zzd()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_common/zzjo;->zza:Lcom/google/android/gms/internal/mlkit_common/zzgx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_common/zzgx;->zzk()Lcom/google/android/gms/internal/mlkit_common/zzgy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_common/zzgy;->zzf()Lcom/google/android/gms/internal/mlkit_common/zzis;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_common/zzis;->zzj()Ljava/lang/String;

    move-result-object v1

    .line 1
    invoke-static {v1}, Lcom/google/android/gms/internal/mlkit_common/zzaa;->zzc(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_common/zzis;->zzj()Ljava/lang/String;

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

.method public final zze(IZ)[B
    .locals 3

    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_common/zzjo;->zzb:Lcom/google/android/gms/internal/mlkit_common/zzir;

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

    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/mlkit_common/zzir;->zzf(Ljava/lang/Boolean;)Lcom/google/android/gms/internal/mlkit_common/zzir;

    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_common/zzjo;->zzb:Lcom/google/android/gms/internal/mlkit_common/zzir;

    .line 2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/mlkit_common/zzir;->zze(Ljava/lang/Boolean;)Lcom/google/android/gms/internal/mlkit_common/zzir;

    iget-object p2, p0, Lcom/google/android/gms/internal/mlkit_common/zzjo;->zza:Lcom/google/android/gms/internal/mlkit_common/zzgx;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_common/zzjo;->zzb:Lcom/google/android/gms/internal/mlkit_common/zzir;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_common/zzir;->zzl()Lcom/google/android/gms/internal/mlkit_common/zzis;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/mlkit_common/zzgx;->zzj(Lcom/google/android/gms/internal/mlkit_common/zzis;)Lcom/google/android/gms/internal/mlkit_common/zzgx;

    .line 4
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/mlkit_common/zzjy;->zza()Lcom/google/android/gms/internal/mlkit_common/zzjy;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzjo;->zza:Lcom/google/android/gms/internal/mlkit_common/zzgx;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_common/zzgx;->zzk()Lcom/google/android/gms/internal/mlkit_common/zzgy;

    move-result-object p1

    .line 5
    new-instance p2, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;

    invoke-direct {p2}, Lcom/google/firebase/encoders/json/JsonDataEncoderBuilder;-><init>()V

    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzfk;->zza:Lcom/google/firebase/encoders/config/Configurator;

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
    iget-object p1, p0, Lcom/google/android/gms/internal/mlkit_common/zzjo;->zza:Lcom/google/android/gms/internal/mlkit_common/zzgx;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_common/zzgx;->zzk()Lcom/google/android/gms/internal/mlkit_common/zzgy;

    move-result-object p1

    .line 7
    new-instance p2, Lcom/google/android/gms/internal/mlkit_common/zzba;

    invoke-direct {p2}, Lcom/google/android/gms/internal/mlkit_common/zzba;-><init>()V

    .line 8
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzfk;->zza:Lcom/google/firebase/encoders/config/Configurator;

    .line 9
    invoke-interface {v0, p2}, Lcom/google/firebase/encoders/config/Configurator;->configure(Lcom/google/firebase/encoders/config/EncoderConfig;)V

    .line 8
    invoke-virtual {p2}, Lcom/google/android/gms/internal/mlkit_common/zzba;->zza()Lcom/google/android/gms/internal/mlkit_common/zzbb;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/mlkit_common/zzbb;->zza(Ljava/lang/Object;)[B

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
