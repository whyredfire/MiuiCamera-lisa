.class public final Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-mlkit-barcode-scanning@@18.2.0"


# instance fields
.field public final zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmo;

.field public final zzb:Ljava/lang/Integer;

.field public final zzc:Ljava/lang/Integer;

.field public final zzd:Ljava/lang/Boolean;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmn;Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmn;->zzc(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmn;)Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmo;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmq;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmo;

    invoke-static {p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmn;->zze(Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmn;)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmq;->zzb:Ljava/lang/Integer;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmq;->zzc:Ljava/lang/Integer;

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmq;->zzd:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmq;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmq;

    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmq;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmo;

    .line 3
    iget-object v3, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmq;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmo;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmq;->zzb:Ljava/lang/Integer;

    iget-object v1, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmq;->zzb:Ljava/lang/Integer;

    invoke-static {p0, v1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    iget-object p0, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmq;->zzc:Ljava/lang/Integer;

    const/4 p0, 0x0

    invoke-static {p0, p0}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmq;->zzd:Ljava/lang/Boolean;

    invoke-static {p0, p0}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmq;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmo;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmq;->zzb:Ljava/lang/Integer;

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const/4 p0, 0x0

    const/4 v1, 0x2

    aput-object p0, v0, v1

    const/4 v1, 0x3

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final zza()Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmo;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmq;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmo;

    return-object p0
.end method

.method public final zzb()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzmq;->zzb:Ljava/lang/Integer;

    return-object p0
.end method
