.class public final Lcom/google/photos/vision/barhopper/zzy;
.super Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;
.source "com.google.mlkit:barcode-scanning@@17.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfp;


# static fields
.field public static final zza:Lcom/google/photos/vision/barhopper/zzy;


# instance fields
.field public zzd:I

.field public zze:I

.field public zzf:Ljava/lang/String;

.field public zzg:Ljava/lang/String;

.field public zzh:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/photos/vision/barhopper/zzy;

    invoke-direct {v0}, Lcom/google/photos/vision/barhopper/zzy;-><init>()V

    sput-object v0, Lcom/google/photos/vision/barhopper/zzy;->zza:Lcom/google/photos/vision/barhopper/zzy;

    const-class v1, Lcom/google/photos/vision/barhopper/zzy;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;->zzU(Ljava/lang/Class;Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/photos/vision/barhopper/zzy;->zzf:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/photos/vision/barhopper/zzy;->zzg:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/photos/vision/barhopper/zzy;->zzh:Ljava/lang/String;

    return-void
.end method

.method public static synthetic zza()Lcom/google/photos/vision/barhopper/zzy;
    .locals 1

    sget-object v0, Lcom/google/photos/vision/barhopper/zzy;->zza:Lcom/google/photos/vision/barhopper/zzy;

    return-object v0
.end method

.method public static zzb()Lcom/google/photos/vision/barhopper/zzy;
    .locals 1

    sget-object v0, Lcom/google/photos/vision/barhopper/zzy;->zza:Lcom/google/photos/vision/barhopper/zzy;

    return-object v0
.end method


# virtual methods
.method public final zzc()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/photos/vision/barhopper/zzy;->zzf:Ljava/lang/String;

    return-object p0
.end method

.method public final zzd()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/photos/vision/barhopper/zzy;->zzh:Ljava/lang/String;

    return-object p0
.end method

.method public final zze()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/photos/vision/barhopper/zzy;->zzg:Ljava/lang/String;

    return-object p0
.end method

.method public final zzf()I
    .locals 0

    iget p0, p0, Lcom/google/photos/vision/barhopper/zzy;->zze:I

    invoke-static {p0}, Lcom/google/photos/vision/barhopper/zzx;->zza(I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    :cond_0
    return p0
.end method

.method public final zzg(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    add-int/lit8 p1, p1, -0x1

    const/4 p0, 0x1

    if-eqz p1, :cond_4

    const/4 p2, 0x5

    const/4 p3, 0x4

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    if-eq p1, v0, :cond_2

    const/4 p0, 0x0

    if-eq p1, p3, :cond_1

    if-eq p1, p2, :cond_0

    return-object p0

    .line 1
    :cond_0
    sget-object p0, Lcom/google/photos/vision/barhopper/zzy;->zza:Lcom/google/photos/vision/barhopper/zzy;

    return-object p0

    :cond_1
    new-instance p1, Lcom/google/photos/vision/barhopper/zzu;

    .line 2
    invoke-direct {p1, p0}, Lcom/google/photos/vision/barhopper/zzu;-><init>(Lcom/google/photos/vision/barhopper/zza;)V

    return-object p1

    :cond_2
    new-instance p0, Lcom/google/photos/vision/barhopper/zzy;

    invoke-direct {p0}, Lcom/google/photos/vision/barhopper/zzy;-><init>()V

    return-object p0

    :cond_3
    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "zzd"

    aput-object v3, p1, v2

    const-string v2, "zze"

    aput-object v2, p1, p0

    .line 3
    sget-object p0, Lcom/google/photos/vision/barhopper/zzw;->zza:Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzeh;

    aput-object p0, p1, v1

    const-string p0, "zzf"

    aput-object p0, p1, v0

    const-string p0, "zzg"

    aput-object p0, p1, p3

    const-string p0, "zzh"

    aput-object p0, p1, p2

    sget-object p0, Lcom/google/photos/vision/barhopper/zzy;->zza:Lcom/google/photos/vision/barhopper/zzy;

    const-string p2, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u100c\u0000\u0002\u1008\u0001\u0003\u1008\u0002\u0004\u1008\u0003"

    invoke-static {p0, p2, p1}, Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzed;->zzR(Lcom/google/android/gms/internal/mlkit_vision_barcode_bundled/zzfo;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 4
    :cond_4
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method
