.class public final enum Lcom/google/android/datatransport/cct/internal/ClientInfo$ClientType;
.super Ljava/lang/Enum;
.source "ClientInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/datatransport/cct/internal/ClientInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ClientType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/datatransport/cct/internal/ClientInfo$ClientType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/google/android/datatransport/cct/internal/ClientInfo$ClientType;

.field public static final enum ANDROID_FIREBASE:Lcom/google/android/datatransport/cct/internal/ClientInfo$ClientType;

.field public static final enum UNKNOWN:Lcom/google/android/datatransport/cct/internal/ClientInfo$ClientType;


# instance fields
.field public final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/google/android/datatransport/cct/internal/ClientInfo$ClientType;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN"

    invoke-direct {v0, v2, v1, v1}, Lcom/google/android/datatransport/cct/internal/ClientInfo$ClientType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/datatransport/cct/internal/ClientInfo$ClientType;->UNKNOWN:Lcom/google/android/datatransport/cct/internal/ClientInfo$ClientType;

    .line 2
    new-instance v0, Lcom/google/android/datatransport/cct/internal/ClientInfo$ClientType;

    const/4 v2, 0x1

    const-string v3, "ANDROID_FIREBASE"

    const/16 v4, 0x17

    invoke-direct {v0, v3, v2, v4}, Lcom/google/android/datatransport/cct/internal/ClientInfo$ClientType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/datatransport/cct/internal/ClientInfo$ClientType;->ANDROID_FIREBASE:Lcom/google/android/datatransport/cct/internal/ClientInfo$ClientType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/google/android/datatransport/cct/internal/ClientInfo$ClientType;

    .line 3
    sget-object v4, Lcom/google/android/datatransport/cct/internal/ClientInfo$ClientType;->UNKNOWN:Lcom/google/android/datatransport/cct/internal/ClientInfo$ClientType;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/google/android/datatransport/cct/internal/ClientInfo$ClientType;->$VALUES:[Lcom/google/android/datatransport/cct/internal/ClientInfo$ClientType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/google/android/datatransport/cct/internal/ClientInfo$ClientType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/datatransport/cct/internal/ClientInfo$ClientType;
    .locals 1

    .line 1
    const-class v0, Lcom/google/android/datatransport/cct/internal/ClientInfo$ClientType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/datatransport/cct/internal/ClientInfo$ClientType;

    return-object p0
.end method

.method public static values()[Lcom/google/android/datatransport/cct/internal/ClientInfo$ClientType;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/datatransport/cct/internal/ClientInfo$ClientType;->$VALUES:[Lcom/google/android/datatransport/cct/internal/ClientInfo$ClientType;

    invoke-virtual {v0}, [Lcom/google/android/datatransport/cct/internal/ClientInfo$ClientType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/datatransport/cct/internal/ClientInfo$ClientType;

    return-object v0
.end method
