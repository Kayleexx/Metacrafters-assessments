/*
Assessment Requirements
1. Create a variable that can hold a number of NFT's. What type of variable might this be?
2. Create an object inside your mintNFT function that will hold the metadata for your NFTs. 
   The metadata values will be passed to the function as parameters. When the NFT is ready, 
   you will store it in the variable you created in step 1
3. Your listNFTs() function will print all of your NFTs metadata to the console (i.e. console.log("Name: " + someNFT.name))
4. For good measure, getTotalSupply() should return the number of NFT's you have created
*/

// create a variable to hold your NFT's

// this function will take in some values as parameters, create an
// NFT object using the parameters passed to it for its metadata, 
// and store it in the variable above.

let nftCount = 0;
const nfts = [];

function mintNFT(_name, _eyecolor, _bling, _shirtType) {
  const nft = {
    name: _name,
    eyecolor: _eyecolor,
    bling: _bling,
    shirtType: _shirtType
  };
  nfts.push(nft);
  nftCount++;
  return nft;
}

function listNFTs() {
  for (let i = 0; i < nftCount; i++) {
    const nft = nfts[i];
    console.log("Name: " + nft.name);
    console.log("Eye Color: " + nft.eyecolor);
    console.log("Bling: " + nft.bling);
    console.log("Shirt Type: " + nft.shirtType);
    console.log("------------------------");
  }
}

function getTotalSupply() {
  return nftCount;
}

const nft1 = mintNFT("Critter", "Blue", "Gold", "Hoodie");
const nft2 = mintNFT("Crawler", "Red", "Silver", "T-Shirt");
const nft3 = mintNFT("Persian", "Grey", "Platinum", "Blouse");
const nft4 = mintNFT("Whiskers", "Green", "Diamond", "Jacket");
const nft5 = mintNFT("Meowington", "Yellow", "Emerald", "Sweater");
const nft6 = mintNFT("Pawly", "Purple", "Ruby", "Tank Top");

listNFTs();
console.log("Total NFTs: " + getTotalSupply());
