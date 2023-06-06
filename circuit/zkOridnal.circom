pragma circom 2.0.0

include "@circomlib/circuits/poseidon.circom";

template zkOrdinals() {
    signal input data;
    signal input utxo;
    signal input root;
    signal output new_root;

    // check utxo...
    
    // check on-chain data(inscription)
        
    // BRC20/BRC721 Protocol...
    
    // compute new root
    component poseidon = Poseidon(3);
    poseidon.inputs[0] <== root;
    poseidon.inputs[1] <== data;
    poseidon.inputs[2] <== utxo;
    new_root <== poseidon.out;

}

component main {public [root, new_root]} = zkOrdinals();
