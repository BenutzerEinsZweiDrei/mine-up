.class public final Lcom/google/android/gms/internal/mlkit_common/zzfk;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@17.2.0"

# interfaces
.implements Lcom/google/firebase/encoders/config/Configurator;


# static fields
.field public static final zza:Lcom/google/firebase/encoders/config/Configurator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzfk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_common/zzfk;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzfk;->zza:Lcom/google/firebase/encoders/config/Configurator;

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

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzgy;

    .line 1
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zza:Lcom/google/android/gms/internal/mlkit_common/zzdz;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzis;

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzfi;->zza:Lcom/google/android/gms/internal/mlkit_common/zzfi;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzhc;

    .line 3
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzea;->zza:Lcom/google/android/gms/internal/mlkit_common/zzea;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzhl;

    .line 4
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzec;->zza:Lcom/google/android/gms/internal/mlkit_common/zzec;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzhh;

    .line 5
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzeb;->zza:Lcom/google/android/gms/internal/mlkit_common/zzeb;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzhk;

    .line 6
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzed;->zza:Lcom/google/android/gms/internal/mlkit_common/zzed;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzga;

    .line 7
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzdl;->zza:Lcom/google/android/gms/internal/mlkit_common/zzdl;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzfz;

    .line 8
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzdk;->zza:Lcom/google/android/gms/internal/mlkit_common/zzdk;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzgj;

    .line 9
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzdt;->zza:Lcom/google/android/gms/internal/mlkit_common/zzdt;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzio;

    .line 10
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzfg;->zza:Lcom/google/android/gms/internal/mlkit_common/zzfg;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzfy;

    .line 11
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzdj;->zza:Lcom/google/android/gms/internal/mlkit_common/zzdj;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzfx;

    .line 12
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzdi;->zza:Lcom/google/android/gms/internal/mlkit_common/zzdi;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzhr;

    .line 13
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzej;->zza:Lcom/google/android/gms/internal/mlkit_common/zzej;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zziv;

    .line 14
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzdq;->zza:Lcom/google/android/gms/internal/mlkit_common/zzdq;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzgh;

    .line 15
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzdr;->zza:Lcom/google/android/gms/internal/mlkit_common/zzdr;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzgg;

    .line 16
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzdp;->zza:Lcom/google/android/gms/internal/mlkit_common/zzdp;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzhs;

    .line 17
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzek;->zza:Lcom/google/android/gms/internal/mlkit_common/zzek;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzil;

    .line 18
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzfd;->zza:Lcom/google/android/gms/internal/mlkit_common/zzfd;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzim;

    .line 19
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzfe;->zza:Lcom/google/android/gms/internal/mlkit_common/zzfe;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzhp;

    .line 20
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzeh;->zza:Lcom/google/android/gms/internal/mlkit_common/zzeh;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zziu;

    .line 21
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzcv;->zza:Lcom/google/android/gms/internal/mlkit_common/zzcv;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzhq;

    .line 22
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzei;->zza:Lcom/google/android/gms/internal/mlkit_common/zzei;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzht;

    .line 23
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzel;->zza:Lcom/google/android/gms/internal/mlkit_common/zzel;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzhw;

    .line 24
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzeo;->zza:Lcom/google/android/gms/internal/mlkit_common/zzeo;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzhv;

    .line 25
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzen;->zza:Lcom/google/android/gms/internal/mlkit_common/zzen;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzhu;

    .line 26
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzem;->zza:Lcom/google/android/gms/internal/mlkit_common/zzem;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzib;

    .line 27
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzet;->zza:Lcom/google/android/gms/internal/mlkit_common/zzet;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzic;

    .line 28
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzeu;->zza:Lcom/google/android/gms/internal/mlkit_common/zzeu;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzie;

    .line 29
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzew;->zza:Lcom/google/android/gms/internal/mlkit_common/zzew;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzid;

    .line 30
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzev;->zza:Lcom/google/android/gms/internal/mlkit_common/zzev;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzho;

    .line 31
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzeg;->zza:Lcom/google/android/gms/internal/mlkit_common/zzeg;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzif;

    .line 32
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzex;->zza:Lcom/google/android/gms/internal/mlkit_common/zzex;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzig;

    .line 33
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzey;->zza:Lcom/google/android/gms/internal/mlkit_common/zzey;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    .line 34
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzez;->zza:Lcom/google/android/gms/internal/mlkit_common/zzez;

    const-class v1, Lcom/google/android/gms/internal/mlkit_common/zzih;

    invoke-interface {p1, v1, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzii;

    .line 35
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzfa;->zza:Lcom/google/android/gms/internal/mlkit_common/zzfa;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzik;

    .line 36
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzfb;->zza:Lcom/google/android/gms/internal/mlkit_common/zzfb;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzij;

    .line 37
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzfc;->zza:Lcom/google/android/gms/internal/mlkit_common/zzfc;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzia;

    .line 38
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzep;->zza:Lcom/google/android/gms/internal/mlkit_common/zzep;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzgp;

    .line 39
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzdx;->zza:Lcom/google/android/gms/internal/mlkit_common/zzdx;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzhy;

    .line 40
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzer;->zza:Lcom/google/android/gms/internal/mlkit_common/zzer;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzhx;

    .line 41
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzeq;->zza:Lcom/google/android/gms/internal/mlkit_common/zzeq;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzhz;

    .line 42
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzes;->zza:Lcom/google/android/gms/internal/mlkit_common/zzes;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzin;

    .line 43
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzff;->zza:Lcom/google/android/gms/internal/mlkit_common/zzff;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzit;

    .line 44
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzfj;->zza:Lcom/google/android/gms/internal/mlkit_common/zzfj;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzfp;

    .line 45
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzda;->zza:Lcom/google/android/gms/internal/mlkit_common/zzda;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzfn;

    .line 46
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzcy;->zza:Lcom/google/android/gms/internal/mlkit_common/zzcy;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzfm;

    .line 47
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzcx;->zza:Lcom/google/android/gms/internal/mlkit_common/zzcx;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzfo;

    .line 48
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzcz;->zza:Lcom/google/android/gms/internal/mlkit_common/zzcz;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzfr;

    .line 49
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzdc;->zza:Lcom/google/android/gms/internal/mlkit_common/zzdc;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzfq;

    .line 50
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzdb;->zza:Lcom/google/android/gms/internal/mlkit_common/zzdb;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzfs;

    .line 51
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzdd;->zza:Lcom/google/android/gms/internal/mlkit_common/zzdd;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzft;

    .line 52
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzde;->zza:Lcom/google/android/gms/internal/mlkit_common/zzde;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzfu;

    .line 53
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzdf;->zza:Lcom/google/android/gms/internal/mlkit_common/zzdf;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzfv;

    .line 54
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzdg;->zza:Lcom/google/android/gms/internal/mlkit_common/zzdg;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzfw;

    .line 55
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzdh;->zza:Lcom/google/android/gms/internal/mlkit_common/zzdh;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzbw;

    .line 56
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzcs;->zza:Lcom/google/android/gms/internal/mlkit_common/zzcs;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzby;

    .line 57
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzcu;->zza:Lcom/google/android/gms/internal/mlkit_common/zzcu;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzbx;

    .line 58
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzct;->zza:Lcom/google/android/gms/internal/mlkit_common/zzct;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzgn;

    .line 59
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzdv;->zza:Lcom/google/android/gms/internal/mlkit_common/zzdv;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzgd;

    .line 60
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzdm;->zza:Lcom/google/android/gms/internal/mlkit_common/zzdm;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzbf;

    .line 61
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzca;->zza:Lcom/google/android/gms/internal/mlkit_common/zzca;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzbe;

    .line 62
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzcb;->zza:Lcom/google/android/gms/internal/mlkit_common/zzcb;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzge;

    .line 63
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzdn;->zza:Lcom/google/android/gms/internal/mlkit_common/zzdn;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzbh;

    .line 64
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzcc;->zza:Lcom/google/android/gms/internal/mlkit_common/zzcc;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzbg;

    .line 65
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzcd;->zza:Lcom/google/android/gms/internal/mlkit_common/zzcd;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzbl;

    .line 66
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzcg;->zza:Lcom/google/android/gms/internal/mlkit_common/zzcg;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzbk;

    .line 67
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzch;->zza:Lcom/google/android/gms/internal/mlkit_common/zzch;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    .line 68
    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzce;->zza:Lcom/google/android/gms/internal/mlkit_common/zzce;

    const-class v1, Lcom/google/android/gms/internal/mlkit_common/zzbj;

    invoke-interface {p1, v1, v0}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzbi;

    .line 69
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzcf;->zza:Lcom/google/android/gms/internal/mlkit_common/zzcf;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzbn;

    .line 70
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzci;->zza:Lcom/google/android/gms/internal/mlkit_common/zzci;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzbm;

    .line 71
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzcj;->zza:Lcom/google/android/gms/internal/mlkit_common/zzcj;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzbp;

    .line 72
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzck;->zza:Lcom/google/android/gms/internal/mlkit_common/zzck;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzbo;

    .line 73
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzcl;->zza:Lcom/google/android/gms/internal/mlkit_common/zzcl;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzbv;

    .line 74
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzcq;->zza:Lcom/google/android/gms/internal/mlkit_common/zzcq;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzbu;

    .line 75
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzcr;->zza:Lcom/google/android/gms/internal/mlkit_common/zzcr;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzbr;

    .line 76
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzcm;->zza:Lcom/google/android/gms/internal/mlkit_common/zzcm;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzbq;

    .line 77
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzcn;->zza:Lcom/google/android/gms/internal/mlkit_common/zzcn;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzbt;

    .line 78
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzco;->zza:Lcom/google/android/gms/internal/mlkit_common/zzco;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzbs;

    .line 79
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzcp;->zza:Lcom/google/android/gms/internal/mlkit_common/zzcp;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzip;

    .line 80
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzfh;->zza:Lcom/google/android/gms/internal/mlkit_common/zzfh;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzgk;

    .line 81
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzdu;->zza:Lcom/google/android/gms/internal/mlkit_common/zzdu;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzgt;

    .line 82
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzdy;->zza:Lcom/google/android/gms/internal/mlkit_common/zzdy;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzfl;

    .line 83
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzcw;->zza:Lcom/google/android/gms/internal/mlkit_common/zzcw;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzgi;

    .line 84
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzds;->zza:Lcom/google/android/gms/internal/mlkit_common/zzds;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzgo;

    .line 85
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzdw;->zza:Lcom/google/android/gms/internal/mlkit_common/zzdw;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzgf;

    .line 86
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzdo;->zza:Lcom/google/android/gms/internal/mlkit_common/zzdo;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzhn;

    .line 87
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzef;->zza:Lcom/google/android/gms/internal/mlkit_common/zzef;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzhm;

    .line 88
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzee;->zza:Lcom/google/android/gms/internal/mlkit_common/zzee;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    const-class v0, Lcom/google/android/gms/internal/mlkit_common/zzbd;

    .line 89
    sget-object v1, Lcom/google/android/gms/internal/mlkit_common/zzbz;->zza:Lcom/google/android/gms/internal/mlkit_common/zzbz;

    invoke-interface {p1, v0, v1}, Lcom/google/firebase/encoders/config/EncoderConfig;->registerEncoder(Ljava/lang/Class;Lcom/google/firebase/encoders/ObjectEncoder;)Lcom/google/firebase/encoders/config/EncoderConfig;

    return-void
.end method
