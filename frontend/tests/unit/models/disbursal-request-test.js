import { moduleForModel, test } from 'ember-qunit';

moduleForModel('disbursal-request', 'Unit | Model | disbursal request', {
  // Specify the other units that are required for this test.
  needs: ['model:drink-position', 'model:budgetary-position', 'model:body', 'model:user', 'model:offer-comparison', 'model:account']
});

test('it exists', function(assert) {
  let model = this.subject();
  // let store = this.store();
  assert.ok(!!model);
});
