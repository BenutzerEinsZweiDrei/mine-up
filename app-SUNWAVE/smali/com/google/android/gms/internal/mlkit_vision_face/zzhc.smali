.class public final Lcom/google/android/gms/internal/mlkit_vision_face/zzhc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-face-detection@@16.2.0"

# interfaces
.implements Lcom/google/firebase/encoders/config/Configurator;


# static fields
.field public static final zza:Lcom/google/firebase/encoders/config/Configurator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzhc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_vision_face/zzhc;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzhc;->zza:Lcom/google/firebase/encoders/config/Configurator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final configure(Lcom/google/firebase/encoders/config/EncoderConfig;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/encoders/config/EncoderConfig<",
            "*>;)V"
        }
    .end annotation

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zziw;

    .line 1
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzfr;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzfr;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzkl;

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzha;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzha;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzix;

    .line 3
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzfs;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzfs;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzja;

    .line 4
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzfu;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzfu;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zziy;

    .line 5
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzft;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzft;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zziz;

    .line 6
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzfv;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzfv;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzhs;

    .line 7
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzfd;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzfd;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzhr;

    .line 8
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzfc;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzfc;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzim;

    .line 9
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzfl;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzfl;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzkh;

    .line 10
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzgy;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzgy;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzhq;

    .line 11
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzfb;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzfb;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzhp;

    .line 12
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzfa;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzfa;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzji;

    .line 13
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzgb;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzgb;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzko;

    .line 14
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzfi;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzfi;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzii;

    .line 15
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzfj;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzfj;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzie;

    .line 16
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzfh;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzfh;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzjl;

    .line 17
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzgc;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzgc;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzke;

    .line 18
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzgv;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzgv;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzkf;

    .line 19
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzgw;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzgw;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzje;

    .line 20
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzfz;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzfz;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzkn;

    .line 21
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzen;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzen;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzjf;

    .line 22
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzga;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzga;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzjm;

    .line 23
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzgd;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzgd;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzjp;

    .line 24
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzgg;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzgg;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzjo;

    .line 25
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzgf;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzgf;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzjn;

    .line 26
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzge;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzge;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzju;

    .line 27
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzgl;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzgl;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzjv;

    .line 28
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzgm;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzgm;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzjx;

    .line 29
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzgo;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzgo;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzjw;

    .line 30
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzgn;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzgn;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzjd;

    .line 31
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzfy;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzfy;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzjy;

    .line 32
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzgp;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzgp;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzjz;

    .line 33
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzgq;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzgq;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    .line 34
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzgr;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzgr;

    const-class v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzka;

    invoke-interface {p1, v1, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzkb;

    .line 35
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzgs;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzgs;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzkd;

    .line 36
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzgt;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzgt;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzkc;

    .line 37
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzgu;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzgu;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzjt;

    .line 38
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzgh;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzgh;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zziq;

    .line 39
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzfp;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzfp;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzjr;

    .line 40
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzgj;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzgj;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzjq;

    .line 41
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzgi;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzgi;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzjs;

    .line 42
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzgk;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzgk;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzkg;

    .line 43
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzgx;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzgx;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzkm;

    .line 44
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzhb;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzhb;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzhh;

    .line 45
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzes;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzes;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzhf;

    .line 46
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzeq;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzeq;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzhe;

    .line 47
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzep;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzep;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzhg;

    .line 48
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzer;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzer;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzhj;

    .line 49
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzeu;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzeu;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzhi;

    .line 50
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzet;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzet;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzhk;

    .line 51
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzev;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzev;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzhl;

    .line 52
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzew;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzew;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzhm;

    .line 53
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzex;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzex;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzhn;

    .line 54
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzey;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzey;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzho;

    .line 55
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzez;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzez;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzdo;

    .line 56
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzek;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzek;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzdq;

    .line 57
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzem;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzem;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzdp;

    .line 58
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzel;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzel;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzio;

    .line 59
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzfn;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzfn;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzht;

    .line 60
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzfe;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzfe;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzcu;

    .line 61
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzds;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzds;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzct;

    .line 62
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzdt;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzdt;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzhw;

    .line 63
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzff;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzff;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzcw;

    .line 64
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzdu;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzdu;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzcv;

    .line 65
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzdv;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzdv;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzdd;

    .line 66
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzdy;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzdy;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzdc;

    .line 67
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzdz;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzdz;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    .line 68
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzdw;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzdw;

    const-class v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzcy;

    invoke-interface {p1, v1, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzcx;

    .line 69
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzdx;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzdx;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzdf;

    .line 70
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzea;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzea;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzde;

    .line 71
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzeb;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzeb;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzdh;

    .line 72
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzec;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzec;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzdg;

    .line 73
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzed;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzed;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzdn;

    .line 74
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzei;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzei;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzdm;

    .line 75
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzej;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzej;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzdj;

    .line 76
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzee;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzee;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzdi;

    .line 77
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzef;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzef;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzdl;

    .line 78
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzeg;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzeg;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzdk;

    .line 79
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzeh;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzeh;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzki;

    .line 80
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzgz;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzgz;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzin;

    .line 81
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzfm;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzfm;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzir;

    .line 82
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzfq;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzfq;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzhd;

    .line 83
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzeo;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzeo;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzij;

    .line 84
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzfk;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzfk;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzip;

    .line 85
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzfo;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzfo;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzhx;

    .line 86
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzfg;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzfg;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzjc;

    .line 87
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzfx;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzfx;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzjb;

    .line 88
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzfw;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzfw;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_vision_face/zzcs;

    .line 89
    sget-object v1, Lcom/google/android/gms/internal/mlkit_vision_face/zzdr;->zza:Lcom/google/android/gms/internal/mlkit_vision_face/zzdr;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    return-void
.end method
