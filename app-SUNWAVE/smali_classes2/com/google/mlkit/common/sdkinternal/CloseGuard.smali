.class public Lcom/google/mlkit/common/sdkinternal/CloseGuard;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@17.2.0"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mlkit/common/sdkinternal/CloseGuard$Factory;
    }
.end annotation


# static fields
.field public static final API_TRANSLATE:I = 0x1


# instance fields
.field private final zza:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final zzb:Ljava/lang/String;

.field private final zzc:Lcom/google/mlkit/common/sdkinternal/Cleaner$Cleanable;


# direct methods
.method constructor <init>(Ljava/lang/Object;ILcom/google/mlkit/common/sdkinternal/Cleaner;Ljava/lang/Runnable;Lcom/google/android/gms/internal/mlkit_common/zzjl;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/mlkit/common/sdkinternal/CloseGuard;->zza:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/mlkit/common/sdkinternal/CloseGuard;->zzb:Ljava/lang/String;

    new-instance v0, Lcom/google/mlkit/common/sdkinternal/zze;

    .line 3
    invoke-direct {v0, p0, p2, p5, p4}, Lcom/google/mlkit/common/sdkinternal/zze;-><init>(Lcom/google/mlkit/common/sdkinternal/CloseGuard;ILcom/google/android/gms/internal/mlkit_common/zzjl;Ljava/lang/Runnable;)V

    .line 4
    invoke-virtual {p3, p1, v0}, Lcom/google/mlkit/common/sdkinternal/Cleaner;->register(Ljava/lang/Object;Ljava/lang/Runnable;)Lcom/google/mlkit/common/sdkinternal/Cleaner$Cleanable;

    move-result-object p1

    iput-object p1, p0, Lcom/google/mlkit/common/sdkinternal/CloseGuard;->zzc:Lcom/google/mlkit/common/sdkinternal/Cleaner$Cleanable;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/CloseGuard;->zza:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    .line 1
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/CloseGuard;->zzc:Lcom/google/mlkit/common/sdkinternal/Cleaner$Cleanable;

    .line 2
    invoke-interface {v0}, Lcom/google/mlkit/common/sdkinternal/Cleaner$Cleanable;->clean()V

    return-void
.end method

.method public final synthetic zza(ILcom/google/android/gms/internal/mlkit_common/zzjl;Ljava/lang/Runnable;)V
    .locals 4

    iget-object v0, p0, Lcom/google/mlkit/common/sdkinternal/CloseGuard;->zza:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/mlkit/common/sdkinternal/CloseGuard;->zzb:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "%s has not been closed"

    .line 2
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MlKitCloseGuard"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/google/android/gms/internal/mlkit_common/zzgx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mlkit_common/zzgx;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/mlkit_common/zzgs;

    invoke-direct {v1}, Lcom/google/android/gms/internal/mlkit_common/zzgs;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_common/zzgr;->zzb(I)Lcom/google/android/gms/internal/mlkit_common/zzgr;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/mlkit_common/zzgs;->zzb(Lcom/google/android/gms/internal/mlkit_common/zzgr;)Lcom/google/android/gms/internal/mlkit_common/zzgs;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/mlkit_common/zzgs;->zzc()Lcom/google/android/gms/internal/mlkit_common/zzgt;

    move-result-object p1

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/mlkit_common/zzgx;->zzh(Lcom/google/android/gms/internal/mlkit_common/zzgt;)Lcom/google/android/gms/internal/mlkit_common/zzgx;

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/mlkit_common/zzjo;->zzf(Lcom/google/android/gms/internal/mlkit_common/zzgx;)Lcom/google/android/gms/internal/mlkit_common/zzjc;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/mlkit_common/zzgv;->zzbt:Lcom/google/android/gms/internal/mlkit_common/zzgv;

    .line 6
    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/mlkit_common/zzjl;->zzc(Lcom/google/android/gms/internal/mlkit_common/zzjc;Lcom/google/android/gms/internal/mlkit_common/zzgv;)V

    .line 7
    :cond_0
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    return-void
.end method
