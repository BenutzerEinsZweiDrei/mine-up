.class public final synthetic Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic f$0:Lio/reactivex/Completable;


# direct methods
.method public synthetic constructor <init>(Lio/reactivex/Completable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager$$ExternalSyntheticLambda5;->f$0:Lio/reactivex/Completable;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager$$ExternalSyntheticLambda5;->f$0:Lio/reactivex/Completable;

    check-cast p1, Lio/reactivex/Observable;

    invoke-static {v0, p1}, Lcom/polidea/rxandroidble2/internal/connection/NotificationAndIndicationManager;->lambda$setupModeTransformer$4(Lio/reactivex/Completable;Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
