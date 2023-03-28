#include "mainwindow.h"
#include "ui_mainwindow.h"
#include <QQuickWidget>

MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{
    ui->setupUi(this);
   // 创建三维组件
    QQuickWidget *quickWidget = new QQuickWidget;
    quickWidget->setResizeMode(QQuickWidget::SizeRootObjectToView);
    quickWidget->setSource(QUrl("qrc:/3Dscene.qml"));
    ui->leftlayout->addWidget(quickWidget);
}

MainWindow::~MainWindow()
{
    delete ui;

}

//leftlayout
