.class Lcom/agontuk/RNFusedLocation/FusedLocationProvider$3;
.super Ljava/lang/Object;
.source "FusedLocationProvider.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/agontuk/RNFusedLocation/FusedLocationProvider;->getCurrentLocation(Lcom/agontuk/RNFusedLocation/LocationOptions;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/agontuk/RNFusedLocation/FusedLocationProvider;


# direct methods
.method constructor <init>(Lcom/agontuk/RNFusedLocation/FusedLocationProvider;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/agontuk/RNFusedLocation/FusedLocationProvider$3;->this$0:Lcom/agontuk/RNFusedLocation/FusedLocationProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 0

    .line 115
    iget-object p1, p0, Lcom/agontuk/RNFusedLocation/FusedLocationProvider$3;->this$0:Lcom/agontuk/RNFusedLocation/FusedLocationProvider;

    invoke-static {p1}, Lcom/agontuk/RNFusedLocation/FusedLocationProvider;->access$700(Lcom/agontuk/RNFusedLocation/FusedLocationProvider;)V

    return-void
.end method
