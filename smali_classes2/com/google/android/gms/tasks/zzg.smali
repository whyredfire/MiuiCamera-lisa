.class public final Lcom/google/android/gms/tasks/zzg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tasks@@18.0.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/tasks/zzh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/tasks/zzh;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tasks/zzg;->zza:Lcom/google/android/gms/tasks/zzh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/tasks/zzg;->zza:Lcom/google/android/gms/tasks/zzh;

    invoke-static {v0}, Lcom/google/android/gms/tasks/zzh;->zzb(Lcom/google/android/gms/tasks/zzh;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/google/android/gms/tasks/zzg;->zza:Lcom/google/android/gms/tasks/zzh;

    invoke-static {p0}, Lcom/google/android/gms/tasks/zzh;->zza(Lcom/google/android/gms/tasks/zzh;)Lcom/google/android/gms/tasks/OnCanceledListener;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/tasks/zzh;->zza(Lcom/google/android/gms/tasks/zzh;)Lcom/google/android/gms/tasks/OnCanceledListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/gms/tasks/OnCanceledListener;->onCanceled()V

    .line 2
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
