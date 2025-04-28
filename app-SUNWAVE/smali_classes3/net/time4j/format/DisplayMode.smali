.class public final enum Lnet/time4j/format/DisplayMode;
.super Ljava/lang/Enum;
.source "DisplayMode.java"

# interfaces
.implements Lnet/time4j/engine/DisplayStyle;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/time4j/format/DisplayMode;",
        ">;",
        "Lnet/time4j/engine/DisplayStyle;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/time4j/format/DisplayMode;

.field private static ENUMS:[Lnet/time4j/format/DisplayMode;

.field public static final enum FULL:Lnet/time4j/format/DisplayMode;

.field public static final enum LONG:Lnet/time4j/format/DisplayMode;

.field public static final enum MEDIUM:Lnet/time4j/format/DisplayMode;

.field public static final enum SHORT:Lnet/time4j/format/DisplayMode;


# instance fields
.field private final transient style:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 45
    new-instance v0, Lnet/time4j/format/DisplayMode;

    const-string v1, "FULL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lnet/time4j/format/DisplayMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/time4j/format/DisplayMode;->FULL:Lnet/time4j/format/DisplayMode;

    .line 49
    new-instance v1, Lnet/time4j/format/DisplayMode;

    const-string v3, "LONG"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lnet/time4j/format/DisplayMode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lnet/time4j/format/DisplayMode;->LONG:Lnet/time4j/format/DisplayMode;

    .line 53
    new-instance v3, Lnet/time4j/format/DisplayMode;

    const-string v5, "MEDIUM"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lnet/time4j/format/DisplayMode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lnet/time4j/format/DisplayMode;->MEDIUM:Lnet/time4j/format/DisplayMode;

    .line 57
    new-instance v5, Lnet/time4j/format/DisplayMode;

    const-string v7, "SHORT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lnet/time4j/format/DisplayMode;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lnet/time4j/format/DisplayMode;->SHORT:Lnet/time4j/format/DisplayMode;

    const/4 v7, 0x4

    new-array v7, v7, [Lnet/time4j/format/DisplayMode;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 38
    sput-object v7, Lnet/time4j/format/DisplayMode;->$VALUES:[Lnet/time4j/format/DisplayMode;

    .line 59
    invoke-static {}, Lnet/time4j/format/DisplayMode;->values()[Lnet/time4j/format/DisplayMode;

    move-result-object v0

    sput-object v0, Lnet/time4j/format/DisplayMode;->ENUMS:[Lnet/time4j/format/DisplayMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 67
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 68
    iput p3, p0, Lnet/time4j/format/DisplayMode;->style:I

    return-void
.end method

.method public static ofStyle(I)Lnet/time4j/format/DisplayMode;
    .locals 5

    .line 107
    sget-object v0, Lnet/time4j/format/DisplayMode;->ENUMS:[Lnet/time4j/format/DisplayMode;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 108
    invoke-virtual {v3}, Lnet/time4j/format/DisplayMode;->getStyleValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 113
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown format style: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/time4j/format/DisplayMode;
    .locals 1

    .line 38
    const-class v0, Lnet/time4j/format/DisplayMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/time4j/format/DisplayMode;

    return-object p0
.end method

.method public static values()[Lnet/time4j/format/DisplayMode;
    .locals 1

    .line 38
    sget-object v0, Lnet/time4j/format/DisplayMode;->$VALUES:[Lnet/time4j/format/DisplayMode;

    invoke-virtual {v0}, [Lnet/time4j/format/DisplayMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/time4j/format/DisplayMode;

    return-object v0
.end method


# virtual methods
.method public getStyleValue()I
    .locals 1

    .line 77
    iget v0, p0, Lnet/time4j/format/DisplayMode;->style:I

    return v0
.end method
