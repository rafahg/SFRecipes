trigger AccountTrigger on Account (before insert, after insert, before update, after update, before delete, after delete) {
    AccountHandler handler = new AccountHandler();    
    handler.run();
}