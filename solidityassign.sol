pragma solidity ^0.6.0;

contract MarketPlace {
    //seller data stored in struct
    string buy_product_name;
    uint256 buy_product_price;
    string sell_product_name;
    uint256 sell_product_price;

    struct sellerdata {
        string product_name;
        uint256 product_price;
    }

    sellerdata berlin;
    //buyer data  stored in struct

    struct buyerdata {
        string product_name;
        uint256 product_price;
    }
    struct buyeddata {
        string product_name;
        uint256 product_price;
    }

    buyeddata tokyo;
    buyerdata tokyo;

    //sell functionality
    function seller() public {
        berlin = sellerdata(sell_product_name, sell_product_price);
    }

    function seller_return() public view returns (string memory, uint256) {
        return (berlin.product_name, berlin.product_price);
    }

    // buy functionality
    function buyer() public {
        tokyo = buyerdata(buy_product_name, buy_product_price);
    }

    function buyer_return() public view returns (string memory, uint256) {
        return (tokyo.product_name, tokyo.product_price);
    }

    //condition for buy and sell
    function buy_or_sell() public {
        require(berlin.product_name == tokyo.product_name);
        require(berlin.product_price == tokyo.product_price);
        tokyo = buyeddata(berlin.product_name, berlin.product_price);
    }
}
