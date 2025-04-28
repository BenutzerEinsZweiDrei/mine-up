.class public Lcom/polidea/multiplatformbleadapter/BleAdapterFactory;
.super Ljava/lang/Object;
.source "BleAdapterFactory.java"


# static fields
.field private static bleAdapterCreator:Lcom/polidea/multiplatformbleadapter/BleAdapterCreator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    new-instance v0, Lcom/polidea/multiplatformbleadapter/BleAdapterFactory$1;

    invoke-direct {v0}, Lcom/polidea/multiplatformbleadapter/BleAdapterFactory$1;-><init>()V

    sput-object v0, Lcom/polidea/multiplatformbleadapter/BleAdapterFactory;->bleAdapterCreator:Lcom/polidea/multiplatformbleadapter/BleAdapterCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNewAdapter(Landroid/content/Context;)Lcom/polidea/multiplatformbleadapter/BleAdapter;
    .locals 1

    .line 15
    sget-object v0, Lcom/polidea/multiplatformbleadapter/BleAdapterFactory;->bleAdapterCreator:Lcom/polidea/multiplatformbleadapter/BleAdapterCreator;

    invoke-interface {v0, p0}, Lcom/polidea/multiplatformbleadapter/BleAdapterCreator;->createAdapter(Landroid/content/Context;)Lcom/polidea/multiplatformbleadapter/BleAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static setBleAdapterCreator(Lcom/polidea/multiplatformbleadapter/BleAdapterCreator;)V
    .locals 0

    .line 19
    sput-object p0, Lcom/polidea/multiplatformbleadapter/BleAdapterFactory;->bleAdapterCreator:Lcom/polidea/multiplatformbleadapter/BleAdapterCreator;

    return-void
.end method
