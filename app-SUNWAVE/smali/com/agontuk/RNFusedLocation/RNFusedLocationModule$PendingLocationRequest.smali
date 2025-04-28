.class Lcom/agontuk/RNFusedLocation/RNFusedLocationModule$PendingLocationRequest;
.super Ljava/lang/Object;
.source "RNFusedLocationModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agontuk/RNFusedLocation/RNFusedLocationModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PendingLocationRequest"
.end annotation


# instance fields
.field final errorCallback:Lcom/facebook/react/bridge/Callback;

.field final successCallback:Lcom/facebook/react/bridge/Callback;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 0

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    iput-object p1, p0, Lcom/agontuk/RNFusedLocation/RNFusedLocationModule$PendingLocationRequest;->successCallback:Lcom/facebook/react/bridge/Callback;

    .line 179
    iput-object p2, p0, Lcom/agontuk/RNFusedLocation/RNFusedLocationModule$PendingLocationRequest;->errorCallback:Lcom/facebook/react/bridge/Callback;

    return-void
.end method
