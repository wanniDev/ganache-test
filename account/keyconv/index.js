const fs = require("fs");
const keythereum = require("keythereum");
const datadir = "..";
const password = Buffer.alloc(0);

// Decrypt private keys.
fs.readdir(datadir + "/keystore", (err, filenames) => {
   filenames.filter(filename => filename.startsWith("UTC--"))
       .map(filename => filename.substring(filename.lastIndexOf("-") + 1))
       .map(address => [address, keythereum.recover(password, keythereum.importFromFile(address, datadir)).toString("hex")])
       .forEach(array => console.log(array[0] + " " + array[1]));
});