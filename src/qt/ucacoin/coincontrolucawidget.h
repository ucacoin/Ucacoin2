// Copyright (c) 2019 The PIVX developers
// Copyright (c) 2019-2020 The ucacoin developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#ifndef COINCONTROLUCAWIDGET_H
#define COINCONTROLUCAWIDGET_H

#include <QDialog>

namespace Ui {
class CoinControlUcaWidget;
}

class CoinControlUcaWidget : public QDialog
{
    Q_OBJECT

public:
    explicit CoinControlUcaWidget(QWidget *parent = nullptr);
    ~CoinControlUcaWidget();

private:
    Ui::CoinControlUcaWidget *ui;
};

#endif // COINCONTROLUCAWIDGET_H
