// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DigitalMarketplace {
    uint public itemCount;

    struct Item {
        uint id;
        address payable seller;
        string name;
        string description;
        uint price; // in wei
        bool isSold;
    }

    mapping(uint => Item) public items;

    event ItemListed(uint id, address indexed seller, string name, uint price);
    event ItemPurchased(uint id, address indexed buyer, address indexed seller, uint price);

    // List a new digital item for sale
    function listItem(string memory _name, string memory _description, uint _price) external {
        require(_price > 0, "Price must be greater than 0");

        itemCount++;
        items[itemCount] = Item(
            itemCount,
            payable(msg.sender),
            _name,
            _description,
            _price,
            false
        );

        emit ItemListed(itemCount, msg.sender, _name, _price);
    }

    // Purchase an item by ID
    function purchaseItem(uint _id) external payable {
        Item storage item = items[_id];
        require(_id > 0 && _id <= itemCount, "Item does not exist");
        require(!item.isSold, "Item already sold");
        require(msg.value == item.price, "Incorrect value sent");

        item.isSold = true;
        item.seller.transfer(msg.value);

        emit ItemPurchased(_id, msg.sender, item.seller, item.price);
    }

    // Get details of an item
    function getItem(uint _id) external view returns (
        uint,
        address,
        string memory,
        string memory,
        uint,
        bool
    ) {
        Item memory item = items[_id];
        return (
            item.id,
            item.seller,
            item.name,
            item.description,
            item.price,
            item.isSold
        );
    }
}

