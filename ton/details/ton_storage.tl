storage.true = storage.Bool;
storage.false = storage.Bool;

storage.walletEntry publicKey:string secret:bytes = storage.WalletEntry; // old
storage.walletEntryGeneric publicKey:string secret:bytes address:string = storage.WalletEntry;
storage.walletList entries:vector<storage.WalletEntry> = storage.WalletList;
storage.transactionId lt:int64 hash:bytes = storage.TransactionId;
storage.restrictionLimit seconds:int32 lockedAmount:int64 = storage.RestrictionLimit;
storage.accountStateNormal = storage.AccountStateDetails;
storage.accountStateRestricted lockedBalance:int64 startAt:int64 limits:vector<storage.RestrictionLimit> = storage.AccountStateDetails;
storage.accountState balance:int64 syncTime:int64 lastTransactionId:storage.TransactionId = storage.AccountState; // old
storage.accountStateFull balance:int64 syncTime:int64 lastTransactionId:storage.TransactionId details:storage.AccountStateDetails = storage.AccountState;
storage.message source:string destination:string value:int64 created:int64 bodyHash:bytes message:string = storage.Message; // old
storage.messageTextEncrypted data:bytes = storage.MessageText;
storage.messageTextDecrypted text:string = storage.MessageText;
storage.messageTextPlain text:string = storage.MessageText;
storage.message2 source:string destination:string value:int64 created:int64 bodyHash:bytes message:storage.MessageText = storage.Message;
storage.transaction id:storage.TransactionId time:int64 fee:int64 storageFee:int64 otherFee:int64 incoming:storage.Message outgoing:vector<storage.Message> = storage.Transaction;
storage.transactionsSlice list:vector<storage.Transaction> previousId:storage.TransactionId = storage.TransactionsSlice;
storage.pendingTransaction fake:storage.Transaction sentUntilSyncTime:int64 = storage.PendingTransaction;
storage.walletState address:string account:storage.AccountState lastTransactions:storage.TransactionsSlice pendingTransactions:vector<storage.PendingTransaction> = storage.WalletState;
storage.network blockchainName:string configUrl:string config:string useCustomConfig:storage.Bool = storage.Network;

storage.settings blockchainName:string configUrl:string config:string useCustomConfig:storage.Bool useNetworkCallbacks:storage.Bool = storage.Settings; // old
storage.settings2 blockchainName:string configUrl:string config:string useCustomConfig:storage.Bool useNetworkCallbacks:storage.Bool version:int32 = storage.Settings; // old
storage.settings3 main:storage.Network test:storage.Network useTestNetwork:storage.Bool useNetworkCallbacks:storage.Bool version:int32 = storage.Settings;
