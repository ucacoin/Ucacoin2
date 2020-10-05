// Copyright (c) 2011-2013 The PPCoin developers
// Copyright (c) 2013-2014 The NovaCoin Developers
// Copyright (c) 2014-2018 The BlackCoin Developers
// Copyright (c) 2015-2020 The PIVX developers
// Copyright (C) 2019-2020 The ucacoin developers
// Distributed under the MIT/X11 software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#ifndef UCACoin_LEGACY_MODIFIER_H
#define UCACoin_LEGACY_MODIFIER_H

#include "chain.h"
#include "stakeinput.h"

// Old Modifier - Only for IBD
bool GetOldStakeModifier(CStakeInput* stake, uint64_t& nStakeModifier);
bool ComputeNextStakeModifier(const CBlockIndex* pindexPrev, uint64_t& nStakeModifier, bool& fGeneratedStakeModifier);

#endif // UCACoin_LEGACY_MODIFIER_H
