# Local-Persistence-in-iOS

## Plist
- A property list, or plist, is an XML file that contains key-value data.
- info.plist stores essential configurations of your applications
- Everything you write to the bundle of the app, goes to plist
- Store only small amount of data

## UserDefaults
- UserDefaults allows us to store Strings, Numbers, Dates, Data and Arrays or Dictionaries. 
- It is a small amount of data what we should be storing in UserDefaults.
- Usually it should be used to store user preferences, or anything as long as it's a small amount of persistent information.
- Every piece of data we store will have a unique key, if we try saving things with the same key, new data will only replace the old data.
- Should never be used for sensitive data as its not encrypted (eg. Authentication Token, passwords).

## Keychain
- Secure and encrypted information store.
- Items stored in the keychain belong to a container that is shared by the operating system.
- stored locally, can also sync to iCloud.
- If you store a key-value pair in the keychain, and delete your app without clearing the keychain, that item will persist.

## Core Data
- Stores larger amount of data in model scheme compared to FileSystem which can also store large amount of data but is not in modeled scheme.
- ![n](https://raw.githubusercontent.com/Make-School-Courses/MOB-2.1-Local-Persistence-in-iOS/master/Lessons/06-Intro-to-CoreData/corestack.png)

## Realm
- Realm is a cross platform database(iOS, Android, Web)
- It can be used in place of CoreData for persisting data in iOS. It was designed to be faster and more efficient than other solutions.

### Core Data vs Realm

| **Feature**     | **Core Data**  | **Realm**      |
| --------------- | -------------- | -------------- |
| Easy to set up  | -              | XX             |
| Speed           | X              | XX             |
| Crossplatform   | -              | XX             |
| Thread safe     | X              | X              |
| Documentation   | X              | XXX            |
| DB Management   | External tools | Realm studio   |
