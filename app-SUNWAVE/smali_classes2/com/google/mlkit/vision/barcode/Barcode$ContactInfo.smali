.class public Lcom/google/mlkit/vision/barcode/Barcode$ContactInfo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@16.2.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mlkit/vision/barcode/Barcode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContactInfo"
.end annotation


# instance fields
.field private final zza:Lcom/google/mlkit/vision/barcode/Barcode$PersonName;

.field private final zzb:Ljava/lang/String;

.field private final zzc:Ljava/lang/String;

.field private final zzd:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/mlkit/vision/barcode/Barcode$Phone;",
            ">;"
        }
    .end annotation
.end field

.field private final zze:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/mlkit/vision/barcode/Barcode$Email;",
            ">;"
        }
    .end annotation
.end field

.field private final zzf:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzg:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/mlkit/vision/barcode/Barcode$Address;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/mlkit/vision/barcode/Barcode$PersonName;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/mlkit/vision/barcode/Barcode$PersonName;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/mlkit/vision/barcode/Barcode$Phone;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/mlkit/vision/barcode/Barcode$Email;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/mlkit/vision/barcode/Barcode$Address;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/vision/barcode/Barcode$ContactInfo;->zza:Lcom/google/mlkit/vision/barcode/Barcode$PersonName;

    iput-object p2, p0, Lcom/google/mlkit/vision/barcode/Barcode$ContactInfo;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/mlkit/vision/barcode/Barcode$ContactInfo;->zzc:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/mlkit/vision/barcode/Barcode$ContactInfo;->zzd:Ljava/util/List;

    iput-object p5, p0, Lcom/google/mlkit/vision/barcode/Barcode$ContactInfo;->zze:Ljava/util/List;

    iput-object p6, p0, Lcom/google/mlkit/vision/barcode/Barcode$ContactInfo;->zzf:Ljava/util/List;

    iput-object p7, p0, Lcom/google/mlkit/vision/barcode/Barcode$ContactInfo;->zzg:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getAddresses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/mlkit/vision/barcode/Barcode$Address;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mlkit/vision/barcode/Barcode$ContactInfo;->zzg:Ljava/util/List;

    return-object v0
.end method

.method public getEmails()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/mlkit/vision/barcode/Barcode$Email;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mlkit/vision/barcode/Barcode$ContactInfo;->zze:Ljava/util/List;

    return-object v0
.end method

.method public getName()Lcom/google/mlkit/vision/barcode/Barcode$PersonName;
    .locals 1

    iget-object v0, p0, Lcom/google/mlkit/vision/barcode/Barcode$ContactInfo;->zza:Lcom/google/mlkit/vision/barcode/Barcode$PersonName;

    return-object v0
.end method

.method public getOrganization()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/mlkit/vision/barcode/Barcode$ContactInfo;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public getPhones()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/mlkit/vision/barcode/Barcode$Phone;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mlkit/vision/barcode/Barcode$ContactInfo;->zzd:Ljava/util/List;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/mlkit/vision/barcode/Barcode$ContactInfo;->zzc:Ljava/lang/String;

    return-object v0
.end method

.method public getUrls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/mlkit/vision/barcode/Barcode$ContactInfo;->zzf:Ljava/util/List;

    return-object v0
.end method
