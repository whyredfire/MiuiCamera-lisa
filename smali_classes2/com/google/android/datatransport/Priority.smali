.class public final enum Lcom/google/android/datatransport/Priority;
.super Ljava/lang/Enum;
.source "Priority.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/datatransport/Priority;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/google/android/datatransport/Priority;

.field public static final enum DEFAULT:Lcom/google/android/datatransport/Priority;

.field public static final enum HIGHEST:Lcom/google/android/datatransport/Priority;

.field public static final enum VERY_LOW:Lcom/google/android/datatransport/Priority;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/google/android/datatransport/Priority;

    const/4 v1, 0x0

    const-string v2, "DEFAULT"

    invoke-direct {v0, v2, v1}, Lcom/google/android/datatransport/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/datatransport/Priority;->DEFAULT:Lcom/google/android/datatransport/Priority;

    .line 2
    new-instance v0, Lcom/google/android/datatransport/Priority;

    const/4 v2, 0x1

    const-string v3, "VERY_LOW"

    invoke-direct {v0, v3, v2}, Lcom/google/android/datatransport/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/datatransport/Priority;->VERY_LOW:Lcom/google/android/datatransport/Priority;

    .line 3
    new-instance v0, Lcom/google/android/datatransport/Priority;

    const/4 v3, 0x2

    const-string v4, "HIGHEST"

    invoke-direct {v0, v4, v3}, Lcom/google/android/datatransport/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/datatransport/Priority;->HIGHEST:Lcom/google/android/datatransport/Priority;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/google/android/datatransport/Priority;

    .line 4
    sget-object v5, Lcom/google/android/datatransport/Priority;->DEFAULT:Lcom/google/android/datatransport/Priority;

    aput-object v5, v4, v1

    sget-object v1, Lcom/google/android/datatransport/Priority;->VERY_LOW:Lcom/google/android/datatransport/Priority;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/google/android/datatransport/Priority;->$VALUES:[Lcom/google/android/datatransport/Priority;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/datatransport/Priority;
    .locals 1

    .line 1
    const-class v0, Lcom/google/android/datatransport/Priority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/datatransport/Priority;

    return-object p0
.end method

.method public static values()[Lcom/google/android/datatransport/Priority;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/datatransport/Priority;->$VALUES:[Lcom/google/android/datatransport/Priority;

    invoke-virtual {v0}, [Lcom/google/android/datatransport/Priority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/datatransport/Priority;

    return-object v0
.end method
