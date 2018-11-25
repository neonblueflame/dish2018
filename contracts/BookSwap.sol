contract BookSwap {
  mapping (bytes32 => address) bookToOwnersMap;
  mapping (bytes32 => bytes32) swapMap;
  
  bytes32[] owners;
  bytes32[] books;
  
  function bookAdd(bytes32 _bookTitle) {
    bookToOwnersMap.push(_bookTitle, msg.sender);
  }
  
  function bookSwap(bytes32 _bookTitle, address _user) {
    swapMap.push(_bookTitle, _user);
  }
}