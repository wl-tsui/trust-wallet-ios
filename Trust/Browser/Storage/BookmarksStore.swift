// Copyright SIX DAY LLC. All rights reserved.

import Foundation
import RealmSwift

class BookmarksStore {
    var bookmarks: Results<Bookmark> {
        return realm.objects(Bookmark.self)
    }
    let realm: Realm
    init(
        realm: Realm
    ) {
        self.realm = realm
    }
    func add(bookmarks: [Bookmark]) {
        realm.beginWrite()
        realm.add(bookmarks, update: true)
        try! realm.commitWrite()
    }
    func delete(bookmarks: [Bookmark]) {
        realm.beginWrite()
        realm.delete(bookmarks)
        try! realm.commitWrite()
    }
}
