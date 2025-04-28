.class Lcom/polidea/multiplatformbleadapter/BleAdapterFactory$1;
.super Ljava/lang/Object;
.source "BleAdapterFactory.java"

# interfaces
.implements Lcom/polidea/multiplatformbleadapter/BleAdapterCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/polidea/multiplatformbleadapter/BleAdapterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createAdapter(Landroid/content/Context;)Lcom/polidea/multiplatformbleadapter/BleAdapter;
    .locals 1

    .line 10
    new-instance v0, Lcom/polidea/multiplatformbleadapter/BleModule;

    invoke-direct {v0, p1}, Lcom/polidea/multiplatformbleadapter/BleModule;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
