import { moduleForModel, test } from 'ember-qunit';

moduleForModel('theoretikum-billing', 'Unit | Model | theoretikum billing', {
  // Specify the other units that are required for this test.
  needs: ['model:offer-comparison', 'model:budgetary-position', 'model:body']
});

test('it exists', function(assert) {
  let model = this.subject();
  // let store = this.store();
  assert.ok(!!model);
});
