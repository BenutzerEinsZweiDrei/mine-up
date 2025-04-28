.class public final enum Lnet/time4j/format/TextWidth;
.super Ljava/lang/Enum;
.source "TextWidth.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/time4j/format/TextWidth;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/time4j/format/TextWidth;

.field public static final enum ABBREVIATED:Lnet/time4j/format/TextWidth;

.field public static final enum NARROW:Lnet/time4j/format/TextWidth;

.field public static final enum SHORT:Lnet/time4j/format/TextWidth;

.field public static final enum WIDE:Lnet/time4j/format/TextWidth;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 41
    new-instance v0, Lnet/time4j/format/TextWidth;

    const-string v1, "WIDE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/time4j/format/TextWidth;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/time4j/format/TextWidth;->WIDE:Lnet/time4j/format/TextWidth;

    .line 45
    new-instance v1, Lnet/time4j/format/TextWidth;

    const-string v3, "ABBREVIATED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lnet/time4j/format/TextWidth;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/time4j/format/TextWidth;->ABBREVIATED:Lnet/time4j/format/TextWidth;

    .line 53
    new-instance v3, Lnet/time4j/format/TextWidth;

    const-string v5, "SHORT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lnet/time4j/format/TextWidth;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lnet/time4j/format/TextWidth;->SHORT:Lnet/time4j/format/TextWidth;

    .line 57
    new-instance v5, Lnet/time4j/format/TextWidth;

    const-string v7, "NARROW"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lnet/time4j/format/TextWidth;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lnet/time4j/format/TextWidth;->NARROW:Lnet/time4j/format/TextWidth;

    const/4 v7, 0x4

    new-array v7, v7, [Lnet/time4j/format/TextWidth;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 35
    sput-object v7, Lnet/time4j/format/TextWidth;->$VALUES:[Lnet/time4j/format/TextWidth;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/time4j/format/TextWidth;
    .locals 1

    .line 35
    const-class v0, Lnet/time4j/format/TextWidth;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/time4j/format/TextWidth;

    return-object p0
.end method

.method public static values()[Lnet/time4j/format/TextWidth;
    .locals 1

    .line 35
    sget-object v0, Lnet/time4j/format/TextWidth;->$VALUES:[Lnet/time4j/format/TextWidth;

    invoke-virtual {v0}, [Lnet/time4j/format/TextWidth;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/time4j/format/TextWidth;

    return-object v0
.end method
