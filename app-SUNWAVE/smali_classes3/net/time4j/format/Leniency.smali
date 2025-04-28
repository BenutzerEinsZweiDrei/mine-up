.class public final enum Lnet/time4j/format/Leniency;
.super Ljava/lang/Enum;
.source "Leniency.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/time4j/format/Leniency;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/time4j/format/Leniency;

.field public static final enum LAX:Lnet/time4j/format/Leniency;

.field public static final enum SMART:Lnet/time4j/format/Leniency;

.field public static final enum STRICT:Lnet/time4j/format/Leniency;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 63
    new-instance v0, Lnet/time4j/format/Leniency;

    const-string v1, "STRICT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/time4j/format/Leniency;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/time4j/format/Leniency;->STRICT:Lnet/time4j/format/Leniency;

    .line 86
    new-instance v1, Lnet/time4j/format/Leniency;

    const-string v3, "SMART"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lnet/time4j/format/Leniency;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/time4j/format/Leniency;->SMART:Lnet/time4j/format/Leniency;

    .line 104
    new-instance v3, Lnet/time4j/format/Leniency;

    const-string v5, "LAX"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lnet/time4j/format/Leniency;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lnet/time4j/format/Leniency;->LAX:Lnet/time4j/format/Leniency;

    const/4 v5, 0x3

    new-array v5, v5, [Lnet/time4j/format/Leniency;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 33
    sput-object v5, Lnet/time4j/format/Leniency;->$VALUES:[Lnet/time4j/format/Leniency;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/time4j/format/Leniency;
    .locals 1

    .line 33
    const-class v0, Lnet/time4j/format/Leniency;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/time4j/format/Leniency;

    return-object p0
.end method

.method public static values()[Lnet/time4j/format/Leniency;
    .locals 1

    .line 33
    sget-object v0, Lnet/time4j/format/Leniency;->$VALUES:[Lnet/time4j/format/Leniency;

    invoke-virtual {v0}, [Lnet/time4j/format/Leniency;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/time4j/format/Leniency;

    return-object v0
.end method


# virtual methods
.method public isLax()Z
    .locals 1

    .line 152
    sget-object v0, Lnet/time4j/format/Leniency;->LAX:Lnet/time4j/format/Leniency;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSmart()Z
    .locals 1

    .line 136
    sget-object v0, Lnet/time4j/format/Leniency;->SMART:Lnet/time4j/format/Leniency;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isStrict()Z
    .locals 1

    .line 120
    sget-object v0, Lnet/time4j/format/Leniency;->STRICT:Lnet/time4j/format/Leniency;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
