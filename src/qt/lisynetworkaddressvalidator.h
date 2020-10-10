// Copyright (c) 2011-2014 The Bitcoin Core developers
// Copyright (c) 2017 The LISYNetwork Core developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#ifndef LISYNETWORK_QT_LISYNETWORKADDRESSVALIDATOR_H
#define LISYNETWORK_QT_LISYNETWORKADDRESSVALIDATOR_H

#include <QValidator>

/** Base58 entry widget validator, checks for valid characters and
 * removes some whitespace.
 */
class LISYNetworkAddressEntryValidator : public QValidator
{
    Q_OBJECT

public:
    explicit LISYNetworkAddressEntryValidator(QObject *parent);

    State validate(QString &input, int &pos) const;
};

/** LISYNetwork address widget validator, checks for a valid lisynetwork address.
 */
class LISYNetworkAddressCheckValidator : public QValidator
{
    Q_OBJECT

public:
    explicit LISYNetworkAddressCheckValidator(QObject *parent);

    State validate(QString &input, int &pos) const;
};

#endif // LISYNETWORK_QT_LISYNETWORKADDRESSVALIDATOR_H
