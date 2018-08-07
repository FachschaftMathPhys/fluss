const { get, inject, Route } = Ember;

export default Route.extend({
  dataCoordinator: inject.service(),

  beforeModel() {
    const coordinator = get(this, 'dataCoordinator');
    const backup = coordinator.getSource('backup');

    return backup.pull(q => q.findRecords())
      .then(transform => this.store.sync(transform))
      .then(() => coordinator.activate());
  }
});
