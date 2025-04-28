.class Lcom/agontuk/RNFusedLocation/LocationManagerProvider$2;
.super Ljava/lang/Object;
.source "LocationManagerProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agontuk/RNFusedLocation/LocationManagerProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/agontuk/RNFusedLocation/LocationManagerProvider;


# direct methods
.method constructor <init>(Lcom/agontuk/RNFusedLocation/LocationManagerProvider;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/agontuk/RNFusedLocation/LocationManagerProvider$2;->this$0:Lcom/agontuk/RNFusedLocation/LocationManagerProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 63
    iget-object v0, p0, Lcom/agontuk/RNFusedLocation/LocationManagerProvider$2;->this$0:Lcom/agontuk/RNFusedLocation/LocationManagerProvider;

    invoke-static {v0}, Lcom/agontuk/RNFusedLocation/LocationManagerProvider;->access$000(Lcom/agontuk/RNFusedLocation/LocationManagerProvider;)Lcom/agontuk/RNFusedLocation/LocationChangeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/agontuk/RNFusedLocation/LocationManagerProvider$2;->this$0:Lcom/agontuk/RNFusedLocation/LocationManagerProvider;

    sget-object v2, Lcom/agontuk/RNFusedLocation/LocationError;->TIMEOUT:Lcom/agontuk/RNFusedLocation/LocationError;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/agontuk/RNFusedLocation/LocationChangeListener;->onLocationError(Lcom/agontuk/RNFusedLocation/LocationProvider;Lcom/agontuk/RNFusedLocation/LocationError;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/agontuk/RNFusedLocation/LocationManagerProvider$2;->this$0:Lcom/agontuk/RNFusedLocation/LocationManagerProvider;

    invoke-virtual {v0}, Lcom/agontuk/RNFusedLocation/LocationManagerProvider;->removeLocationUpdates()V

    return-void
.end method
