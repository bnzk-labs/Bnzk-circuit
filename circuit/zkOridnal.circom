pragma circom 2.0.0;

// prove owner of utxo is the owner of brc20
template zkOrdinals() {

    signal input brc20;

    // prove is the owner of utxo
    signal input sk;    // private input

    // prove utxo inscribe brc20
    signal output utxo;
}

component main {public [utxo, brc20]} = zkOrdinals();