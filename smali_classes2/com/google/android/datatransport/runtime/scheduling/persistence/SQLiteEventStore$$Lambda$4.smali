.class public final synthetic Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$$Lambda$4;
.super Ljava/lang/Object;
.source "SQLiteEventStore.java"

# interfaces
.implements Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function;


# static fields
.field public static final instance:Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$$Lambda$4;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$$Lambda$4;

    invoke-direct {v0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$$Lambda$4;-><init>()V

    sput-object v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$$Lambda$4;->instance:Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$$Lambda$4;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function;
    .locals 1

    sget-object v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$$Lambda$4;->instance:Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$$Lambda$4;

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->lambda$getDb$0(Ljava/lang/Throwable;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    return-object p0
.end method
