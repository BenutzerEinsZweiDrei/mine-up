.class final Lcom/google/android/gms/internal/mlkit_common/zzdz;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@17.2.0"

# interfaces
.implements Lcom/google/firebase/encoders/ObjectEncoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/encoders/ObjectEncoder<",
        "Lcom/google/android/gms/internal/mlkit_common/zzgy;",
        ">;"
    }
.end annotation


# static fields
.field private static final zzA:Lcom/google/firebase/encoders/FieldDescriptor;

.field private static final zzB:Lcom/google/firebase/encoders/FieldDescriptor;

.field private static final zzC:Lcom/google/firebase/encoders/FieldDescriptor;

.field private static final zzD:Lcom/google/firebase/encoders/FieldDescriptor;

.field private static final zzE:Lcom/google/firebase/encoders/FieldDescriptor;

.field private static final zzF:Lcom/google/firebase/encoders/FieldDescriptor;

.field private static final zzG:Lcom/google/firebase/encoders/FieldDescriptor;

.field private static final zzH:Lcom/google/firebase/encoders/FieldDescriptor;

.field private static final zzI:Lcom/google/firebase/encoders/FieldDescriptor;

.field private static final zzJ:Lcom/google/firebase/encoders/FieldDescriptor;

.field private static final zzK:Lcom/google/firebase/encoders/FieldDescriptor;

.field private static final zzL:Lcom/google/firebase/encoders/FieldDescriptor;

.field private static final zzM:Lcom/google/firebase/encoders/FieldDescriptor;

.field private static final zzN:Lcom/google/firebase/encoders/FieldDescriptor;

.field private static final zzO:Lcom/google/firebase/encoders/FieldDescriptor;

.field private static final zzP:Lcom/google/firebase/encoders/FieldDescriptor;

.field private static final zzQ:Lcom/google/firebase/encoders/FieldDescriptor;

.field private static final zzR:Lcom/google/firebase/encoders/FieldDescriptor;

.field private static final zzS:Lcom/google/firebase/encoders/FieldDescriptor;

.field private static final zzT:Lcom/google/firebase/encoders/FieldDescriptor;

.field private static final zzU:Lcom/google/firebase/encoders/FieldDescriptor;

.field private static final zzV:Lcom/google/firebase/encoders/FieldDescriptor;

.field private static final zzW:Lcom/google/firebase/encoders/FieldDescriptor;

.field private static final zzX:Lcom/google/firebase/encoders/FieldDescriptor;

.field private static final zzY:Lcom/google/firebase/encoders/FieldDescriptor;

.field private static final zzZ:Lcom/google/firebase/encoders/FieldDescriptor;

.field static final zza:Lcom/google/android/gms/internal/mlkit_common/zzdz;

.field private static final zzaa:Lcom/google/firebase/encoders/FieldDescriptor;

.field private static final zzab:Lcom/google/firebase/encoders/FieldDescriptor;

.field private static final zzac:Lcom/google/firebase/encoders/FieldDescriptor;

.field private static final zzad:Lcom/google/firebase/encoders/FieldDescriptor;

.field private static final zzae:Lcom/google/firebase/encoders/FieldDescriptor;

.field private static final zzaf:Lcom/google/firebase/encoders/FieldDescriptor;

.field private static final zzb:Lcom/google/firebase/encoders/FieldDescriptor;

.field private static final zzc:Lcom/google/firebase/encoders/FieldDescriptor;

.field private static final zzd:Lcom/google/firebase/encoders/FieldDescriptor;

.field private static final zze:Lcom/google/firebase/encoders/FieldDescriptor;

.field private static final zzf:Lcom/google/firebase/encoders/FieldDescriptor;

.field private static final zzg:Lcom/google/firebase/encoders/FieldDescriptor;

.field private static final zzh:Lcom/google/firebase/encoders/FieldDescriptor;

.field private static final zzi:Lcom/google/firebase/encoders/FieldDescriptor;

.field private static final zzj:Lcom/google/firebase/encoders/FieldDescriptor;

.field private static final zzk:Lcom/google/firebase/encoders/FieldDescriptor;

.field private static final zzl:Lcom/google/firebase/encoders/FieldDescriptor;

.field private static final zzm:Lcom/google/firebase/encoders/FieldDescriptor;

.field private static final zzn:Lcom/google/firebase/encoders/FieldDescriptor;

.field private static final zzo:Lcom/google/firebase/encoders/FieldDescriptor;

.field private static final zzp:Lcom/google/firebase/encoders/FieldDescriptor;

.field private static final zzq:Lcom/google/firebase/encoders/FieldDescriptor;

.field private static final zzr:Lcom/google/firebase/encoders/FieldDescriptor;

.field private static final zzs:Lcom/google/firebase/encoders/FieldDescriptor;

.field private static final zzt:Lcom/google/firebase/encoders/FieldDescriptor;

.field private static final zzu:Lcom/google/firebase/encoders/FieldDescriptor;

.field private static final zzv:Lcom/google/firebase/encoders/FieldDescriptor;

.field private static final zzw:Lcom/google/firebase/encoders/FieldDescriptor;

.field private static final zzx:Lcom/google/firebase/encoders/FieldDescriptor;

.field private static final zzy:Lcom/google/firebase/encoders/FieldDescriptor;

.field private static final zzz:Lcom/google/firebase/encoders/FieldDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzdz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_common/zzdz;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zza:Lcom/google/android/gms/internal/mlkit_common/zzdz;

    const-string/jumbo v0, "systemInfo"

    .line 1
    invoke-static {v0}, Lcom/google/firebase/encoders/FieldDescriptor;->builder(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzas;

    .line 2
    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_common/zzas;-><init>()V

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zza(I)Lcom/google/android/gms/internal/mlkit_common/zzas;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zzb()Lcom/google/android/gms/internal/mlkit_common/zzaw;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->withProperty(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->build()Lcom/google/firebase/encoders/FieldDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zzb:Lcom/google/firebase/encoders/FieldDescriptor;

    const-string v0, "eventName"

    .line 6
    invoke-static {v0}, Lcom/google/firebase/encoders/FieldDescriptor;->builder(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzas;

    .line 7
    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_common/zzas;-><init>()V

    const/4 v2, 0x2

    .line 8
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zza(I)Lcom/google/android/gms/internal/mlkit_common/zzas;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zzb()Lcom/google/android/gms/internal/mlkit_common/zzaw;

    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->withProperty(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->build()Lcom/google/firebase/encoders/FieldDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zzc:Lcom/google/firebase/encoders/FieldDescriptor;

    const-string v0, "isThickClient"

    .line 11
    invoke-static {v0}, Lcom/google/firebase/encoders/FieldDescriptor;->builder(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzas;

    .line 12
    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_common/zzas;-><init>()V

    const/16 v2, 0x25

    .line 13
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zza(I)Lcom/google/android/gms/internal/mlkit_common/zzas;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zzb()Lcom/google/android/gms/internal/mlkit_common/zzaw;

    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->withProperty(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->build()Lcom/google/firebase/encoders/FieldDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zzd:Lcom/google/firebase/encoders/FieldDescriptor;

    const-string v0, "modelDownloadLogEvent"

    .line 16
    invoke-static {v0}, Lcom/google/firebase/encoders/FieldDescriptor;->builder(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzas;

    .line 17
    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_common/zzas;-><init>()V

    const/4 v2, 0x3

    .line 18
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zza(I)Lcom/google/android/gms/internal/mlkit_common/zzas;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zzb()Lcom/google/android/gms/internal/mlkit_common/zzaw;

    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->withProperty(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->build()Lcom/google/firebase/encoders/FieldDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zze:Lcom/google/firebase/encoders/FieldDescriptor;

    const-string v0, "customModelLoadLogEvent"

    .line 21
    invoke-static {v0}, Lcom/google/firebase/encoders/FieldDescriptor;->builder(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzas;

    .line 22
    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_common/zzas;-><init>()V

    const/16 v2, 0x14

    .line 23
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zza(I)Lcom/google/android/gms/internal/mlkit_common/zzas;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zzb()Lcom/google/android/gms/internal/mlkit_common/zzaw;

    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->withProperty(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->build()Lcom/google/firebase/encoders/FieldDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zzf:Lcom/google/firebase/encoders/FieldDescriptor;

    const-string v0, "customModelInferenceLogEvent"

    .line 26
    invoke-static {v0}, Lcom/google/firebase/encoders/FieldDescriptor;->builder(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzas;

    .line 27
    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_common/zzas;-><init>()V

    const/4 v2, 0x4

    .line 28
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zza(I)Lcom/google/android/gms/internal/mlkit_common/zzas;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zzb()Lcom/google/android/gms/internal/mlkit_common/zzaw;

    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->withProperty(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->build()Lcom/google/firebase/encoders/FieldDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zzg:Lcom/google/firebase/encoders/FieldDescriptor;

    const-string v0, "customModelCreateLogEvent"

    .line 31
    invoke-static {v0}, Lcom/google/firebase/encoders/FieldDescriptor;->builder(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzas;

    .line 32
    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_common/zzas;-><init>()V

    const/16 v2, 0x1d

    .line 33
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zza(I)Lcom/google/android/gms/internal/mlkit_common/zzas;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zzb()Lcom/google/android/gms/internal/mlkit_common/zzaw;

    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->withProperty(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->build()Lcom/google/firebase/encoders/FieldDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zzh:Lcom/google/firebase/encoders/FieldDescriptor;

    const-string v0, "onDeviceFaceDetectionLogEvent"

    .line 36
    invoke-static {v0}, Lcom/google/firebase/encoders/FieldDescriptor;->builder(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzas;

    .line 37
    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_common/zzas;-><init>()V

    const/4 v2, 0x5

    .line 38
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zza(I)Lcom/google/android/gms/internal/mlkit_common/zzas;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zzb()Lcom/google/android/gms/internal/mlkit_common/zzaw;

    move-result-object v1

    .line 39
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->withProperty(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->build()Lcom/google/firebase/encoders/FieldDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zzi:Lcom/google/firebase/encoders/FieldDescriptor;

    const-string v0, "onDeviceFaceLoadLogEvent"

    .line 41
    invoke-static {v0}, Lcom/google/firebase/encoders/FieldDescriptor;->builder(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzas;

    .line 42
    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_common/zzas;-><init>()V

    const/16 v2, 0x3b

    .line 43
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zza(I)Lcom/google/android/gms/internal/mlkit_common/zzas;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zzb()Lcom/google/android/gms/internal/mlkit_common/zzaw;

    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->withProperty(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->build()Lcom/google/firebase/encoders/FieldDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zzj:Lcom/google/firebase/encoders/FieldDescriptor;

    const-string v0, "onDeviceTextDetectionLogEvent"

    .line 46
    invoke-static {v0}, Lcom/google/firebase/encoders/FieldDescriptor;->builder(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzas;

    .line 47
    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_common/zzas;-><init>()V

    const/4 v2, 0x6

    .line 48
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zza(I)Lcom/google/android/gms/internal/mlkit_common/zzas;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zzb()Lcom/google/android/gms/internal/mlkit_common/zzaw;

    move-result-object v1

    .line 49
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->withProperty(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->build()Lcom/google/firebase/encoders/FieldDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zzk:Lcom/google/firebase/encoders/FieldDescriptor;

    const-string v0, "onDeviceBarcodeDetectionLogEvent"

    .line 51
    invoke-static {v0}, Lcom/google/firebase/encoders/FieldDescriptor;->builder(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzas;

    .line 52
    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_common/zzas;-><init>()V

    const/4 v2, 0x7

    .line 53
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zza(I)Lcom/google/android/gms/internal/mlkit_common/zzas;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zzb()Lcom/google/android/gms/internal/mlkit_common/zzaw;

    move-result-object v1

    .line 54
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->withProperty(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->build()Lcom/google/firebase/encoders/FieldDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zzl:Lcom/google/firebase/encoders/FieldDescriptor;

    const-string v0, "onDeviceBarcodeLoadLogEvent"

    .line 56
    invoke-static {v0}, Lcom/google/firebase/encoders/FieldDescriptor;->builder(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzas;

    .line 57
    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_common/zzas;-><init>()V

    const/16 v2, 0x3a

    .line 58
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zza(I)Lcom/google/android/gms/internal/mlkit_common/zzas;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zzb()Lcom/google/android/gms/internal/mlkit_common/zzaw;

    move-result-object v1

    .line 59
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->withProperty(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->build()Lcom/google/firebase/encoders/FieldDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zzm:Lcom/google/firebase/encoders/FieldDescriptor;

    const-string v0, "onDeviceImageLabelCreateLogEvent"

    .line 61
    invoke-static {v0}, Lcom/google/firebase/encoders/FieldDescriptor;->builder(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzas;

    .line 62
    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_common/zzas;-><init>()V

    const/16 v2, 0x30

    .line 63
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zza(I)Lcom/google/android/gms/internal/mlkit_common/zzas;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zzb()Lcom/google/android/gms/internal/mlkit_common/zzaw;

    move-result-object v1

    .line 64
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->withProperty(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->build()Lcom/google/firebase/encoders/FieldDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zzn:Lcom/google/firebase/encoders/FieldDescriptor;

    const-string v0, "onDeviceImageLabelLoadLogEvent"

    .line 66
    invoke-static {v0}, Lcom/google/firebase/encoders/FieldDescriptor;->builder(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzas;

    .line 67
    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_common/zzas;-><init>()V

    const/16 v2, 0x31

    .line 68
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zza(I)Lcom/google/android/gms/internal/mlkit_common/zzas;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zzb()Lcom/google/android/gms/internal/mlkit_common/zzaw;

    move-result-object v1

    .line 69
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->withProperty(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->build()Lcom/google/firebase/encoders/FieldDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zzo:Lcom/google/firebase/encoders/FieldDescriptor;

    const-string v0, "onDeviceImageLabelDetectionLogEvent"

    .line 71
    invoke-static {v0}, Lcom/google/firebase/encoders/FieldDescriptor;->builder(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzas;

    .line 72
    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_common/zzas;-><init>()V

    const/16 v2, 0x12

    .line 73
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zza(I)Lcom/google/android/gms/internal/mlkit_common/zzas;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zzb()Lcom/google/android/gms/internal/mlkit_common/zzaw;

    move-result-object v1

    .line 74
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->withProperty(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->build()Lcom/google/firebase/encoders/FieldDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zzp:Lcom/google/firebase/encoders/FieldDescriptor;

    const-string v0, "onDeviceObjectCreateLogEvent"

    .line 76
    invoke-static {v0}, Lcom/google/firebase/encoders/FieldDescriptor;->builder(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzas;

    .line 77
    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_common/zzas;-><init>()V

    const/16 v2, 0x1a

    .line 78
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zza(I)Lcom/google/android/gms/internal/mlkit_common/zzas;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zzb()Lcom/google/android/gms/internal/mlkit_common/zzaw;

    move-result-object v1

    .line 79
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->withProperty(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->build()Lcom/google/firebase/encoders/FieldDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zzq:Lcom/google/firebase/encoders/FieldDescriptor;

    const-string v0, "onDeviceObjectLoadLogEvent"

    .line 81
    invoke-static {v0}, Lcom/google/firebase/encoders/FieldDescriptor;->builder(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzas;

    .line 82
    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_common/zzas;-><init>()V

    const/16 v2, 0x1b

    .line 83
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zza(I)Lcom/google/android/gms/internal/mlkit_common/zzas;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zzb()Lcom/google/android/gms/internal/mlkit_common/zzaw;

    move-result-object v1

    .line 84
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->withProperty(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->build()Lcom/google/firebase/encoders/FieldDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zzr:Lcom/google/firebase/encoders/FieldDescriptor;

    const-string v0, "onDeviceObjectInferenceLogEvent"

    .line 86
    invoke-static {v0}, Lcom/google/firebase/encoders/FieldDescriptor;->builder(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzas;

    .line 87
    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_common/zzas;-><init>()V

    const/16 v2, 0x1c

    .line 88
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zza(I)Lcom/google/android/gms/internal/mlkit_common/zzas;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zzb()Lcom/google/android/gms/internal/mlkit_common/zzaw;

    move-result-object v1

    .line 89
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->withProperty(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->build()Lcom/google/firebase/encoders/FieldDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zzs:Lcom/google/firebase/encoders/FieldDescriptor;

    const-string v0, "onDevicePoseDetectionLogEvent"

    .line 91
    invoke-static {v0}, Lcom/google/firebase/encoders/FieldDescriptor;->builder(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzas;

    .line 92
    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_common/zzas;-><init>()V

    const/16 v2, 0x2c

    .line 93
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zza(I)Lcom/google/android/gms/internal/mlkit_common/zzas;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zzb()Lcom/google/android/gms/internal/mlkit_common/zzaw;

    move-result-object v1

    .line 94
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->withProperty(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->build()Lcom/google/firebase/encoders/FieldDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zzt:Lcom/google/firebase/encoders/FieldDescriptor;

    const-string v0, "onDeviceSegmentationLogEvent"

    .line 96
    invoke-static {v0}, Lcom/google/firebase/encoders/FieldDescriptor;->builder(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzas;

    .line 97
    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_common/zzas;-><init>()V

    const/16 v2, 0x2d

    .line 98
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zza(I)Lcom/google/android/gms/internal/mlkit_common/zzas;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zzb()Lcom/google/android/gms/internal/mlkit_common/zzaw;

    move-result-object v1

    .line 99
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->withProperty(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->build()Lcom/google/firebase/encoders/FieldDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zzu:Lcom/google/firebase/encoders/FieldDescriptor;

    const-string v0, "onDeviceSmartReplyLogEvent"

    .line 101
    invoke-static {v0}, Lcom/google/firebase/encoders/FieldDescriptor;->builder(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzas;

    .line 102
    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_common/zzas;-><init>()V

    const/16 v2, 0x13

    .line 103
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zza(I)Lcom/google/android/gms/internal/mlkit_common/zzas;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zzb()Lcom/google/android/gms/internal/mlkit_common/zzaw;

    move-result-object v1

    .line 104
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->withProperty(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    .line 105
    invoke-virtual {v0}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->build()Lcom/google/firebase/encoders/FieldDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zzv:Lcom/google/firebase/encoders/FieldDescriptor;

    const-string v0, "onDeviceLanguageIdentificationLogEvent"

    .line 106
    invoke-static {v0}, Lcom/google/firebase/encoders/FieldDescriptor;->builder(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzas;

    .line 107
    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_common/zzas;-><init>()V

    const/16 v2, 0x15

    .line 108
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zza(I)Lcom/google/android/gms/internal/mlkit_common/zzas;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zzb()Lcom/google/android/gms/internal/mlkit_common/zzaw;

    move-result-object v1

    .line 109
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->withProperty(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->build()Lcom/google/firebase/encoders/FieldDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zzw:Lcom/google/firebase/encoders/FieldDescriptor;

    const-string v0, "onDeviceTranslationLogEvent"

    .line 111
    invoke-static {v0}, Lcom/google/firebase/encoders/FieldDescriptor;->builder(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzas;

    .line 112
    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_common/zzas;-><init>()V

    const/16 v2, 0x16

    .line 113
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zza(I)Lcom/google/android/gms/internal/mlkit_common/zzas;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zzb()Lcom/google/android/gms/internal/mlkit_common/zzaw;

    move-result-object v1

    .line 114
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->withProperty(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    .line 115
    invoke-virtual {v0}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->build()Lcom/google/firebase/encoders/FieldDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zzx:Lcom/google/firebase/encoders/FieldDescriptor;

    const-string v0, "cloudFaceDetectionLogEvent"

    .line 116
    invoke-static {v0}, Lcom/google/firebase/encoders/FieldDescriptor;->builder(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzas;

    .line 117
    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_common/zzas;-><init>()V

    const/16 v2, 0x8

    .line 118
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zza(I)Lcom/google/android/gms/internal/mlkit_common/zzas;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zzb()Lcom/google/android/gms/internal/mlkit_common/zzaw;

    move-result-object v1

    .line 119
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->withProperty(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    .line 120
    invoke-virtual {v0}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->build()Lcom/google/firebase/encoders/FieldDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zzy:Lcom/google/firebase/encoders/FieldDescriptor;

    const-string v0, "cloudCropHintDetectionLogEvent"

    .line 121
    invoke-static {v0}, Lcom/google/firebase/encoders/FieldDescriptor;->builder(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzas;

    .line 122
    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_common/zzas;-><init>()V

    const/16 v2, 0x9

    .line 123
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zza(I)Lcom/google/android/gms/internal/mlkit_common/zzas;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zzb()Lcom/google/android/gms/internal/mlkit_common/zzaw;

    move-result-object v1

    .line 124
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->withProperty(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    .line 125
    invoke-virtual {v0}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->build()Lcom/google/firebase/encoders/FieldDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zzz:Lcom/google/firebase/encoders/FieldDescriptor;

    const-string v0, "cloudDocumentTextDetectionLogEvent"

    .line 126
    invoke-static {v0}, Lcom/google/firebase/encoders/FieldDescriptor;->builder(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzas;

    .line 127
    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_common/zzas;-><init>()V

    const/16 v2, 0xa

    .line 128
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zza(I)Lcom/google/android/gms/internal/mlkit_common/zzas;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zzb()Lcom/google/android/gms/internal/mlkit_common/zzaw;

    move-result-object v1

    .line 129
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->withProperty(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    .line 130
    invoke-virtual {v0}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->build()Lcom/google/firebase/encoders/FieldDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zzA:Lcom/google/firebase/encoders/FieldDescriptor;

    const-string v0, "cloudImagePropertiesDetectionLogEvent"

    .line 131
    invoke-static {v0}, Lcom/google/firebase/encoders/FieldDescriptor;->builder(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzas;

    .line 132
    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_common/zzas;-><init>()V

    const/16 v2, 0xb

    .line 133
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zza(I)Lcom/google/android/gms/internal/mlkit_common/zzas;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zzb()Lcom/google/android/gms/internal/mlkit_common/zzaw;

    move-result-object v1

    .line 134
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->withProperty(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    .line 135
    invoke-virtual {v0}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->build()Lcom/google/firebase/encoders/FieldDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zzB:Lcom/google/firebase/encoders/FieldDescriptor;

    const-string v0, "cloudImageLabelDetectionLogEvent"

    .line 136
    invoke-static {v0}, Lcom/google/firebase/encoders/FieldDescriptor;->builder(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzas;

    .line 137
    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_common/zzas;-><init>()V

    const/16 v2, 0xc

    .line 138
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zza(I)Lcom/google/android/gms/internal/mlkit_common/zzas;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zzb()Lcom/google/android/gms/internal/mlkit_common/zzaw;

    move-result-object v1

    .line 139
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->withProperty(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    .line 140
    invoke-virtual {v0}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->build()Lcom/google/firebase/encoders/FieldDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zzC:Lcom/google/firebase/encoders/FieldDescriptor;

    const-string v0, "cloudLandmarkDetectionLogEvent"

    .line 141
    invoke-static {v0}, Lcom/google/firebase/encoders/FieldDescriptor;->builder(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzas;

    .line 142
    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_common/zzas;-><init>()V

    const/16 v2, 0xd

    .line 143
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zza(I)Lcom/google/android/gms/internal/mlkit_common/zzas;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zzb()Lcom/google/android/gms/internal/mlkit_common/zzaw;

    move-result-object v1

    .line 144
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->withProperty(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    .line 145
    invoke-virtual {v0}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->build()Lcom/google/firebase/encoders/FieldDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zzD:Lcom/google/firebase/encoders/FieldDescriptor;

    const-string v0, "cloudLogoDetectionLogEvent"

    .line 146
    invoke-static {v0}, Lcom/google/firebase/encoders/FieldDescriptor;->builder(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzas;

    .line 147
    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_common/zzas;-><init>()V

    const/16 v2, 0xe

    .line 148
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zza(I)Lcom/google/android/gms/internal/mlkit_common/zzas;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zzb()Lcom/google/android/gms/internal/mlkit_common/zzaw;

    move-result-object v1

    .line 149
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->withProperty(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    .line 150
    invoke-virtual {v0}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->build()Lcom/google/firebase/encoders/FieldDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zzE:Lcom/google/firebase/encoders/FieldDescriptor;

    const-string v0, "cloudSafeSearchDetectionLogEvent"

    .line 151
    invoke-static {v0}, Lcom/google/firebase/encoders/FieldDescriptor;->builder(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzas;

    .line 152
    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_common/zzas;-><init>()V

    const/16 v2, 0xf

    .line 153
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zza(I)Lcom/google/android/gms/internal/mlkit_common/zzas;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zzb()Lcom/google/android/gms/internal/mlkit_common/zzaw;

    move-result-object v1

    .line 154
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->withProperty(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    .line 155
    invoke-virtual {v0}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->build()Lcom/google/firebase/encoders/FieldDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zzF:Lcom/google/firebase/encoders/FieldDescriptor;

    const-string v0, "cloudTextDetectionLogEvent"

    .line 156
    invoke-static {v0}, Lcom/google/firebase/encoders/FieldDescriptor;->builder(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzas;

    .line 157
    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_common/zzas;-><init>()V

    const/16 v2, 0x10

    .line 158
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zza(I)Lcom/google/android/gms/internal/mlkit_common/zzas;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zzb()Lcom/google/android/gms/internal/mlkit_common/zzaw;

    move-result-object v1

    .line 159
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->withProperty(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    .line 160
    invoke-virtual {v0}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->build()Lcom/google/firebase/encoders/FieldDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zzG:Lcom/google/firebase/encoders/FieldDescriptor;

    const-string v0, "cloudWebSearchDetectionLogEvent"

    .line 161
    invoke-static {v0}, Lcom/google/firebase/encoders/FieldDescriptor;->builder(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzas;

    .line 162
    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_common/zzas;-><init>()V

    const/16 v2, 0x11

    .line 163
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zza(I)Lcom/google/android/gms/internal/mlkit_common/zzas;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zzb()Lcom/google/android/gms/internal/mlkit_common/zzaw;

    move-result-object v1

    .line 164
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->withProperty(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    .line 165
    invoke-virtual {v0}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->build()Lcom/google/firebase/encoders/FieldDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zzH:Lcom/google/firebase/encoders/FieldDescriptor;

    const-string v0, "automlImageLabelingCreateLogEvent"

    .line 166
    invoke-static {v0}, Lcom/google/firebase/encoders/FieldDescriptor;->builder(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzas;

    .line 167
    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_common/zzas;-><init>()V

    const/16 v2, 0x17

    .line 168
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zza(I)Lcom/google/android/gms/internal/mlkit_common/zzas;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zzb()Lcom/google/android/gms/internal/mlkit_common/zzaw;

    move-result-object v1

    .line 169
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->withProperty(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    .line 170
    invoke-virtual {v0}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->build()Lcom/google/firebase/encoders/FieldDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zzI:Lcom/google/firebase/encoders/FieldDescriptor;

    const-string v0, "automlImageLabelingLoadLogEvent"

    .line 171
    invoke-static {v0}, Lcom/google/firebase/encoders/FieldDescriptor;->builder(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzas;

    .line 172
    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_common/zzas;-><init>()V

    const/16 v2, 0x18

    .line 173
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zza(I)Lcom/google/android/gms/internal/mlkit_common/zzas;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zzb()Lcom/google/android/gms/internal/mlkit_common/zzaw;

    move-result-object v1

    .line 174
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->withProperty(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    .line 175
    invoke-virtual {v0}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->build()Lcom/google/firebase/encoders/FieldDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zzJ:Lcom/google/firebase/encoders/FieldDescriptor;

    const-string v0, "automlImageLabelingInferenceLogEvent"

    .line 176
    invoke-static {v0}, Lcom/google/firebase/encoders/FieldDescriptor;->builder(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzas;

    .line 177
    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_common/zzas;-><init>()V

    const/16 v2, 0x19

    .line 178
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zza(I)Lcom/google/android/gms/internal/mlkit_common/zzas;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zzb()Lcom/google/android/gms/internal/mlkit_common/zzaw;

    move-result-object v1

    .line 179
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->withProperty(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    .line 180
    invoke-virtual {v0}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->build()Lcom/google/firebase/encoders/FieldDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zzK:Lcom/google/firebase/encoders/FieldDescriptor;

    const-string v0, "isModelDownloadedLogEvent"

    .line 181
    invoke-static {v0}, Lcom/google/firebase/encoders/FieldDescriptor;->builder(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzas;

    .line 182
    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_common/zzas;-><init>()V

    const/16 v2, 0x27

    .line 183
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zza(I)Lcom/google/android/gms/internal/mlkit_common/zzas;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zzb()Lcom/google/android/gms/internal/mlkit_common/zzaw;

    move-result-object v1

    .line 184
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->withProperty(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    .line 185
    invoke-virtual {v0}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->build()Lcom/google/firebase/encoders/FieldDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zzL:Lcom/google/firebase/encoders/FieldDescriptor;

    const-string v0, "deleteModelLogEvent"

    .line 186
    invoke-static {v0}, Lcom/google/firebase/encoders/FieldDescriptor;->builder(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzas;

    .line 187
    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_common/zzas;-><init>()V

    const/16 v2, 0x28

    .line 188
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zza(I)Lcom/google/android/gms/internal/mlkit_common/zzas;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zzb()Lcom/google/android/gms/internal/mlkit_common/zzaw;

    move-result-object v1

    .line 189
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->withProperty(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    .line 190
    invoke-virtual {v0}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->build()Lcom/google/firebase/encoders/FieldDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zzM:Lcom/google/firebase/encoders/FieldDescriptor;

    const-string v0, "aggregatedAutomlImageLabelingInferenceLogEvent"

    .line 191
    invoke-static {v0}, Lcom/google/firebase/encoders/FieldDescriptor;->builder(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzas;

    .line 192
    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_common/zzas;-><init>()V

    const/16 v2, 0x1e

    .line 193
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zza(I)Lcom/google/android/gms/internal/mlkit_common/zzas;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zzb()Lcom/google/android/gms/internal/mlkit_common/zzaw;

    move-result-object v1

    .line 194
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->withProperty(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    .line 195
    invoke-virtual {v0}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->build()Lcom/google/firebase/encoders/FieldDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zzN:Lcom/google/firebase/encoders/FieldDescriptor;

    const-string v0, "aggregatedCustomModelInferenceLogEvent"

    .line 196
    invoke-static {v0}, Lcom/google/firebase/encoders/FieldDescriptor;->builder(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzas;

    .line 197
    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_common/zzas;-><init>()V

    const/16 v2, 0x1f

    .line 198
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zza(I)Lcom/google/android/gms/internal/mlkit_common/zzas;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zzb()Lcom/google/android/gms/internal/mlkit_common/zzaw;

    move-result-object v1

    .line 199
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->withProperty(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    .line 200
    invoke-virtual {v0}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->build()Lcom/google/firebase/encoders/FieldDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zzO:Lcom/google/firebase/encoders/FieldDescriptor;

    const-string v0, "aggregatedOnDeviceFaceDetectionLogEvent"

    .line 201
    invoke-static {v0}, Lcom/google/firebase/encoders/FieldDescriptor;->builder(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzas;

    .line 202
    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_common/zzas;-><init>()V

    const/16 v2, 0x20

    .line 203
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zza(I)Lcom/google/android/gms/internal/mlkit_common/zzas;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zzb()Lcom/google/android/gms/internal/mlkit_common/zzaw;

    move-result-object v1

    .line 204
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->withProperty(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    .line 205
    invoke-virtual {v0}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->build()Lcom/google/firebase/encoders/FieldDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zzP:Lcom/google/firebase/encoders/FieldDescriptor;

    const-string v0, "aggregatedOnDeviceBarcodeDetectionLogEvent"

    .line 206
    invoke-static {v0}, Lcom/google/firebase/encoders/FieldDescriptor;->builder(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzas;

    .line 207
    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_common/zzas;-><init>()V

    const/16 v2, 0x21

    .line 208
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zza(I)Lcom/google/android/gms/internal/mlkit_common/zzas;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zzb()Lcom/google/android/gms/internal/mlkit_common/zzaw;

    move-result-object v1

    .line 209
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->withProperty(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    .line 210
    invoke-virtual {v0}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->build()Lcom/google/firebase/encoders/FieldDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zzQ:Lcom/google/firebase/encoders/FieldDescriptor;

    const-string v0, "aggregatedOnDeviceImageLabelDetectionLogEvent"

    .line 211
    invoke-static {v0}, Lcom/google/firebase/encoders/FieldDescriptor;->builder(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzas;

    .line 212
    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_common/zzas;-><init>()V

    const/16 v2, 0x22

    .line 213
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zza(I)Lcom/google/android/gms/internal/mlkit_common/zzas;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zzb()Lcom/google/android/gms/internal/mlkit_common/zzaw;

    move-result-object v1

    .line 214
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->withProperty(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    .line 215
    invoke-virtual {v0}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->build()Lcom/google/firebase/encoders/FieldDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zzR:Lcom/google/firebase/encoders/FieldDescriptor;

    const-string v0, "aggregatedOnDeviceObjectInferenceLogEvent"

    .line 216
    invoke-static {v0}, Lcom/google/firebase/encoders/FieldDescriptor;->builder(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzas;

    .line 217
    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_common/zzas;-><init>()V

    const/16 v2, 0x23

    .line 218
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zza(I)Lcom/google/android/gms/internal/mlkit_common/zzas;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zzb()Lcom/google/android/gms/internal/mlkit_common/zzaw;

    move-result-object v1

    .line 219
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->withProperty(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    .line 220
    invoke-virtual {v0}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->build()Lcom/google/firebase/encoders/FieldDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zzS:Lcom/google/firebase/encoders/FieldDescriptor;

    const-string v0, "aggregatedOnDeviceTextDetectionLogEvent"

    .line 221
    invoke-static {v0}, Lcom/google/firebase/encoders/FieldDescriptor;->builder(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzas;

    .line 222
    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_common/zzas;-><init>()V

    const/16 v2, 0x24

    .line 223
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zza(I)Lcom/google/android/gms/internal/mlkit_common/zzas;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zzb()Lcom/google/android/gms/internal/mlkit_common/zzaw;

    move-result-object v1

    .line 224
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->withProperty(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    .line 225
    invoke-virtual {v0}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->build()Lcom/google/firebase/encoders/FieldDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zzT:Lcom/google/firebase/encoders/FieldDescriptor;

    const-string v0, "aggregatedOnDevicePoseDetectionLogEvent"

    .line 226
    invoke-static {v0}, Lcom/google/firebase/encoders/FieldDescriptor;->builder(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzas;

    .line 227
    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_common/zzas;-><init>()V

    const/16 v2, 0x2e

    .line 228
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zza(I)Lcom/google/android/gms/internal/mlkit_common/zzas;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zzb()Lcom/google/android/gms/internal/mlkit_common/zzaw;

    move-result-object v1

    .line 229
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->withProperty(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    .line 230
    invoke-virtual {v0}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->build()Lcom/google/firebase/encoders/FieldDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zzU:Lcom/google/firebase/encoders/FieldDescriptor;

    const-string v0, "aggregatedOnDeviceSegmentationLogEvent"

    .line 231
    invoke-static {v0}, Lcom/google/firebase/encoders/FieldDescriptor;->builder(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzas;

    .line 232
    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_common/zzas;-><init>()V

    const/16 v2, 0x2f

    .line 233
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zza(I)Lcom/google/android/gms/internal/mlkit_common/zzas;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zzb()Lcom/google/android/gms/internal/mlkit_common/zzaw;

    move-result-object v1

    .line 234
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->withProperty(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    .line 235
    invoke-virtual {v0}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->build()Lcom/google/firebase/encoders/FieldDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zzV:Lcom/google/firebase/encoders/FieldDescriptor;

    const-string v0, "remoteConfigLogEvent"

    .line 236
    invoke-static {v0}, Lcom/google/firebase/encoders/FieldDescriptor;->builder(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzas;

    .line 237
    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_common/zzas;-><init>()V

    const/16 v2, 0x2a

    .line 238
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zza(I)Lcom/google/android/gms/internal/mlkit_common/zzas;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zzb()Lcom/google/android/gms/internal/mlkit_common/zzaw;

    move-result-object v1

    .line 239
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->withProperty(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    .line 240
    invoke-virtual {v0}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->build()Lcom/google/firebase/encoders/FieldDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zzW:Lcom/google/firebase/encoders/FieldDescriptor;

    const-string v0, "inputImageConstructionLogEvent"

    .line 241
    invoke-static {v0}, Lcom/google/firebase/encoders/FieldDescriptor;->builder(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzas;

    .line 242
    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_common/zzas;-><init>()V

    const/16 v2, 0x32

    .line 243
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zza(I)Lcom/google/android/gms/internal/mlkit_common/zzas;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zzb()Lcom/google/android/gms/internal/mlkit_common/zzaw;

    move-result-object v1

    .line 244
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->withProperty(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    .line 245
    invoke-virtual {v0}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->build()Lcom/google/firebase/encoders/FieldDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zzX:Lcom/google/firebase/encoders/FieldDescriptor;

    const-string v0, "leakedHandleEvent"

    .line 246
    invoke-static {v0}, Lcom/google/firebase/encoders/FieldDescriptor;->builder(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzas;

    .line 247
    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_common/zzas;-><init>()V

    const/16 v2, 0x33

    .line 248
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zza(I)Lcom/google/android/gms/internal/mlkit_common/zzas;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zzb()Lcom/google/android/gms/internal/mlkit_common/zzaw;

    move-result-object v1

    .line 249
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->withProperty(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    .line 250
    invoke-virtual {v0}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->build()Lcom/google/firebase/encoders/FieldDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zzY:Lcom/google/firebase/encoders/FieldDescriptor;

    const-string v0, "cameraSourceLogEvent"

    .line 251
    invoke-static {v0}, Lcom/google/firebase/encoders/FieldDescriptor;->builder(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzas;

    .line 252
    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_common/zzas;-><init>()V

    const/16 v2, 0x34

    .line 253
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zza(I)Lcom/google/android/gms/internal/mlkit_common/zzas;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zzb()Lcom/google/android/gms/internal/mlkit_common/zzaw;

    move-result-object v1

    .line 254
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->withProperty(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    .line 255
    invoke-virtual {v0}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->build()Lcom/google/firebase/encoders/FieldDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zzZ:Lcom/google/firebase/encoders/FieldDescriptor;

    const-string v0, "imageLabelOptionalModuleLogEvent"

    .line 256
    invoke-static {v0}, Lcom/google/firebase/encoders/FieldDescriptor;->builder(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzas;

    .line 257
    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_common/zzas;-><init>()V

    const/16 v2, 0x35

    .line 258
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zza(I)Lcom/google/android/gms/internal/mlkit_common/zzas;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zzb()Lcom/google/android/gms/internal/mlkit_common/zzaw;

    move-result-object v1

    .line 259
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->withProperty(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    .line 260
    invoke-virtual {v0}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->build()Lcom/google/firebase/encoders/FieldDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zzaa:Lcom/google/firebase/encoders/FieldDescriptor;

    const-string v0, "languageIdentificationOptionalModuleLogEvent"

    .line 261
    invoke-static {v0}, Lcom/google/firebase/encoders/FieldDescriptor;->builder(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzas;

    .line 262
    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_common/zzas;-><init>()V

    const/16 v2, 0x36

    .line 263
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zza(I)Lcom/google/android/gms/internal/mlkit_common/zzas;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zzb()Lcom/google/android/gms/internal/mlkit_common/zzaw;

    move-result-object v1

    .line 264
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->withProperty(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    .line 265
    invoke-virtual {v0}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->build()Lcom/google/firebase/encoders/FieldDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zzab:Lcom/google/firebase/encoders/FieldDescriptor;

    const-string v0, "faceDetectionOptionalModuleLogEvent"

    .line 266
    invoke-static {v0}, Lcom/google/firebase/encoders/FieldDescriptor;->builder(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzas;

    .line 267
    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_common/zzas;-><init>()V

    const/16 v2, 0x3c

    .line 268
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zza(I)Lcom/google/android/gms/internal/mlkit_common/zzas;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zzb()Lcom/google/android/gms/internal/mlkit_common/zzaw;

    move-result-object v1

    .line 269
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->withProperty(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    .line 270
    invoke-virtual {v0}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->build()Lcom/google/firebase/encoders/FieldDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zzac:Lcom/google/firebase/encoders/FieldDescriptor;

    const-string v0, "nlClassifierOptionalModuleLogEvent"

    .line 271
    invoke-static {v0}, Lcom/google/firebase/encoders/FieldDescriptor;->builder(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzas;

    .line 272
    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_common/zzas;-><init>()V

    const/16 v2, 0x37

    .line 273
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zza(I)Lcom/google/android/gms/internal/mlkit_common/zzas;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zzb()Lcom/google/android/gms/internal/mlkit_common/zzaw;

    move-result-object v1

    .line 274
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->withProperty(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    .line 275
    invoke-virtual {v0}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->build()Lcom/google/firebase/encoders/FieldDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zzad:Lcom/google/firebase/encoders/FieldDescriptor;

    const-string v0, "nlClassifierClientLibraryLogEvent"

    .line 276
    invoke-static {v0}, Lcom/google/firebase/encoders/FieldDescriptor;->builder(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzas;

    .line 277
    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_common/zzas;-><init>()V

    const/16 v2, 0x38

    .line 278
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zza(I)Lcom/google/android/gms/internal/mlkit_common/zzas;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zzb()Lcom/google/android/gms/internal/mlkit_common/zzaw;

    move-result-object v1

    .line 279
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->withProperty(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    .line 280
    invoke-virtual {v0}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->build()Lcom/google/firebase/encoders/FieldDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zzae:Lcom/google/firebase/encoders/FieldDescriptor;

    const-string v0, "accelerationAllowlistLogEvent"

    .line 281
    invoke-static {v0}, Lcom/google/firebase/encoders/FieldDescriptor;->builder(Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzas;

    .line 282
    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_common/zzas;-><init>()V

    const/16 v2, 0x39

    .line 283
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zza(I)Lcom/google/android/gms/internal/mlkit_common/zzas;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_common/zzas;->zzb()Lcom/google/android/gms/internal/mlkit_common/zzaw;

    move-result-object v1

    .line 284
    invoke-virtual {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->withProperty(Ljava/lang/annotation/Annotation;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    move-result-object v0

    .line 285
    invoke-virtual {v0}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;->build()Lcom/google/firebase/encoders/FieldDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zzaf:Lcom/google/firebase/encoders/FieldDescriptor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic encode(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/mlkit_common/zzgy;

    check-cast p2, Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zzb:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_common/zzgy;->zzf()Lcom/google/android/gms/internal/mlkit_common/zzis;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zzc:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_common/zzgy;->zzd()Lcom/google/android/gms/internal/mlkit_common/zzgv;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zzd:Lcom/google/firebase/encoders/FieldDescriptor;

    const/4 v1, 0x0

    .line 4
    invoke-interface {p2, v0, v1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zze:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_common/zzgy;->zze()Lcom/google/android/gms/internal/mlkit_common/zzhc;

    move-result-object v2

    invoke-interface {p2, v0, v2}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zzf:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 6
    invoke-interface {p2, v0, v1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zzg:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 7
    invoke-interface {p2, v0, v1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zzh:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 8
    invoke-interface {p2, v0, v1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zzi:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 9
    invoke-interface {p2, v0, v1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zzj:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 10
    invoke-interface {p2, v0, v1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zzk:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 11
    invoke-interface {p2, v0, v1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zzl:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 12
    invoke-interface {p2, v0, v1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zzm:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 13
    invoke-interface {p2, v0, v1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zzn:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 14
    invoke-interface {p2, v0, v1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zzo:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 15
    invoke-interface {p2, v0, v1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zzp:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 16
    invoke-interface {p2, v0, v1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zzq:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 17
    invoke-interface {p2, v0, v1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zzr:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 18
    invoke-interface {p2, v0, v1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zzs:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 19
    invoke-interface {p2, v0, v1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zzt:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 20
    invoke-interface {p2, v0, v1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zzu:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 21
    invoke-interface {p2, v0, v1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zzv:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 22
    invoke-interface {p2, v0, v1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zzw:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 23
    invoke-interface {p2, v0, v1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zzx:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 24
    invoke-interface {p2, v0, v1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zzy:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 25
    invoke-interface {p2, v0, v1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zzz:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 26
    invoke-interface {p2, v0, v1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zzA:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 27
    invoke-interface {p2, v0, v1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zzB:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 28
    invoke-interface {p2, v0, v1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zzC:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 29
    invoke-interface {p2, v0, v1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zzD:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 30
    invoke-interface {p2, v0, v1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zzE:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 31
    invoke-interface {p2, v0, v1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zzF:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 32
    invoke-interface {p2, v0, v1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zzG:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 33
    invoke-interface {p2, v0, v1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zzH:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 34
    invoke-interface {p2, v0, v1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zzI:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 35
    invoke-interface {p2, v0, v1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zzJ:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 36
    invoke-interface {p2, v0, v1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zzK:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 37
    invoke-interface {p2, v0, v1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zzL:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 38
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_common/zzgy;->zzb()Lcom/google/android/gms/internal/mlkit_common/zzgn;

    move-result-object v2

    invoke-interface {p2, v0, v2}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zzM:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 39
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_common/zzgy;->zza()Lcom/google/android/gms/internal/mlkit_common/zzgd;

    move-result-object v2

    invoke-interface {p2, v0, v2}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zzN:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 40
    invoke-interface {p2, v0, v1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zzO:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 41
    invoke-interface {p2, v0, v1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zzP:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 42
    invoke-interface {p2, v0, v1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zzQ:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 43
    invoke-interface {p2, v0, v1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zzR:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 44
    invoke-interface {p2, v0, v1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zzS:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 45
    invoke-interface {p2, v0, v1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zzT:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 46
    invoke-interface {p2, v0, v1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zzU:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 47
    invoke-interface {p2, v0, v1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zzV:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 48
    invoke-interface {p2, v0, v1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zzW:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 49
    invoke-interface {p2, v0, v1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zzX:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 50
    invoke-interface {p2, v0, v1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zzY:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 51
    invoke-virtual {p1}, Lcom/google/android/gms/internal/mlkit_common/zzgy;->zzc()Lcom/google/android/gms/internal/mlkit_common/zzgt;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object p1, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zzZ:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 52
    invoke-interface {p2, p1, v1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object p1, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zzaa:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 53
    invoke-interface {p2, p1, v1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object p1, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zzab:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 54
    invoke-interface {p2, p1, v1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object p1, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zzac:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 55
    invoke-interface {p2, p1, v1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object p1, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zzad:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 56
    invoke-interface {p2, p1, v1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object p1, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zzae:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 57
    invoke-interface {p2, p1, v1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    sget-object p1, Lcom/google/android/gms/internal/mlkit_common/zzdz;->zzaf:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 58
    invoke-interface {p2, p1, v1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->add(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    return-void
.end method
