.class synthetic Lcom/agontuk/RNFusedLocation/FusedLocationProvider$7;
.super Ljava/lang/Object;
.source "FusedLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agontuk/RNFusedLocation/FusedLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$agontuk$RNFusedLocation$LocationAccuracy:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 258
    invoke-static {}, Lcom/agontuk/RNFusedLocation/LocationAccuracy;->values()[Lcom/agontuk/RNFusedLocation/LocationAccuracy;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/agontuk/RNFusedLocation/FusedLocationProvider$7;->$SwitchMap$com$agontuk$RNFusedLocation$LocationAccuracy:[I

    :try_start_0
    sget-object v1, Lcom/agontuk/RNFusedLocation/LocationAccuracy;->high:Lcom/agontuk/RNFusedLocation/LocationAccuracy;

    invoke-virtual {v1}, Lcom/agontuk/RNFusedLocation/LocationAccuracy;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/agontuk/RNFusedLocation/FusedLocationProvider$7;->$SwitchMap$com$agontuk$RNFusedLocation$LocationAccuracy:[I

    sget-object v1, Lcom/agontuk/RNFusedLocation/LocationAccuracy;->balanced:Lcom/agontuk/RNFusedLocation/LocationAccuracy;

    invoke-virtual {v1}, Lcom/agontuk/RNFusedLocation/LocationAccuracy;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/agontuk/RNFusedLocation/FusedLocationProvider$7;->$SwitchMap$com$agontuk$RNFusedLocation$LocationAccuracy:[I

    sget-object v1, Lcom/agontuk/RNFusedLocation/LocationAccuracy;->low:Lcom/agontuk/RNFusedLocation/LocationAccuracy;

    invoke-virtual {v1}, Lcom/agontuk/RNFusedLocation/LocationAccuracy;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/agontuk/RNFusedLocation/FusedLocationProvider$7;->$SwitchMap$com$agontuk$RNFusedLocation$LocationAccuracy:[I

    sget-object v1, Lcom/agontuk/RNFusedLocation/LocationAccuracy;->passive:Lcom/agontuk/RNFusedLocation/LocationAccuracy;

    invoke-virtual {v1}, Lcom/agontuk/RNFusedLocation/LocationAccuracy;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
