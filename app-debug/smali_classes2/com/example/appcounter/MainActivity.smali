.class public Lcom/example/appcounter/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MainActivity.java"


# instance fields
.field textAll:Landroid/widget/TextView;

.field textAllNumber:Landroid/widget/TextView;

.field textNotSystem:Landroid/widget/TextView;

.field textNotSystemNumber:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 21
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    const v0, 0x7f09001c

    invoke-virtual {p0, v0}, Lcom/example/appcounter/MainActivity;->setContentView(I)V

    .line 23
    const v0, 0x7f070087

    invoke-virtual {p0, v0}, Lcom/example/appcounter/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/example/appcounter/MainActivity;->textAll:Landroid/widget/TextView;

    .line 24
    const v0, 0x7f070088

    invoke-virtual {p0, v0}, Lcom/example/appcounter/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/example/appcounter/MainActivity;->textAllNumber:Landroid/widget/TextView;

    .line 25
    const v0, 0x7f070089

    invoke-virtual {p0, v0}, Lcom/example/appcounter/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/example/appcounter/MainActivity;->textNotSystem:Landroid/widget/TextView;

    .line 26
    const v0, 0x7f07008a

    invoke-virtual {p0, v0}, Lcom/example/appcounter/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/example/appcounter/MainActivity;->textNotSystemNumber:Landroid/widget/TextView;

    .line 28
    iget-object v0, p0, Lcom/example/appcounter/MainActivity;->textAll:Landroid/widget/TextView;

    const-string v1, "Total number of apps:"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    invoke-virtual {p0}, Lcom/example/appcounter/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 30
    .local v0, "numberOfInstalledApps":I
    iget-object v2, p0, Lcom/example/appcounter/MainActivity;->textAllNumber:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    iget-object v2, p0, Lcom/example/appcounter/MainActivity;->textNotSystem:Landroid/widget/TextView;

    const-string v3, "Total number of non-system apps:"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    const/4 v2, 0x0

    .line 34
    .local v2, "numberOfNonSystemApps":I
    invoke-virtual {p0}, Lcom/example/appcounter/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    .line 35
    .local v1, "appList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    .line 36
    .local v4, "info":Landroid/content/pm/ApplicationInfo;
    iget v5, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_0

    .line 37
    add-int/lit8 v2, v2, 0x1

    .line 39
    .end local v4    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_0
    goto :goto_0

    .line 40
    :cond_1
    iget-object v3, p0, Lcom/example/appcounter/MainActivity;->textNotSystemNumber:Landroid/widget/TextView;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    return-void
.end method
