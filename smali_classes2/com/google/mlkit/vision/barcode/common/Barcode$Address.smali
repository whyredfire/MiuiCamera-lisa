.class public Lcom/google/mlkit/vision/barcode/common/Barcode$Address;
.super Ljava/lang/Object;
.source "com.google.mlkit:barcode-scanning-common@@17.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mlkit/vision/barcode/common/Barcode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Address"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mlkit/vision/barcode/common/Barcode$Address$AddressType;
    }
.end annotation


# static fields
.field public static final TYPE_HOME:I = 0x2

.field public static final TYPE_UNKNOWN:I = 0x0

.field public static final TYPE_WORK:I = 0x1


# instance fields
.field public final zza:I

.field public final zzb:[Ljava/lang/String;


# direct methods
.method public constructor <init>(I[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/mlkit/vision/barcode/common/Barcode$Address;->zza:I

    iput-object p2, p0, Lcom/google/mlkit/vision/barcode/common/Barcode$Address;->zzb:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAddressLines()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/mlkit/vision/barcode/common/Barcode$Address;->zzb:[Ljava/lang/String;

    return-object p0
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Lcom/google/mlkit/vision/barcode/common/Barcode$Address;->zza:I

    return p0
.end method
