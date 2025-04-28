.class public final synthetic Lcom/imagepicker/ImagePickerPackage$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/facebook/react/module/model/ReactModuleInfoProvider;


# static fields
.field public static final synthetic INSTANCE:Lcom/imagepicker/ImagePickerPackage$$ExternalSyntheticLambda0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/imagepicker/ImagePickerPackage$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/imagepicker/ImagePickerPackage$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/imagepicker/ImagePickerPackage$$ExternalSyntheticLambda0;->INSTANCE:Lcom/imagepicker/ImagePickerPackage$$ExternalSyntheticLambda0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getReactModuleInfos()Ljava/util/Map;
    .locals 1

    invoke-static {}, Lcom/imagepicker/ImagePickerPackage;->lambda$getReactModuleInfoProvider$0()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
