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
