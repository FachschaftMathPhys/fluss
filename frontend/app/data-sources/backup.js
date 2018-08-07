import IndexedDBSource from '@orbit/indexeddb';

export default {
  create(injections = {}) {
    injections.name = 'backup';
    //injections.namespace = 'fluss';
    return new IndexedDBSource(injections);
  }
};
