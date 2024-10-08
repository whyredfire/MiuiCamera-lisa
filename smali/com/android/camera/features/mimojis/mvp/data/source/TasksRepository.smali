.class public Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository;
.super Ljava/lang/Object;
.source "TasksRepository.java"

# interfaces
.implements Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource;


# static fields
.field public static INSTANCE:Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository;


# instance fields
.field public mCacheIsDirty:Z

.field public mCachedTasks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/camera/features/mimojis/mvp/data/Task;",
            ">;"
        }
    .end annotation
.end field

.field public final mTasksLocalDataSource:Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource;

.field public final mTasksRemoteDataSource:Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource;Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository;->mCacheIsDirty:Z

    .line 3
    invoke-static {p1}, Lcom/android/camera/Util;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource;

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository;->mTasksRemoteDataSource:Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource;

    .line 4
    invoke-static {p2}, Lcom/android/camera/Util;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource;

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository;->mTasksLocalDataSource:Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository;->refreshCache(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository;Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource$LoadTasksCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository;->getTasksFromRemoteDataSource(Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource$LoadTasksCallback;)V

    return-void
.end method

.method public static synthetic access$200(Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository;)Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository;->mTasksRemoteDataSource:Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository;->refreshLocalDataSource(Ljava/util/List;)V

    return-void
.end method

.method public static destroyInstance()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    sput-object v0, Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository;->INSTANCE:Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository;

    return-void
.end method

.method public static getInstance(Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource;Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource;)Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository;->INSTANCE:Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository;-><init>(Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource;Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource;)V

    sput-object v0, Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository;->INSTANCE:Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository;

    .line 3
    :cond_0
    sget-object p0, Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository;->INSTANCE:Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository;

    return-object p0
.end method

.method private getTaskWithId(Ljava/lang/String;)Lcom/android/camera/features/mimojis/mvp/data/Task;
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/android/camera/Util;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository;->mCachedTasks:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository;->mCachedTasks:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/features/mimojis/mvp/data/Task;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getTasksFromRemoteDataSource(Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource$LoadTasksCallback;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository;->mTasksRemoteDataSource:Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource;

    new-instance v1, Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository$3;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository$3;-><init>(Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository;Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource$LoadTasksCallback;)V

    invoke-interface {v0, v1}, Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource;->getTasks(Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource$LoadTasksCallback;)V

    return-void
.end method

.method private refreshCache(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/features/mimojis/mvp/data/Task;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository;->mCachedTasks:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository;->mCachedTasks:Ljava/util/Map;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository;->mCachedTasks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mvp/data/Task;

    .line 5
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository;->mCachedTasks:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mvp/data/Task;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository;->mCacheIsDirty:Z

    return-void
.end method

.method private refreshLocalDataSource(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/features/mimojis/mvp/data/Task;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository;->mTasksLocalDataSource:Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource;

    invoke-interface {v0}, Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource;->deleteAllTasks()V

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mvp/data/Task;

    .line 3
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository;->mTasksLocalDataSource:Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource;

    invoke-interface {v1, v0}, Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource;->saveTask(Lcom/android/camera/features/mimojis/mvp/data/Task;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public activateTask(Lcom/android/camera/features/mimojis/mvp/data/Task;)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/android/camera/Util;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository;->mTasksRemoteDataSource:Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource;

    invoke-interface {v0, p1}, Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource;->activateTask(Lcom/android/camera/features/mimojis/mvp/data/Task;)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository;->mTasksLocalDataSource:Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource;

    invoke-interface {v0, p1}, Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource;->activateTask(Lcom/android/camera/features/mimojis/mvp/data/Task;)V

    .line 4
    new-instance v0, Lcom/android/camera/features/mimojis/mvp/data/Task;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mvp/data/Task;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mvp/data/Task;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/camera/features/mimojis/mvp/data/Task;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository;->mCachedTasks:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 6
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository;->mCachedTasks:Ljava/util/Map;

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository;->mCachedTasks:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mvp/data/Task;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public activateTask(Ljava/lang/String;)V
    .locals 0

    .line 8
    invoke-static {p1}, Lcom/android/camera/Util;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-direct {p0, p1}, Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository;->getTaskWithId(Ljava/lang/String;)Lcom/android/camera/features/mimojis/mvp/data/Task;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository;->activateTask(Lcom/android/camera/features/mimojis/mvp/data/Task;)V

    return-void
.end method

.method public clearCompletedTasks()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository;->mTasksRemoteDataSource:Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource;

    invoke-interface {v0}, Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource;->clearCompletedTasks()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository;->mTasksLocalDataSource:Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource;

    invoke-interface {v0}, Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource;->clearCompletedTasks()V

    .line 3
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository;->mCachedTasks:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository;->mCachedTasks:Ljava/util/Map;

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository;->mCachedTasks:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 6
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 8
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mvp/data/Task;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mvp/data/Task;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public completeTask(Lcom/android/camera/features/mimojis/mvp/data/Task;)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/android/camera/Util;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository;->mTasksRemoteDataSource:Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource;

    invoke-interface {v0, p1}, Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource;->completeTask(Lcom/android/camera/features/mimojis/mvp/data/Task;)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository;->mTasksLocalDataSource:Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource;

    invoke-interface {v0, p1}, Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource;->completeTask(Lcom/android/camera/features/mimojis/mvp/data/Task;)V

    .line 4
    new-instance v0, Lcom/android/camera/features/mimojis/mvp/data/Task;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mvp/data/Task;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mvp/data/Task;->getId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/features/mimojis/mvp/data/Task;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 5
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository;->mCachedTasks:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 6
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository;->mCachedTasks:Ljava/util/Map;

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository;->mCachedTasks:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mvp/data/Task;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public completeTask(Ljava/lang/String;)V
    .locals 0

    .line 8
    invoke-static {p1}, Lcom/android/camera/Util;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-direct {p0, p1}, Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository;->getTaskWithId(Ljava/lang/String;)Lcom/android/camera/features/mimojis/mvp/data/Task;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository;->completeTask(Lcom/android/camera/features/mimojis/mvp/data/Task;)V

    return-void
.end method

.method public deleteAllTasks()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository;->mTasksRemoteDataSource:Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource;

    invoke-interface {v0}, Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource;->deleteAllTasks()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository;->mTasksLocalDataSource:Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource;

    invoke-interface {v0}, Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource;->deleteAllTasks()V

    .line 3
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository;->mCachedTasks:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository;->mCachedTasks:Ljava/util/Map;

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository;->mCachedTasks:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public deleteTask(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository;->mTasksRemoteDataSource:Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource;

    invoke-static {p1}, Lcom/android/camera/Util;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource;->deleteTask(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository;->mTasksLocalDataSource:Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource;

    invoke-static {p1}, Lcom/android/camera/Util;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource;->deleteTask(Ljava/lang/String;)V

    .line 3
    iget-object p0, p0, Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository;->mCachedTasks:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getTask(Ljava/lang/String;Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource$GetTaskCallback;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/android/camera/Util;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Lcom/android/camera/Util;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-direct {p0, p1}, Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository;->getTaskWithId(Ljava/lang/String;)Lcom/android/camera/features/mimojis/mvp/data/Task;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {p2, v0}, Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource$GetTaskCallback;->onTaskLoaded(Lcom/android/camera/features/mimojis/mvp/data/Task;)V

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository;->mTasksLocalDataSource:Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource;

    new-instance v1, Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository$2;-><init>(Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository;Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource$GetTaskCallback;Ljava/lang/String;)V

    invoke-interface {v0, p1, v1}, Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource;->getTask(Ljava/lang/String;Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource$GetTaskCallback;)V

    return-void
.end method

.method public getTasks(Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource$LoadTasksCallback;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/android/camera/Util;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository;->mCachedTasks:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository;->mCacheIsDirty:Z

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository;->mCachedTasks:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {p1, v0}, Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource$LoadTasksCallback;->onTasksLoaded(Ljava/util/List;)V

    return-void

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository;->mCacheIsDirty:Z

    if-eqz v0, :cond_1

    .line 5
    invoke-direct {p0, p1}, Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository;->getTasksFromRemoteDataSource(Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource$LoadTasksCallback;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository;->mTasksLocalDataSource:Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource;

    new-instance v1, Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository$1;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository$1;-><init>(Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository;Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource$LoadTasksCallback;)V

    invoke-interface {v0, v1}, Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource;->getTasks(Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource$LoadTasksCallback;)V

    :goto_0
    return-void
.end method

.method public refreshTasks()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository;->mCacheIsDirty:Z

    return-void
.end method

.method public saveTask(Lcom/android/camera/features/mimojis/mvp/data/Task;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/android/camera/Util;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository;->mTasksRemoteDataSource:Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource;

    invoke-interface {v0, p1}, Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource;->saveTask(Lcom/android/camera/features/mimojis/mvp/data/Task;)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository;->mTasksLocalDataSource:Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource;

    invoke-interface {v0, p1}, Lcom/android/camera/features/mimojis/mvp/data/source/TasksDataSource;->saveTask(Lcom/android/camera/features/mimojis/mvp/data/Task;)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository;->mCachedTasks:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository;->mCachedTasks:Ljava/util/Map;

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/android/camera/features/mimojis/mvp/data/source/TasksRepository;->mCachedTasks:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mvp/data/Task;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
